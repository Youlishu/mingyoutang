package com.pro.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pro.domain.ClassOrder;
import com.pro.domain.Course;
import com.pro.domain.Users;
import com.pro.domain.AdminCourse;
import com.pro.services.AdminCourseService;
import com.pro.services.ClassOrderService;
import com.pro.services.CourseService;

@Controller
@RequestMapping("Course")
public class CourseController {

	@Resource
	private CourseService courseService;

	@Resource
	private ClassOrderService classOrderService;

	@Resource
	private AdminCourseService adminCourseService;

	// ��̨�����γ�
	@RequestMapping("/toaddAdminCourse")
	public String toaddAdminCourse(String adminCourseId,
			String adminCourseName, String adminCourseStyle,
			String adminCourseGrade, String adminCourseDetail) {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		String adminCourseStime = sdf.format(date);
		AdminCourse ac = new AdminCourse();
		ac.setAdminCourseId(adminCourseId);
		ac.setAdminCourseName(adminCourseName);
		ac.setAdminCourseStyle(adminCourseStyle);
		ac.setAdminCourseGrade(adminCourseGrade);
		ac.setAdminCourseStime(adminCourseStime);
		ac.setAdminCourseDetail(adminCourseDetail);
		adminCourseService.addAdminCourse(ac);
		return "redirect:/Course/tofindallCo";
	}
	// �Ѵ����Ŀγ�
	@RequestMapping("/tofindallCo")
	public ModelAndView tofindallCo() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("users/Admin/adminCourse1");
		List<AdminCourse> aco = adminCourseService.findallAdCourse();
		mav.addObject("aco", aco);
		return mav;
	}
	// ѡ��γ�
	@RequestMapping("/tochoseCo")
	public ModelAndView tochoseCo() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("users/Admin/adminCourse2");
		List<AdminCourse> coo = adminCourseService.findallAdCourse();
		mav.addObject("coo", coo);
		return mav;
	}
	// ��̨�����γ���Ϣ
	@RequestMapping("/toaddCourse")
	public String addCourse(String adminCourse, String coursePlace,
			String courseTime, String courseNum, String courseoverTime,
			String courseFee) {
		
		String[] a = adminCourse.split(",");
		String courseId = a[0];
		String courseName = a[1];
		String courseStyle = a[2];
		String courseGrade = a[3];
		String coursedetail = a[4];
		Course course = new Course();
		course.setCourseId(courseId);
		course.setCourseGrade(courseGrade);
		course.setCourseName(courseName);
		course.setCourseStyle(courseStyle);
		course.setCoursedetail(coursedetail);
		course.setCoursePlace(coursePlace);
		course.setCourseTime(courseTime);
		course.setCourseoverTime(courseoverTime);
		course.setCourseNum(courseNum);
		course.setCourseFee(courseFee);
		courseService.addCourse(course);
		return "redirect:/Course/tofindCourse";
	}

	// ��̨����Ա���ѷ����Ŀγ�
	@RequestMapping("/tofindCourse")
	public  ModelAndView tofindCourse() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("users/Admin/adminCourse3");
		List<Course> courseList = courseService.findAllCourse();
		mav.addObject("courseList", courseList);
		return mav;
	}

	// ��̨��ǰ�γ����ݣ�ѧ�������γ�
		@RequestMapping("/toSignUpCourse")
		public ModelAndView toCourseList(HttpServletRequest request) {

			ModelAndView mav = new ModelAndView();
			mav.setViewName("Course/kecheng");

			List<Course> courseList = courseService.findAllCourse();
			mav.addObject("courseList", courseList);

			return mav;
		}
	// ѧ��
	// ѧ�����µ�ѡ��γ��첽����󶨿γ̶���
	@RequestMapping(value = "/toChooseCourse")
	public @ResponseBody Course toCourse(
			@RequestParam("courseName") String courseName) {
		Course course = new Course();
		course = courseService.fingByCn(courseName);
		return course;
	}

	// ѧ���µ��γ̣���̨�ѷ����Ŀγ�
	@RequestMapping("/toaddCourseOrder")
	public String toaddCourseOrder(HttpSession session,
			@RequestParam("courseName") String courseName,
			@RequestParam("coursePlace") String coursePlace,
			@RequestParam("courseTime") String courseTime, Users users,
			@RequestParam("courseoverTime") String courseoverTime,
			@RequestParam("courseFee") String courseFee,
			@RequestParam("coursedetail") String coursedetail) {

		Users user = (Users) session.getAttribute("user");
		if(user==null){
			return "bugpage/addOrderNouser";
		}else{
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	      String orderStartTime=sdf.format(new Date());

		ClassOrder co = new ClassOrder();
		int ClassOrderId = (int) (Math.random() * 900000000) + 100000000;
		String classOrderState="1";
		co.setUsers(user);
		co.setClassOrderId(ClassOrderId);
		co.setClassOrderName(courseName);
		co.setClassOrderPlace(coursePlace);
		co.setClassOrderTime(courseTime);
		co.setOrderStartTime(orderStartTime);
		co.setClassOrderFee(courseFee);
		co.setClassOrderoverTime(courseoverTime);
		co.setClasscoursedetail(coursedetail);
		co.setClassOrderState(classOrderState);
		
		classOrderService.addClassOrder(co);

		session.setAttribute("ClassOrderId2", co.getClassOrderId());
		return "users/Student/StudentCenter";
		}
		/* return "redirect:/Course/topay"; */
	}

	@RequestMapping("/topay")
	public ModelAndView topay(HttpSession session) {

		int ClassOrderId2 = (Integer) session.getAttribute("ClassOrderId2");

		System.out.println(ClassOrderId2);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Course/pay");
		ClassOrder co = new ClassOrder();
		co = classOrderService.findByClassOrderId(ClassOrderId2);
		System.out.println(co);
		mv.addObject("ClassOrder", co);
		System.out.println(co.getClassOrderPlace());
		return mv;
	}

	
}
