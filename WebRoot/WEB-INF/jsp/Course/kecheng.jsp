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

<title>报名信息</title>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/common.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/kecheng.css">

</head>
            <!--  获取课程内容 -->
<script type="text/javascript">
		function chooseN(obj){
			var courseName=obj.innerHTML;
			$.ajax({
			     url:'<%=path%>/Course/toChooseCourse',
			     type:'get',
			     data:{
			    	 "courseName":courseName
			     },
			  	 contentType:'application/json,charset=utf-8', 
			     success:function(data){
			    	 var dataObj=eval('('+data+')');
			    	 $('#courseName').val(dataObj.courseName);
					 $('#coursePlace').val(dataObj.coursePlace);
					 $('#courseTime').val(dataObj.courseTime);
					 $('#courseoverTime').val(dataObj.courseoverTime);
					 $('#courseFee').val(dataObj.courseFee);
					 $('#coursedetail').val(dataObj.coursedetail);
					 },
			     error:function() {
			    	 alert("系统当当了");
						return false;
				}
			});
			
		}

	 	function place(){
			alert("地方进来了");
			var coursePlace = $('#cp').val()
			var courseName=$('#courseName').val();
			var courseTime=$('#courseTime').val();
			 $.ajax({
			     url:'Course/toChooseCourse',
			     data:{
			    	 "coursePlace":coursePlace
			     },
			     type:'get',
			     dataType:'application/json,charset=utf-8',
			     success:function(result){
			    	 courseName=result.courseName;
			    	 courseTime=result.courseTime;
			     }
		});
	 	}
		function time(){
			alert("时间进来了");
			var courseTime =$('#ct').val()
			var courseName=$('#courseName').val();
			var coursePlace=$('#coursePlace').val();
			$.ajax({
			     url:'Course/toChooseCourse',
			     data:{
			    	 "courseTime":courseTime
			     },
			     type:'get',
			     dataType:'application/json,charset=utf-8',
			     success:function(result){
			    	 courseName=resulr.courseName;
			    	 coursePlace=resulr.coursePlace;
			     }
		});
			  $('.enter').click(function() {
			        if($('.coursename').val()=="") {
			            alert('请选择课程');
			        }
			        else{
			            if($('.coursecity').val()==""){
			                alert('请选择城市');
			            }else{
			                if($('.coursetime').val()==""){
			                alert('请选择时间');
			                }
			            }
			        }
			     }); 
		}
</script>
<body>
	<div class="header">
		<div class="top">
			<div class="container">
				<div class="header-nav navbar-fixed-top">
					<div class="logimg">
						<img src="images/Professiona/mingyoutanglogo2.png" alt="">
					</div>
					<nav class="navbar navbar-default " role="navigation">
					<div class="container-fluid">
						<div class="collapse navbar-collapse" id="example-navbar-collapse">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="<%=path%>/toMingyoutangHomepage" class="lia" ><span>首页</span></a></li>
                                <li><a href="<%=path%>/toProfessiona" class="lia"><span>大数据职业认证</span></a></li>
                                <li><a href="<%=path%>/toInstructor" class="lia"><span>大数据讲师认证</span></a></li>
                                <li><a href="<%=path%>/toTraining" class="lia"><span>大数据企业内训</span></a></li>
                                <!--<li><a href="#"><span>慕课视频</span> <br><span>VIDEO COURSE</span></a></li>-->
                                <li><a href="<%=path%>/tologin" class="logina" style="padding-top: 22px;"><span>登录</span></a></li>
                                <li><a href="<%=path%>/toReg" class="rega" style="padding-top: 22px;"><span>注册</span></a></li>
							</ul>
						</div>
					</div>
					</nav>
				</div>
			</div>
		</div>
		<!--  -->
	</div>
	<!--选择报名的课程-->
	<div class="courser">
		<div class="container">
			<div class="apply">
				<span class="ele">选择你的报名课程</span>
				<form action="<%=path%>/Course/toaddCourseOrder" method="post">
				
					<div class="details">
						<div class="header">
							<span>选择课程内容</span>
						</div>
						<ul>
						<c:forEach items="${courseList}" var="course">
							<li><a  href="javascript:void(0);" class="rank act">
								<span>${course.courseGrade}</span><br>
								<span id="cn" onclick="chooseN(this)">${course.courseName}</span></a>
							</li>
						</c:forEach>
						</ul>
						<input type="hidden" value="" name="courseName" class="coursename" id="courseName">
						<div class="di">
							<span>选择上课地点</span>
						</div>
						<div class="course-city">
						<c:forEach items="${courseList}" var="course">
							<a href="javascript:void(0);" class="dian act"  id="cp" onclick="place()">
							<span>${course.coursePlace}</span></a>
							
						</c:forEach>
						
						</div>
						<input type="hidden" value="" name="coursePlace" class="coursecity" id="coursePlace">
						<div class="di time">
							<span>选择上课时间</span>
						</div>
						<div class="td">
						<c:forEach items="${courseList}" var="course">
							<a href="javascript:void(0);" class="date">
							<span id="ct" onclick="time()">${course.courseTime}</span></a>
						</c:forEach>
						</div>
						<input type="hidden" value="" name="courseTime" class="coursetime" id="courseTime">
						<div class="te">
						<c:forEach items="${courseList}" var="course">
							<a href="javascript:void(0);" class="date">
							<span id="co">${course.courseoverTime}</span></a>
						</c:forEach>
						</div>
						<input type="hidden" value="" name="courseoverTime" class="courseoverTime" id="courseoverTime">
						<div class="fee">
						<c:forEach items="${courseList}" var="course">
							<a href="javascript:void(0);" class="date">
							<span id="fe" onclick="fee()">${course.courseFee}</span></a>
						</c:forEach>
						<input type="hidden" value="" name="courseFee" class="courseFee" id="courseFee">
						</div>
						<div class="da" style="display: none;">
						<c:forEach items="${courseList}" var="course">
							<a href="javascript:void(0);" class="date">
							<span id="fe" >${course.coursedetail}</span></a>
						</c:forEach>
						<input type="hidden" value="" name="coursedetail" class="coursedetail" id="coursedetail">
						</div>
						
					</div>
					<div class="click">
						<input type="submit" value="点击确认" class="enter"><a href=""
							class="back">返回</a>
					</div>
			
				</form>
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
			<a href="http://www.miitbeian.gov.cn/">
				<p>COPY RIGHT©2016 数控科技有限公司 DATAWYC,ALL RIGHTS RESERVED</p>
				<p>浙ICP备16004637号 -1</p>
			</a>

		</div>
	</div>

	</footer>

</body>
	<script>
		setTimeout(function() {
			document.getElementsByClassName('courser')[0].style.height = window.innerHeight
					+ 'px';
		});

		
	</script>
</html>