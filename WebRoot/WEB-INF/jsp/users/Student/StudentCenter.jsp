<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>个人中心</title>
    <script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/pulldown.js"></script>
 	<link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/student-home.css" >
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admincommon.css">
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
                                <li><a href="<%=path%>/toMingyoutangHomepage" class="lia" ><span>首页</span></a></li>
                                <li><a href="<%=path%>/toProfessiona" class="lia"><span>大数据职业认证</span></a></li>
                                <li><a href="<%=path%>/toInstructor" class="lia"><span>大数据讲师认证</span></a></li>
                                <li><a href="<%=path%>/toTraining" class="lia"><span>大数据企业内训</span></a></li>
                                <!--<li><a href="#"><span>慕课视频</span> <br><span>VIDEO COURSE</span></a></li>-->
                                <li><a href="<%=path%>/tologin" class="logina" style="padding-top: 22px;"><span>登录</span></a></li>
                                <li><a href="<%=path%>/toReg" class="rega" style="padding-top: 22px;"><span>注册</span></a></li>
                                <li class="loginname-li" style="display: none;">
                                    <a href="javascript:void(0);" class="loginname">贝子<span class="glyphicon glyphicon-chevron-down" style="padding-left: 5px;"></span></a>
                                    <div class="loginname-list" style="display: none;">
                                        <a href="">个人中心</a>
                                        <a href="">账号设置</a>
                                        <a href="">退出</a>
                                    </div>
                                </li>
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

<div class="student-set">
    <div class="position">
        <div class="student-set-left">
            <div>
                <div class="student-set-left-list student-list-class">
                    <a href="<%=path%>/toStudentCenter"><img src="../images/admin/student/icon/我的账户.png" alt=""><span>我的账户</span></a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/users//tofindU">基本资料</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/users/tofindph">安全设置</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toStudentInform">我的通知</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Stu/tofindStuCourse">我的课程</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toStudentPorder">提交工单</a>
                </div>
            </div>
            <div>
                <div class="student-set-left-list student-list-class">
                    <img src="../images/admin/student/icon/课程.png" alt=""><span>课程信息</span>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toStudentManage">学习管理</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toStudentTask">我的任务</a>
                </div>
                <div class="student-set-left-list">
                    <a href="">我的认证</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Stu/tofindStuOrder">订单管理</a>
                </div>
            </div>
        </div>
        <div class="student-set-right">
            <div class="student-home-title">
                <div class="student-home-title-left">
                    <h1>您好，<span>${sessionScope.user.userName}</span>今天也要继续努力哦！</h1>
                    <p>上次登录时间：<span>2016-01-27</span></p>
                </div>
                <div class="student-home-title-right">
                    <h3>今日已签到</h3>
                    <h4>已经签到学习<span>27</span>天</h4>
                </div>  
            </div>
            <div class="student-home-nav">
                <div class="student-home-nav-left">
                    <div class="student-home-nav-left-img">
                        <img src="../images/admin/student/用户头像.png" alt="">
                    </div>
                    <div class="student-home-nav-left-con">
                        <h5><label for="">用户名</label><span>${sessionScope.user.userName}</span></h5>
                        <h5><label for="">讲师级别</label><span>${sessionScope.user.userRank}</span></h5>
                        <h5><label for="">所得勋章</label>
                            <span>
                                <img src="../images/admin/student/icon/手机(1).png" alt="">
                                <img src="../images/admin/student/icon/邮箱(1).png" alt="">
                                <img src="../images/admin/student/icon/会员(1).png" alt="">
                            </span>
                        </h5>
                    </div>
                </div>
                <div class="student-home-nav-right">
                    <h5>我的通知</h5>
                    <p><span>1 您最近完成了大数据的认证</span></p>
                    <p><span>2 您最近刚完成了大数据</span></p>
                </div>
            </div>
            <div class="student-home-con">
                <a href="student-safe.html">
                    <h5>安全设置</h5>
                    <p>账号安全无忧</p>
                </a>
                <a href="student-course.html">
                    <h5>我的课程</h5>
                    <p>学习进行时</p>
                </a>
                <a href="student-porder.html">
                    <h5>提交工单</h5>
                    <p>职位申请</p>
                </a>
                <div>
                    <img src="../images/admin/student/banner.png" alt="">
                </div>
            </div>
            <div class="student-home-bottom">
                <div class="student-home-bottom-left">
                    <h4>我的认证</h4>
                    <img src="../images/admin/student/前往认证.png" alt="">
                </div>
                <div class="student-home-bottom-mid">
                    <h5>通过率</h5>
                    <h1>100</h1>
                </div>
                <div class="student-home-bottom-right">
                    <div class="student-home-bottom-right-title">
                        <a href="">我的成绩</a><a href="">我的考试</a>
                    </div>
                    <div class="student-home-bottom-right-con">
                        <ul>
                            <li><span>课程</span><span>成绩</span></li>
                            <li><span>大数据</span><span class="pass">通过</span></li>
                            <li><span>大数据</span><span class="nopass">未通过</span></li>
                            <li><span>大数据</span><span class="pass">通过</span></li>
                            <li><span>大数据</span><span class="nopass">未通过</span></li>
                            <li><span>大数据</span><span class="pass">通过</span></li>
                        </ul>
                    </div>
                </div>
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
            <a href="http://www.miitbeian.gov.cn/">
                <p>COPY RIGHT©2016 数控科技有限公司 DATAWYC,ALL RIGHTS RESERVED</p>
                <p>浙ICP备16004637号 -1</p>
            </a>

        </div>
    </div>

</footer>
</body>

</html>