package com.pro.domain;

public class Employee {

	private int empId;
	
	private String empName;
	
	private String password;
	
	private String hire_date;
	

	public Employee(String empName, String password, String hireDate) {
		super();
		this.empName = empName;
		this.password = password;
		hire_date = hireDate;
	}

	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Employee(int empId, String empName, String password, String hireDate) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.password = password;
		hire_date = hireDate;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHire_date() {
		return hire_date;
	}

	public void setHire_date(String hireDate) {
		hire_date = hireDate;
	}
	
	
}
