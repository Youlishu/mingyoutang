package com.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminBaseController {
	//管理员
	// 统计分析
	@RequestMapping("/toadminStatistic")
	public String toStudentBasic() {
		return "users/Admin/adminStatistic";
	}

	// 学生管理
	@RequestMapping("/toadminPeopleManage1")
	public String toadminPeopleManage1() {
		return "users/Admin/adminPeopleManage1";
	}

	// 订单管理
	@RequestMapping("/toadminOrdermanage1")
	public String toadminOrdermanage1() {
		return "users/Admin/adminOrdermanage1";
	}

	// 课程管理
	@RequestMapping("/toadminCourse")
	public String toadminCourse() {
		return "users/Admin/adminCourse";
	}

	// 考试管理
	@RequestMapping("/toadminExam")
	public String toadminExam() {
		return "users/Admin/adminExam";
	}
	// 分配课程
		@RequestMapping("/tofenCourse")
		public String tofenCourse() {
			return "users/Admin/fenCourse";
		}
}
