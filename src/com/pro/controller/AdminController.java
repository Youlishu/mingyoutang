package com.pro.controller;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
@RequestMapping("/Admi")
public class AdminController {
	
	@Resource
	private UserService userService;
	@Resource
	private ClassOrderService classOrderService;
	@Resource
	private CourseService courseService;
	@Resource
	private FenCourseService fenCourseService;
	@Resource private PoderService poderService;
	//查所有学生以及对应订单
		@RequestMapping("/tofindallStu")
		public ModelAndView tofindallStu(){
			ModelAndView mv=new ModelAndView();
			mv.setViewName("users/Admin/adminPeopleManage1");
			
			List<Users> userList=userService.queryUsers();
			List<Users> all=new ArrayList<Users>();
			for (int i = 0; i < userList.size(); i++) {
				int userId=userList.get(i).getUserId();
				List<ClassOrder> coList=classOrderService.findByClassUserId(userId);
				Users us=userList.get(i);
				us.setClassOrder(coList);
				all.add(us);
			}
			mv.addObject("all", all);
			return mv;
			
		}
		
		//。。。
	@RequestMapping("tofindallTea")
	public ModelAndView tofindallTea(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("users/Admin/adminPeopleManage2");
		List<Users> userList=userService.queryTea();
		List<Users> usList=new ArrayList<Users>();
		for (int i = 0; i < userList.size(); i++) {
			List<Course> courseList=new ArrayList<Course>();
			int userId=userList.get(i).getUserId();
			List<Allotcourese> allco=fenCourseService.fingallotById(userId);
			for (int j = 0; j < allco.size(); j++) {
				String courseId=allco.get(j).getCourseId();
				Course course=courseService.findById(courseId);
				courseList.add(course);
				}
			Users us=userList.get(i);
			us.setCourse(courseList);
			usList.add(us);
		}
		mv.addObject("usList", usList);
		return mv;
		/*ModelAndView mv=new ModelAndView();
		mv.setViewName("users/Admin/adminPeopleManage2");
		List<Users> us=new ArrayList<Users>();
		List<Users> userList=userService.queryTea();
		for (int i = 0; i < userList.size();i++) {
			int userId=userList.get(i).getUserId();
			List<ClassOrder> to=classOrderService.findByClassUserId(userId);
			Users ts=userList.get(i);
			ts.setClassOrder(to);
			us.add(ts);
		}
		mv.addObject("us", us);
		
		return mv;*/
		
		
	}
	//供选择分配的讲师和课程
	@RequestMapping("/tofenCo")
	public ModelAndView tofenCo(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("users/Admin/fenCourse");
		
		List<Users> teaList=userService.queryTea();
		List<Course> couList=courseService.findAllCourse();
		mv.addObject("teaList", teaList);
		mv.addObject("couList", couList);
		return mv;
	}
	
	//分配讲师课程
	@RequestMapping("/toaddfenco")
	public String tofindfen(String userTea,String fencourse){
		System.out.println(userTea);
		System.out.println(fencourse);
		String[] a=userTea.split(",");
		String[] b=fencourse.split(",");
		int userId=Integer.parseInt(a[0]);
		String courseId=b[0];
		
		Allotcourese ac=new Allotcourese(userId,courseId);
		
		fenCourseService.addfencourse(ac);
		
		return "redirect:/Admi/tofindfenCo";
	}
	
	//查询分配讲师结果
	@RequestMapping("/tofindfenCo")
	public ModelAndView tofindfenCo(){
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("users/Admin/fenCourse");
		List<Users> userList=userService.queryTea();
		List<Users> usList=new ArrayList<Users>();
		for (int i = 0; i < userList.size(); i++) {
			List<Course> courseList=new ArrayList<Course>();
			int userId=userList.get(i).getUserId();
			List<Allotcourese> allco=fenCourseService.fingallotById(userId);
			for (int j = 0; j < allco.size(); j++) {
				String courseId=allco.get(j).getCourseId();
				Course course=courseService.findById(courseId);
				courseList.add(course);
				}
			Users us=userList.get(i);
			us.setCourse(courseList);
			usList.add(us);
		}
		mv.addObject("usList", usList);
		return mv;
	}
	
	//订单
	@RequestMapping("/tofindOrd")
	public ModelAndView tofindOrd(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("users/Admin/adminOrdermanage1");
			List<ClassOrder> coList=classOrderService.findAllClassOrder();
		mv.addObject("coList", coList);
		return mv;
	}
	
	//工单
	@RequestMapping("tofindporder")
	public ModelAndView tofindporder(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("users/Admin/adminWorkorder");
		
		List<Poder> porder=poderService.findAllById();
		mv.addObject("porder", porder);
		return mv;
	}
		
}
