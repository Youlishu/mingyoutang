package com.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentBaseController {
	// ѧ����

	// ѧ������
	@RequestMapping("/toStudentCenter")
	public String toStudentCenter() {
		return "users/Student/StudentCenter";
	}

	// ��������
	@RequestMapping("/toStudentBasic")
	public String toStudentBasic() {
		return "users/Student/StudentBasic";
	}
	
	// ��������
		@RequestMapping("/toStudentBasic1")
		public String toStudentBasic1() {
			return "users/Student/StudentBasic1";
		}

	// ��ȫ����
	@RequestMapping("/toStudentSafe")
	public String toStudentSafe() {
		return "users/Student/StudentSafe";
	}

	// �ҵ�֪ͨ
	@RequestMapping("/toStudentInform")
	public String toStudentInform() {
		return "users/Student/StudentInform";
	}

	// �ҵĿγ�
	@RequestMapping("/toStudentCourse")
	public String toStudentCourse() {
		return "users/Student/StudentCourse";
	}

	// ��ȫ����
	@RequestMapping("/toStudentPorder")
	public String toStudentPorder() {
		return "users/Student/StudentPorder";
	}

	// ѧϰ����
	@RequestMapping("/toStudentManage")
	public String toStudentManage() {
		return "users/Student/StudentManage";
	}

	// �ҵ�����
	@RequestMapping("/toStudentTask")
	public String toStudentTask() {
		return "users/Student/StudentTask";
	}

	// �ҵ�����
	@RequestMapping("/toStudentOrdermanage")
	public String toStudentOrdermanage() {
		return "users/Student/StudentOrdermanage";
	}

}
