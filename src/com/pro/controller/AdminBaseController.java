package com.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminBaseController {
	//����Ա
	// ͳ�Ʒ���
	@RequestMapping("/toadminStatistic")
	public String toStudentBasic() {
		return "users/Admin/adminStatistic";
	}

	// ѧ������
	@RequestMapping("/toadminPeopleManage1")
	public String toadminPeopleManage1() {
		return "users/Admin/adminPeopleManage1";
	}

	// ��������
	@RequestMapping("/toadminOrdermanage1")
	public String toadminOrdermanage1() {
		return "users/Admin/adminOrdermanage1";
	}

	// �γ̹���
	@RequestMapping("/toadminCourse")
	public String toadminCourse() {
		return "users/Admin/adminCourse";
	}

	// ���Թ���
	@RequestMapping("/toadminExam")
	public String toadminExam() {
		return "users/Admin/adminExam";
	}
	// ����γ�
		@RequestMapping("/tofenCourse")
		public String tofenCourse() {
			return "users/Admin/fenCourse";
		}
}
