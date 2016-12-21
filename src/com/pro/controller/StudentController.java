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

import com.pro.domain.ClassOrder;
import com.pro.domain.Course;
import com.pro.domain.Poder;
import com.pro.domain.Users;
import com.pro.services.ClassOrderService;
import com.pro.services.CourseService;
import com.pro.services.PoderService;

@Controller
@RequestMapping("/Stu")
public class StudentController {
	@Resource
	private CourseService courseService;
	
	@Resource
	private ClassOrderService classOrderService;
	@Resource private PoderService poderService;
	
	@RequestMapping("/tofindStuCourse")
	public ModelAndView tofindStuCourse(HttpSession session){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/users/Student/StudentCourse");
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
	
	
	@RequestMapping("/tofindStuOrder")
	public ModelAndView tofindStuOrder(HttpSession session){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/users/Student/StudentOrdermanage");
		Users user = (Users) session.getAttribute("user");
		int userId=user.getUserId();
		List<ClassOrder> orList=classOrderService.findByClassUserId(userId);
		mv.addObject("orList", orList);
		return mv;
	}
	
	 private static final String PATH="upload";
	@RequestMapping("/toaddStupo")
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
		 return "redirect:/Stu/tofindStupoder";
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
	    @RequestMapping("/tofindStupoder")
	    public ModelAndView tofindpoder(HttpSession session){
	    	 ModelAndView mv = new ModelAndView();
	    	 mv.setViewName("users/Student/StudentPorder");	  
	    	 Users user=(Users) session.getAttribute("user");
	    	 List<Poder> list1 = poderService.findAllBytel(user.getPhone());
	    	 mv.addObject("list1", list1); 	     	 
			return mv;
	    }
	     
}
