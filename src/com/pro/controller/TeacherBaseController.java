package com.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TeacherBaseController {
	// ��ʦ����
	@RequestMapping("/toTeacherCenter")
	public String toTeacherCenter() {
		return "users/Teacher/TeacherCenter";
	}

	// ��������
	@RequestMapping("/toTeacherBasics1")
	public String toTeacherBasics1() {
		return "users/Teacher/TeacherBasics1";
	}

	// �ҵ�֪ͨ
	@RequestMapping("/toTeacherInform")
	public String toTeacherInform() {
		return "users/Teacher/TeacherInform";
	}

	// ��ȫ����
	@RequestMapping("/toTeacherSafe")
	public String toTeacherSafe() {
		return "users/Teacher/TeacherSafe";
	}

	// ��ʦ��Ϊ
	@RequestMapping("/toTeacherBehavior")
	public String toTeacherBehavior() {
		return "users/Teacher/TeacherBehavior";
	}

	// ѧ������
	@RequestMapping("/toTeacherStuManage")
	public String toTeacherStuManage() {
		return "users/Teacher/TeacherStuManage";
	}

	// �Ͽΰ���
	@RequestMapping("/toTeacherplan")
	public String toTeacherplan() {
		return "users/Teacher/Teacherplan";
	}

	// �ҵĿγ�
	@RequestMapping("/toTeacherCourse")
	public String toTeacherCourse() {
		return "users/Teacher/TeacherCourse";
	}

	// ѧϰ����
	@RequestMapping("/toTeacherManage")
	public String toTeacherManage() {
		return "users/Teacher/TeacherManage";
	}

	// ѧ������
	@RequestMapping("/toTeacherIssuetask")
	public String toTeacherIssuetask() {
		return "users/Teacher/TeacherIssuetask";
	}

	// ��������
	@RequestMapping("/toTeacherOrdermanage")
	public String toTeacherOrdermanage() {
		return "users/Teacher/TeacherOrdermanage";
	}

	// ��������
	@RequestMapping("/toTeacherPorder")
	public String toTeacherPorder() {
		return "users/Teacher/TeacherPorder";
	}

}
