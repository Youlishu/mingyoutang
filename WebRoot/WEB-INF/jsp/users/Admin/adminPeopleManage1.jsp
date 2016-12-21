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
<script src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admincommon.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-admincommon.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-people-manage.css">
	<title>人员信息管理-学生</title>
	
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
                                <li><a href="<%=path%>/Admi/tofindallStu" class="lia"><span style="color: #ffdb72;font-size: 24px;">人员信息管理</span></a></li>
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
    <div class="banner_main">
            
    </div>
</div>
<div class="admin-statistic-con">
    <div class="admin-manage">
        <div class="admin-manage-left">
            <ul>
                <li><a href="<%=path%>/Admi/tofindallStu">学生信息管理<img src="../images/admin/三角形.png" alt=""></a></li>
                <li><a href="<%=path%>/Admi/tofindallTea" class="admin-left-a">讲师信息管理<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
                <li><a href="javascript:void(0);" class="admin-left-a">企业信息管理<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
                <li><a href="javascript:void(0);" class="admin-left-a">管理员信息管理<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
            </ul>
        </div>
        <div class="admin-people-table">
                <table id="coursea">
                   <tr class="admin-people-table-title">
                            <td style="width: 60px;">注册时间</td>
                            <td style="width: 76px;">真实姓名</td>
                            <td style="width: 94px;">手机号</td>
                            <td style="width: 108px;">邮箱</td>
                            <td style="width: 143px;">所在机构</td>
                            <td style="width: 144px;">报名的课程</td>
                            <td style="width: 150px;">所在地区</td>
                            <td style="width: 76px;">上课时间</td>
                            <td style="width: 86px;">修改/删除</td>
                        </tr>
                        <c:forEach items="${all}" var="co">
                        <tr>
                        	<td>${co.regTime}</td>
                        	<td>${co.trueName}</td>
                        	<td>${co.phone}</td>
                        	<td>${co.email}</td>
                        	<td>${co.company}</td>
                        	<td>
                        	<c:forEach items="${co.classOrder}" var="ao">
                        	<h5>${ao.classOrderName}</h5>
                        	 </c:forEach>
                        	</td>
                        	<td>
                        	<c:forEach items="${co.classOrder}" var="ao">
                        	<h5>${ao.classOrderPlace}</h5>
                        	 </c:forEach>
                        	 </td>
                        	<td>
                        	<c:forEach items="${co.classOrder}" var="ao">
                        	<h5>${ao.classOrderTime}</h5>
                        	 </c:forEach>
                        	 </td>
                        	<td>修改/删除</td>
                        </tr>
                         </c:forEach>
                    </table>
                    
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

</html>