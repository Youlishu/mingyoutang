package com.pro.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpResponse;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import org.springframework.web.servlet.ModelAndView;

import com.pro.domain.Users;
import com.pro.services.UserService;
import com.pro.util.HttpUtils;


@Controller
@RequestMapping("/users")
public class UserController {
	@Resource
	private UserService userService;

	/*@RequestMapping("/toUserList")
	public ModelAndView toUserList(HttpServletRequest request){		
		//1
		String currentPage= request.getParameter("currentPage");
		if(currentPage==null||"".equals(currentPage)){
			currentPage="1";
		}
		//2		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("users/userList");
		Map<String, Object> map = userService.queryUsers(Integer.parseInt(currentPage), Data.PAGESIZE);
		mav.addObject("map", map);
		
		//3
		return mav;
	}*/
	
	/*@RequestMapping("/toForm")
	public ModelAndView toForm(@RequestParam(value="userId",required=false)String userId){
		
		ModelAndView mav=new ModelAndView();
		if(userId==null){
			mav.setViewName("users/addUser");
		}else{
			//鍏堟妸瑕佷慨鏀圭殑鏁版嵁鏌ュ嚭鏉�
			Users user = userService.findUserById(Integer.parseInt(userId));
			mav.addObject("user", user);
			
			mav.setViewName("users/updateUser");
		}		
		
		return mav;
	}*/
	
/*	@RequestMapping("/updateUser")
	public String updateUser(Users user,HttpServletRequest request,HttpServletResponse response){
		
		userService.updateUser(user);
		return "redirect:/users/toUserList";
	}*/
	
	
	@RequestMapping("/addUser")
	public String addUser(String userName,String password,String phone,String email){
	
		String userRank="无带学生";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String regTime = sdf.format(new Date());
		int pmId=1;
		Users user=new Users(userName,password,phone,email,userRank,pmId,regTime);
		
		userService.saveUser(user);
	
		return "users/login";
	}
	
	
	@RequestMapping("/tolog")
	public String login(HttpSession session,String userName,String password){
		
		Users user=new Users();
		user=userService.findUserByName(userName);
		
		if(user.getUserName().equals(userName)&&user.getPassword().equals(password)){
			session.setAttribute("user", user);
			if(user.getPmId()==1){
				return "users/Student/StudentCenter";
			}else if(user.getPmId()==2){
				return "users/Teacher/TeacherCenter";
			}else if(user.getPmId()==3){
				return "users/Admin/adminStatistic";
			}
		}else{
		System.out.println("登入失败");
		return "users/login";
		}
		return null;
	}
	
    //接收前台传过来的字符串格式的json对象，在后台进行解析  
    @RequestMapping(value="/tocheckU")  
    public @ResponseBody String tocheckU(@RequestParam("userName") String userName){
    	Users user=new Users();
    	user=userService.findUserByName(userName);
    	if(user!=null){
    		System.out.println("用户名已存在");
    		return "1";
    	}else{
    	System.out.println("用户名可用");
    	
    	return "2";
    	}
    }
	
    @RequestMapping(value="toMobileReg")
    @ResponseBody
    public int toMobileReg(@RequestParam("phone") String phone){
    	 int code1=0;
    	 String host = "http://sms.market.alicloudapi.com";
	        String path = "/singleSendSms";
	        String method = "GET";
	        Map<String, String> headers = new HashMap<String, String>();
	        code1=(int) (Math.random() * 9000) + 1000;
	        System.out.println(code1);
	        headers.put("Authorization", "APPCODE d058813c70be4d9590d4ac09cb02bcc3");
	        Map<String, String> querys = new HashMap<String, String>();
	        querys.put("ParamString", "{\"code\":\""+code1+"\"}");
	        querys.put("RecNum", phone);
	        querys.put("SignName", "明优堂");
	        querys.put("TemplateCode", "SMS_34600001");
    
    	try {
   	    	
   	        
   	     HttpResponse response = HttpUtils.doGet(host, path, method, headers, querys);
         System.out.println(response.toString());
        // 获取response的body
         System.out.println(EntityUtils.toString(response.getEntity()));
        } catch (Exception e) {
   	    	e.printStackTrace();
   	    }
    	return code1;
    }
	
	@RequestMapping("/toreplyUser")
	public String toreplyUser(HttpSession session,String userName,String trueName,String Idcard,String nickName,
			String sex,String birth,String diploma,String position,String area,String company,
			String Workgoal,String job){
		
		Users wholeuser=new Users();
		wholeuser=userService.findUserByName(userName);
		wholeuser.setTrueName(trueName);
		wholeuser.setIdcard(Idcard);
		wholeuser.setNickName(nickName);
		wholeuser.setSex(sex);
		wholeuser.setBirth(birth);
		wholeuser.setPosition(position);
		wholeuser.setDiploma(diploma);
		wholeuser.setArea(area);
		wholeuser.setCompany(company);
		wholeuser.setWorkgoal(Workgoal);
		wholeuser.setJob(job);
		
		userService.updateUser(wholeuser);
		
		return "redirect:/users/tofindU";
	}
	//查询用户信息
	@RequestMapping("/tofindU")
	public ModelAndView tofindU(HttpSession session){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("users/Student/StudentBasic");
		Users user1=(Users) session.getAttribute("user");
		String userName=user1.getUserName();
		Users user=userService.findUserByName(userName);
		mv.addObject("user", user);
		return mv;
	}
	
	//修改绑定手机
	@RequestMapping("/toupdatephone")
	public String toupdatephone(HttpSession session,String phone){
		Users user=(Users) session.getAttribute("user");
		String userName=user.getUserName();
		Users user1=userService.findUserByName(userName);
		Users user2=new Users(user1.getUserId(),user1.getUserName(),user1.getPassword()
				,phone,user1.getEmail(),user1.getUserRank(),user1.getTrueName(),
				user1.getIdcard(),user1.getNickName(),user1.getSex(),user1.getBirth(),
				user1.getDiploma(),user1.getPosition(),user1.getArea(),user1.getCompany(),
				user1.getWorkgoal(),user1.getJob(),user1.getPmId(),user1.getRegTime());
				userService.updateUser(user2);
				return "redirect:/users/tofindph";
	}
	@RequestMapping("/tofindph")
	public ModelAndView tofindph(HttpSession session){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("users/Student/StudentSafe");
		Users user=(Users) session.getAttribute("user");
		String userName=user.getUserName();
		Users user1=userService.findUserByName(userName);
		mv.addObject("user1", user1);
		return mv;
	}
	
	//修改密码
	@RequestMapping("/toupdatep")
	public String toupdatep(HttpSession session,String password,String newpassword){
		
		Users user1=(Users) session.getAttribute("user");
		Users user=userService.findUserByName(user1.getUserName());
		if(password.equals(user.getPassword())){
			userService.updatepas(newpassword,user.getUserName());
			
			return "redirect:/users/tofindph";
		}else{
			
			return "users/Student/wrongpassword";
		}
			
		
	}
	
	/*@RequestMapping("deleteUser")
	public String deleteUser(String userId){
		List<Users> userList = Data.userList;
		for (int i = 0; i < userList.size(); i++) {
			if(Integer.parseInt(userId)==userList.get(i).getUserId()){
				Data.userList.remove(i);				
			}
		}
		return "redirect:/users/toUserList";
	}*/
}
