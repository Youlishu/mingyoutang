package com.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TeacherBaseController {
	// 教师中心
	@RequestMapping("/toTeacherCenter")
	public String toTeacherCenter() {
		return "users/Teacher/TeacherCenter";
	}

	// 基本资料
	@RequestMapping("/toTeacherBasics1")
	public String toTeacherBasics1() {
		return "users/Teacher/TeacherBasics1";
	}

	// 我的通知
	@RequestMapping("/toTeacherInform")
	public String toTeacherInform() {
		return "users/Teacher/TeacherInform";
	}

	// 安全设置
	@RequestMapping("/toTeacherSafe")
	public String toTeacherSafe() {
		return "users/Teacher/TeacherSafe";
	}

	// 教师行为
	@RequestMapping("/toTeacherBehavior")
	public String toTeacherBehavior() {
		return "users/Teacher/TeacherBehavior";
	}

	// 学生管理
	@RequestMapping("/toTeacherStuManage")
	public String toTeacherStuManage() {
		return "users/Teacher/TeacherStuManage";
	}

	// 上课安排
	@RequestMapping("/toTeacherplan")
	public String toTeacherplan() {
		return "users/Teacher/Teacherplan";
	}

	// 我的课程
	@RequestMapping("/toTeacherCourse")
	public String toTeacherCourse() {
		return "users/Teacher/TeacherCourse";
	}

	// 学习管理
	@RequestMapping("/toTeacherManage")
	public String toTeacherManage() {
		return "users/Teacher/TeacherManage";
	}

	// 学生任务
	@RequestMapping("/toTeacherIssuetask")
	public String toTeacherIssuetask() {
		return "users/Teacher/TeacherIssuetask";
	}

	// 订单管理
	@RequestMapping("/toTeacherOrdermanage")
	public String toTeacherOrdermanage() {
		return "users/Teacher/TeacherOrdermanage";
	}

	// 工单申请
	@RequestMapping("/toTeacherPorder")
	public String toTeacherPorder() {
		return "users/Teacher/TeacherPorder";
	}

}
