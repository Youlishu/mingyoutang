package com.pro.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;





import com.pro.domain.Allotcourese;
import com.pro.domain.ClassOrder;
import com.pro.domain.Course;
import com.pro.domain.Poder;
import com.pro.domain.Users;
import com.pro.services.ClassOrderService;
import com.pro.services.CourseService;
import com.pro.services.FenCourseService;
import com.pro.services.PoderService;
import com.pro.services.UserService;

@Controller

@RequestMapping("/Poder")
public class TeacherController {
	@Resource private PoderService poderService;
	@Resource private FenCourseService fenCourseService;
	@Resource private CourseService courseService;
	@Resource private ClassOrderService classOrderService;
	@Resource private UserService userService;
	 
	 
	 private static final String PATH="upload";
	 @RequestMapping("/toaddpo")
	 public String addpo(HttpServletRequest request,HttpSession session){
		 String poderName = request.getParameter("username");
	      String poderlit = request.getParameter("edt");
	      String poderphone = request.getParameter("tel");
	      String poderrank = request.getParameter("poderrank");
	      String poderGrade = request.getParameter("level");
	      String poderarea = request.getParameter("city");
	      String poderpath=null;
	      
	    
		 if(request instanceof MultipartHttpServletRequest ) {
	          MultipartHttpServletRequest mr = (MultipartHttpServletRequest) request;
	          InputStream in=null;
	          OutputStream out=null;
	          try {
	              String path = request.getSession().getServletContext().getRealPath("/WEB-INF/"+PATH);
	              File file = new File(path);
//	              MultipartFile fie = mr.getFile("img");
	              List<MultipartFile> list=mr.getFiles("file");
	              if(list==null||list.size()==0){
	                  // TODO: 2016/12/6 not found picture
	            	  return "users/Teacher/TeacherPorder";
	              }
	              String orginFileName=list.get(0).getOriginalFilename();

	              String newFileName = this.getFileName(getSuffix(orginFileName));

	              if (!file.exists()) {
	                  file.mkdir();
	              }
	              System.out.println(file.getAbsolutePath());
	              File targetFile = new File(file, newFileName);
	              list.get(0).transferTo(targetFile);
//	              out=new FileOutputStream(targetFile);
//	              StreamUtils.copy(in, out);
	              // TODO: 2016/12/6 repository to database
	              poderpath=PATH+"/"+newFileName;
//	              UUID poderId = UUID.randomUUID();
	              
	              Users user=(Users) session.getAttribute("user");
	              int  poderId = user.getPmId();
	              SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    	      String poderTime=sdf.format(new Date());
	    	      System.out.println(poderTime);
	              Poder poder = new Poder(poderId, poderName, poderlit, poderphone, poderrank,poderGrade, poderarea, poderpath,poderTime);
	              poderService.addPoder(poder);//这里是存入数据库

	          } catch (IOException e) {

	          }finally {

	                  try {
	                      if(in!=null){

	                      in.close();
	                      }
	                  } catch (IOException e) {

	                  }

	              if(out!=null){
	                  try {
	                      out.close();
	                  } catch (IOException e) {

	                  }
	              }
	          }

	      } 
		 return "redirect:/Poder/tofindpoder";
	 }
	 
	  private String getSuffix(String orginFileName) {
	        int index=orginFileName.lastIndexOf(".");
	        return orginFileName.substring(index<0?0:index+1);
	    }

	    private static SimpleDateFormat sdf=new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss");
	     public String getFileName(String suffix){
	         Date now=new Date();
	         return sdf.format(now)+"_"+Math.random()+"."+suffix;
	    }
	     
	     @RequestMapping("tofindpoder")
	     public ModelAndView tofindpoder(HttpSession session){
	    	 ModelAndView mv = new ModelAndView();
	    	 mv.setViewName("users/Teacher/TeacherPorder");	  
	    	 Users user=(Users) session.getAttribute("user");
	    	 List<Poder> list = poderService.findAllBytel(user.getPhone());
	    	 mv.addObject("list", list); 	     	 
			return mv;
	    }
	     
	     
	     
	    //查询老师被分配的课程 
	   @RequestMapping("/tofindTeaCourse")
	   public ModelAndView findTeaCourse(HttpSession session){
		   ModelAndView mv=new ModelAndView();
		   mv.setViewName("users/Teacher/Teacherplan");
		   Users user=(Users) session.getAttribute("user");
		   	int userId=user.getUserId();
		   	List<Allotcourese> fenList=fenCourseService.fingallotById(userId);
		   	List<Course> courList=new ArrayList<Course>();
		   	for (int i = 0; i < fenList.size(); i++) {
				String courseId=fenList.get(i).getCourseId();
				Course course=courseService.findById(courseId);
				courList.add(course);
			}
		   	mv.addObject("courList", courList);
		return mv;
		   
	   }
     //查询资料
	   @RequestMapping("/tofindTea")
		public ModelAndView tofindU(HttpSession session){
			ModelAndView mv=new ModelAndView();
			mv.setViewName("users/Teacher/TeacherBasics");
			Users user1=(Users) session.getAttribute("user");
			String userName=user1.getUserName();
			Users user=userService.findUserByName(userName);
			mv.addObject("user", user);
			return mv;
		}
	   
	   @RequestMapping("/toreplyTea")
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
			
			return "redirect:/Poder/tofindTea";
		}
	   
	   @RequestMapping("/tofindTeaph")
		public ModelAndView tofindph(HttpSession session){
			ModelAndView mv=new ModelAndView();
			mv.setViewName("users/Teacher/TeacherSafe");
			Users user=(Users) session.getAttribute("user");
			String userName=user.getUserName();
			Users user1=userService.findUserByName(userName);
			mv.addObject("user1", user1);
			return mv;
		}
	   
	 //修改绑定手机
		@RequestMapping("/toupdateTeaphone")
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
					return "redirect:/Poder/tofindTeaph";
				}
		
		//修改密码
		@RequestMapping("/toupdateTeap")
		public String toupdatep(HttpSession session,String password,String newpassword){
			
			Users user1=(Users) session.getAttribute("user");
			Users user=userService.findUserByName(user1.getUserName());
			if(password.equals(user.getPassword())){
				userService.updatepas(newpassword,user.getUserName());
				
				return "redirect:/Poder/tofindTeaph";
			}else{
				return "users/Teacher/wrong";
				
			}
		}
		
		//管理的学生
		@RequestMapping("/tofindStu")
		public ModelAndView tofindStu(HttpSession session){
			ModelAndView mv=new ModelAndView();
			mv.setViewName("users/Teacher/TeacherStuManage");
			Users user=(Users) session.getAttribute("user");
			List<Allotcourese> feList=fenCourseService.fingallotById(user.getUserId());
			List<Users> us=new ArrayList<Users>();
			for (int i = 0; i < feList.size(); i++) {
				Course course=courseService.findById(feList.get(i).getCourseId());
				List<ClassOrder> classOrder=classOrderService.findByOrderName(course.getCourseName());
				for (int j = 0; j < classOrder.size(); j++) {
					Users user1=userService.findById(classOrder.get(i).getUsers().getUserId());
					user1.setCourse1(course);
					us.add(user1);
				}
				mv.addObject("us", us);
				
			}
			
			return mv;
			
		}
		
		@RequestMapping("/tofindTeaco")
		public ModelAndView tofindTeaco(HttpSession session){
			ModelAndView mv=new ModelAndView();
			mv.setViewName("/users/Teacher/TeacherCourse");
			Users user = (Users) session.getAttribute("user");
			int userId=user.getUserId();
			List<ClassOrder> coList=classOrderService.findByClassUserId(userId);
			
			List<Course> cList=new ArrayList<Course>();
			for (int i = 0; i < coList.size(); i++) {
				String cName=coList.get(i).getClassOrderName();
				Course course=courseService.fingByCn(cName);
				cList.add(course);
			}
			mv.addObject("cList", cList);
			return mv;
		}
		
		@RequestMapping("/tofindTeaOrder")
		public ModelAndView tofindStuOrder(HttpSession session){
			ModelAndView mv=new ModelAndView();
			mv.setViewName("/users/Teacher/TeacherOrdermanage");
			Users user = (Users) session.getAttribute("user");
			int userId=user.getUserId();
			List<ClassOrder> orList=classOrderService.findByClassUserId(userId);
			mv.addObject("orList", orList);
			return mv;
		}
		
}