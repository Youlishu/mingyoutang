<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="charset" content="UTF-8">
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/jqPaginator.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/myPage.js"></script>
<link type="text/css" rel="stylesheet" href="<%=path%>/css/myPage.css">
<link type="text/css" rel="stylesheet"
	href="<%=path%>/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
<link type="text/css" rel="stylesheet"
	href="<%=path%>/css/admincommon.css">
<link type="text/css" rel="stylesheet"
	href="<%=path%>/css/admin-admincommon.css">
<link type="text/css" rel="stylesheet"
	href="<%=path%>/css/admin-allocation.css">
<title>课程管理</title>
</head>
<body>

	<div class="header">
		<div class="top">
			<div class="container">
				<div class="header-nav navbar-fixed-top">
					<div class="logimg">
						<img src="../images/Professiona/mingyoutanglogo2.png" alt="">
					</div>
					<nav class="navbar navbar-default " role="navigation">
					<div class="container-fluid">
						<div class="collapse navbar-collapse" id="example-navbar-collapse">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="<%=path%>/toadminStatistic" class="lia" ><span style="color: #ffdb72;font-size: 24px;">统计分析</span></a></li>
                                <li><a class="lia" href="<%=path%>/Admi/tofindallStu"><span>人员信息管理</span></a></li>
                                <li><a href="<%=path%>/Admi/tofindOrd" class="lia"><span>订单管理</span></a></li>
                                <li><a href="<%=path%>/toadminCourse" class="lia"><span>课程管理</span></a></li>
                                <li><a href="<%=path%>/Admi/tofenCo" class="lia"><span>分配管理</span></a></li>
                                <li><a href="<%=path%>/toadminExam" class="lia"><span>考试信息</span></a></li>
                                <li><a href="<%=path%>/Admi/tofindporder" class="lia"><span>工单管理</span></a></li>
							</ul>
						</div>
					</div>
					</nav>
				</div>
			</div>
		</div>
		<!--  -->
	</div>
	<div class="banner">
		<div class="banner_main"></div>
	</div>
	<div class="admin-statistic-con">
    <div class="admin-manage">
        <div class="admin-manage-left">
            <ul>
                  <li><a href="<%=path%>/toadminCourse" class="admin-left-a admin-manage-style-change">创建新课程<img src="../images/admin/三角形.png" alt=""></a></li>
                <li><a href="<%=path%>/Course/tofindallCo" class="admin-left-a">已创建的课程<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
                <li><a href="<%=path%>/Course/tochoseCo" class="admin-left-a">发布课程<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
                <li><a href="<%=path%>/Course/tofindCourse" class="admin-left-a">已发布课程信息<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
            </ul>
        </div>
        <div class="admin-manage-right">
				<div class="admin-allocation-form2">
					<form action="<%=path%>/Course/toaddCourse" method="post">
						 <div>
							<label>选择课程发布</label>
							<select name="adminCourse" id="" class="course-name">
								<option value="">--请选择--</option>
								<c:forEach items="${coo}" var="c">
								<option value="${c.adminCourseId},${c.adminCourseName},${c.adminCourseStyle},${c.adminCourseGrade},${c.adminCourseDetail}">
								课程代码：${c.adminCourseId}
								课程名称：${c.adminCourseName}
								课程模式：${c.adminCourseStyle}
								课程类型：${c.adminCourseGrade}
								课程描述：${c.adminCourseDetail}
								</option>
								</c:forEach>
							</select>
						</div> 
						<div>
							<label for="course-num">人数容量</label><input type="text"
								name="courseNum" class="allocation-input" id="course-num">
						</div>
						<div class="goclass-time">
							<label for="">上课时间开始</label><input type="text" name="courseTime"
								class="time-course"><span>至</span> <input type="text"
								name="courseoverTime" class="time-course">

						</div>
						<div>
							<label for="course-area">上课地点</label><input type="text"
								name="coursePlace" class="allocation-input" id="course-area">
						</div>
						<div>
							<label for="course-area">课程费用</label><input type="text"
								name="courseFee" class="allocation-input" id="course-area">
						</div>
						<div>
							<input type="submit" class="allocation-sub" value="创建课程">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
	<div class="footer-nav container">
		<div>联系我们</div>
		<div>
			<p>杭州办公室：0571-81903938</p>
			<p>南京办公室：025-58151780</p>
		</div>
		<div>
			<p>邮箱：WUYECAO@5WYC.COM</p>
			<p>地址：杭州市西湖区云栖小镇中大银座5幢3F</p>
		</div>
		<div>
			<p>COPY RIGHT©2016 数控科技有限公司 DATAWYC,ALL RIGHTS RESERVED</p>
			<a href="http://www.miitbeian.gov.cn/">
				<p>浙ICP备16004637号 -1</p>
			</a>

		</div>
	</div>

	</footer>
</body>
</html>