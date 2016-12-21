<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%   
       java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd"); 
    java.util.Date currentTime = new java.util.Date();//得到当前系统时间 
    String str = formatter.format(currentTime); //将日期时间格式化 
        out.println(str);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="charset" content="UTF-8">
	<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jqPaginator.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/myPage.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/myPage.css">
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admincommon.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-admincommon.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-allocation.css">
	<title>课程管理</title>
</head>
<body>
	
<div class="header">
    <div class="top">
        <div class="container" >
            <div class="header-nav navbar-fixed-top">
            	<div class="logimg">
		        <img src="../images/Professiona/mingyoutanglogo2.png" alt="">
		        </div>
                <nav class="navbar navbar-default " role="navigation">
                    <div class="container-fluid">
                        <div  class="collapse navbar-collapse" id="example-navbar-collapse">
                            <ul class="nav navbar-nav navbar-right" >
                            	<li><a href="<%=path%>/toadminStatistic" class="lia" ><span>统计分析</span></a></li>
                                <li><a class="lia" href="<%=path%>/Admi/tofindallStu"><span>人员信息管理</span></a></li>
                                <li><a href="<%=path%>/Admi/tofindOrd" class="lia"><span>订单管理</span></a></li>
                                <li><a href="<%=path%>/toadminCourse" class="lia"><span><span style="color: #ffdb72;font-size: 24px;">课程管理</span></a></li>
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
    <div class="banner_main">
            
    </div>
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
     <div class="" >
                <form action="<%=path%>/Course/toaddAdminCourse" method="post" id="addCo">
                     <div><label>课程模式</label><input type="text" name="adminCourseStyle" class="course-input" id="adminCourseStyle"></div>
                     <div><label>课程名称</label><input type="text" name="adminCourseName" class="course-input" id="adminCourseName"></div>
                     <div><label>课程代码</label><input type="text" name="adminCourseId" class="course-input" id="adminCourseId"></div>
                     <div><label>课程类型</label><input type="text" name="adminCourseGrade" class="course-input" id="adminCourseGrade"></div>
                     <div class="goclass-time">
							<label for="course-period">课程创建时间</label><input type="text" 
								class="time-course" id="adminCourseStime" value="<%=str%>"/>
					 </div>
                     <div><label>课程描述</label><textarea name="adminCourseDetail" id="adminCourseDetail" class="course-des"></textarea></div>
                     <div><input type="submit" style="width:200px;height:50px;" value="创建课程"/></div>
                </form>
       </div>
      </div>    
     </div>  
</div>
<footer class="footer">
    <div class="footer-nav container">
        <div>联系我们</div>
        <div><p>杭州办公室：0571-81903938</p><p>南京办公室：025-58151780</p></div>
        <div><p>邮箱：WUYECAO@5WYC.COM</p>
            <p>地址：杭州市西湖区云栖小镇中大银座5幢3F</p></div>
        <div>
                <p>COPY RIGHT©2016 数控科技有限公司 DATAWYC,ALL RIGHTS RESERVED</p>
            <a href="http://www.miitbeian.gov.cn/">
                <p>浙ICP备16004637号 -1</p>
            </a>

        </div>
    </div>

</footer>
</body>
<script type="text/javascript">
	function checkN(){
		if($('#adminCourseId')==""||$('#adminCourseName')==""||$('#adminCourseStyle')==""||$('#adminCourseGrade')==""||$('#adminCourseStime')==""||$('#adminCourseOtime')==""||$('#adminCourseDetail')==""){
			alert("请填满信息");
			return false;
		}else{
			$('#button').submit();
		}
	}

</script>
</html>