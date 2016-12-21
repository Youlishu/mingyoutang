<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
 	<%-- <base href="<%=basePath%>"> --%>
	<meta charset="UTF-8">
	<title>课程</title>
	<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="<%=path%>/pulldown.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/Professiona.css">
</head>

<body>
 <div class="header">
    <div class="top">
        <div class="container" >
            <div class="header-nav navbar-fixed-top">
		    	<div class="logimg">
		        <img src="<%=path%>/images/Professiona/mingyoutanglogo2.png" alt="">
		        </div>
                <nav class="navbar navbar-default " role="navigation">
                    <div class="container-fluid">
                        <div  class="collapse navbar-collapse" id="example-navbar-collapse">
                            <ul class="nav navbar-nav navbar-right" >
                                <li><a href="<%=path%>/toMingyoutangHomepage" class="lia" ><span>首页</span></a></li>
                                <li><a href="<%=path%>/toProfessiona" class="lia"><span style="color: #ffdb72;">大数据职业认证</span></a></li>
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
<!--  -->
	<div class="banner">
		<div class="banner_main">
			<img src="<%=path%>/images/Professiona/mingyoutanglogo2.png" alt="明优堂">
		</div>
	</div>
	<div class="pro_contant">
		
			<div class="pro_ms">
				<div class="left">
					<div class="pro_left">
						<div class="pro_left_show " id="js-show1"><img src="<%=path%>/images/instructor/icon/triangle1.png" alt="" ><a href="javascript:void(0);">三级认证</a>
						</div>
						<div class="show_list">
							<ul>
								<li><a href="javascript:void(0);">Ⅰ级认证</a></li>
								<li><a href="javascript:void(0);">Ⅱ级认证</a></li>
								<li><a href="javascript:void(0);">Ⅲ级认证</a></li>
							</ul>
						</div>
					</div>
					<div class="pro_left">
						<div class="pro_left_show" id="js-show2"><a href="javascript:void(0);"><img src="<%=path%>/images/instructor/icon/triangle1.png" alt=""  style="display: none;">课程简介</a>
						</div>
						<div class="show_list">
							<ul>
								<li><a href="javascript:void(0);">大数据职业Ⅰ级认证培训</a></li>
							</ul>
						</div>	
					</div>
				</div>
				<div class="right">
					<div class="pro_right pro_right1">
						<ul class="pro_right_ul">
							<li>大数据职业认证</li>
							<li></li>
							<li class="li2"></li>
						</ul>
					</div>
					<div class="pro_right pro_right2">
						<div class="pro_right2_bg">
							<img src="<%=path%>/images/Professiona/BigdataTeacherCertification_07.png" alt="">
						</div>
						<div class="des_sm1">
							<div class="sm1_cont1">
								<h2>课程1、大数据分析领域职业介绍</h2>
								<h3>职业路径、技能要求、职位要求、</h3>
								<h3>工作情况、职业前景</h3>
							</div>
							<div class="sm1_cont2">
								<h2>课程2、数据与数据库基础</h2>
								<h3>数据种类、认识数据库、传统关系性数据库、</h3>
								<h3>Hadoop与分布式数据存储、Linux命令</h3>
							</div>
							<div class="sm1_cont3">
								<h2>课程3、数据分析工具与语言</h2>
								<h3>SQL基础、Hive、Pig、Spark RDD、</h3>
								<h3>Spqrk DataFrame/SQL</h3>
							</div>
						</div>
						<div class="des_sm2">
							<div class="sm2_cont1">
								<h2>课程8、回顾与总结</h2>
							</div>
							<div class="sm2_cont2">
								<h2>课程4、数据可视化</h2>
								<h3>阿里云DataV可视化大屏、BI报表</h3>
								<h3>设计逻辑与实现、Tableau</h3>
							</div>
						</div>
						<div class="des_sm3">
							<div class="sm3_cont1">
								<h2>课程7、数据分析项目设计与执行</h2>
								<h3>计划管理流程、设计管理流程（商业目标、背景调</h3>
								<h3>查、分析范围、分析方案）、数据分析师项目管理</h3>
								<h3>（ODD）、商业报表和顾客列表、项目前分析和项</h3>
								<h3>目绩效考评、基于数据挖掘技术的解决方案</h3>
							</div>
							<div class="sm3_cont2">
								<h2>课程6、数据变成基础</h2>
								<h3>数据分析编程（倒推法）、</h3>
								<h3>编程效率和程序运行效率、质量控制流程</h3>
							</div>
							<div class="sm3_cont3">
								<h2>课程5、数据项目质量控制</h2>
								<h3>数据质量控制理论，数据质量重要性和必要性、</h3>
								<h3>根据项目找到相关数据源、数据在数据库真实含</h3>
								<h3>义、数据质量对项目影响、数据转换及清洗、数</h3>
								<h3>据脱敏、数据分析项目质量控制</h3>
							</div>
						</div>
						<div class="pro_right_sub">
							<a href="<%=path%>/Course/toSignUpCourse">立即报名</a>
						</div>
					</div>
				</div>
			</div>
	
	</div>
	<!--  -->
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
<script>
	var Pulldown=new pulldown();
</script>
</html>