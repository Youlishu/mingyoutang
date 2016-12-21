package com.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentBaseController {
	// 学生端

	// 学生中心
	@RequestMapping("/toStudentCenter")
	public String toStudentCenter() {
		return "users/Student/StudentCenter";
	}

	// 基本资料
	@RequestMapping("/toStudentBasic")
	public String toStudentBasic() {
		return "users/Student/StudentBasic";
	}
	
	// 补充资料
		@RequestMapping("/toStudentBasic1")
		public String toStudentBasic1() {
			return "users/Student/StudentBasic1";
		}

	// 安全设置
	@RequestMapping("/toStudentSafe")
	public String toStudentSafe() {
		return "users/Student/StudentSafe";
	}

	// 我的通知
	@RequestMapping("/toStudentInform")
	public String toStudentInform() {
		return "users/Student/StudentInform";
	}

	// 我的课程
	@RequestMapping("/toStudentCourse")
	public String toStudentCourse() {
		return "users/Student/StudentCourse";
	}

	// 安全设置
	@RequestMapping("/toStudentPorder")
	public String toStudentPorder() {
		return "users/Student/StudentPorder";
	}

	// 学习管理
	@RequestMapping("/toStudentManage")
	public String toStudentManage() {
		return "users/Student/StudentManage";
	}

	// 我的任务
	@RequestMapping("/toStudentTask")
	public String toStudentTask() {
		return "users/Student/StudentTask";
	}

	// 我的任务
	@RequestMapping("/toStudentOrdermanage")
	public String toStudentOrdermanage() {
		return "users/Student/StudentOrdermanage";
	}

}
