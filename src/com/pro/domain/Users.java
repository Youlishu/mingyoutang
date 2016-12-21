package com.pro.domain;


import java.util.List;

public class Users {

	private int userId;
	private String userName;
	private String password;
	private String phone;
	private String email;
	private String userRank;
	private String trueName;
	private String Idcard;
	private String nickName;
	private String sex;
	private String birth;
	private String diploma;
	private String position;
	private String area;
	private String company;
	private String Workgoal;
	private String job;
	private int pmId;
	private String regTime;
	private List<ClassOrder> classOrder;
	private List<Course> course;
	private Course course1;
	
	
	public Course getCourse1() {
		return course1;
	}

	public void setCourse1(Course course1) {
		this.course1 = course1;
	}

	public List<Course> getCourse() {
		return course;
	}

	public void setCourse(List<Course> course) {
		this.course = course;
	}

	public List<ClassOrder> getClassOrder() {
		return classOrder;
	}

	public void setClassOrder(List<ClassOrder> classOrder) {
		this.classOrder = classOrder;
	}

	public String getRegTime() {
		return regTime;
	}

	public void setRegTime(String regTime) {
		this.regTime = regTime;
	}

	public int getPmId() {
		return pmId;
	}

	public void setPmId(int pmId) {
		this.pmId = pmId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserRank() {
		return userRank;
	}

	public void setUserRank(String userRank) {
		this.userRank = userRank;
	}
	
	public String getTrueName() {
		return trueName;
	}

	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}

	public String getIdcard() {
		return Idcard;
	}

	public void setIdcard(String idcard) {
		this.Idcard = idcard;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getDiploma() {
		return diploma;
	}

	public void setDiploma(String diploma) {
		this.diploma = diploma;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getWorkgoal() {
		return Workgoal;
	}

	public void setWorkgoal(String workgoal) {
		Workgoal = workgoal;
	}
	

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	

	public Users(int userId, String userName, String password, String phone,
			String email, String userRank, String trueName, String idcard,
			String nickName, String sex, String birth, String diploma,
			String position, String area, String company, String workgoal,
			String job, int pmId, String regTime) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.userRank = userRank;
		this.trueName = trueName;
		Idcard = idcard;
		this.nickName = nickName;
		this.sex = sex;
		this.birth = birth;
		this.diploma = diploma;
		this.position = position;
		this.area = area;
		this.company = company;
		Workgoal = workgoal;
		this.job = job;
		this.pmId = pmId;
		this.regTime = regTime;
	}

	public Users(String userName, String password, String phone, String email,
			String userRank, int pmId, String regTime) {
		super();
		this.userName = userName;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.userRank = userRank;
		this.pmId = pmId;
		this.regTime = regTime;
	}

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Users(int userId, String userName, String password, String phone,
			String email, String userRank, String trueName, String idcard,
			String nickName, String sex, String birth, String diploma,
			String position, String area, String company, String workgoal,
			String job, int pmId, String regTime, List<ClassOrder> classOrder) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.userRank = userRank;
		this.trueName = trueName;
		this.Idcard = idcard;
		this.nickName = nickName;
		this.sex = sex;
		this.birth = birth;
		this.diploma = diploma;
		this.position = position;
		this.area = area;
		this.company = company;
		Workgoal = workgoal;
		this.job = job;
		this.pmId = pmId;
		this.regTime = regTime;
		this.classOrder = classOrder;
	}

	
	
	
	

	
}
