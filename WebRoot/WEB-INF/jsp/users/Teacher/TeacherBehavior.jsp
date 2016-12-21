<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>教师行为</title>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-2.1.3.min.js"></script>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/teacher-behavior.css" >
    <link rel="stylesheet" href="../css/admincommon.css">
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
                                <li><a href="index.html" class="lia" ><span>首页</span></a></li>
                                <li><a href="Professiona.html" class="lia"><span>大数据职业认证</span></a></li>
                                <li><a href="Instructor.html" class="lia"><span>大数据讲师认证</span></a></li>
                                <li><a href="training.html" class="lia"><span>大数据企业内训</span></a></li>
                                <!--<li><a href="#"><span>慕课视频</span> <br><span>VIDEO COURSE</span></a></li>-->
                                <li><a href="login.html" class="logina" style="padding-top: 22px;"><span>登录</span></a></li>
                                <li><a href="reg.html" class="rega" style="padding-top: 22px;"><span>注册</span></a></li>
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
                    <a href="<%=path%>/toTeacherCenter"><img src="../images/admin/student/icon/我的账户.png" alt=""><span>我的账户</span></a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindTea" >基本资料</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindTeaph">安全设置</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherInform">我的通知</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherBehavior" style="color: #ffc92a;">教学行为</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindStu">学生管理</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindTeaCourse">上课安排</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindTeaco">我的课程</a>
                </div>
            </div>
            <div>
                <div class="student-set-left-list student-list-class">
                    <img src="../images/admin/student/icon/课程.png" alt=""><span>课程信息</span>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherManage">学习管理</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherIssuetask">学生任务</a> 
                </div>
                <div class="student-set-left-list">
                    <a href="javascript:void(0);">我的认证</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindTeaOrder">订单管理</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherPorder">工单申请</a>
                </div>
            </div>
        </div>
        <div class="student-set-right">
            <div class="teacher-behavior-title">
                <h1>讲师信息</h1>
            </div>
            <div class="teacher-behavior-cont">
                <div class="teacher-behavior-cont-left">
                    <img src="../images/admin/teacher/laoshi.png" alt="">
                </div>
                <div class="teacher-behavior-cont-right">
                    <h2>企鹅</h2>
                    <h3>数字媒体系毕业</h3>
                    <h4>多伦多大学、圭尔夫大学生物统计和人工智能双硕士学位</h4>
                    <h5>研发的直复营销绩效统计数学模型Uplift Model为北美多家企业使用</h5>
                    <h5>研发的基于顾客爱好和行为的个性化产品推荐引擎，每年为北美用户创造上百万美金额外利润</h5>
                    <h5>研发创新型忠诚顾客双向反馈系统为多家企业的顾客战略提供决策和监控系统</h5>
                    <h5>为中国企业提供北美网络营销咨询服务并在北美获得众筹第二名</h5>
                    <h5>研发的全球首创的大数据实训平台，向北美大学提供基于大数据实训服务</h5>
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