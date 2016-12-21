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
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-admincommon.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-statistic.css">
	<title>统计分析</title>
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
    <div class="banner_main">
            
    </div>
</div>
<div class="admin-statistic-con">
    <div class="admin-statistic-con-student">
        <div class="admin-statistic-con-student-left">
            <label for="" style="margin-top: 58px;">学生人数</label>
        </div>
        <div class="admin-statistic-con-student-right">
            <div class="admin-statistic-con-student-right-top">
                <div class="demo">
                    <div class="container">
                        <div class="row">
                            <div class=" col-md-6">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-warning progress-bar-striped active" style="width: 63%;">
                                        <div class="progress-value">在校学生 63% <a href="">35人</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="admin-statistic-con-student-right-bot">
                <div class="demo">
                    <div class="container">
                        <div class="row">
                            <div class=" col-md-6">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-info progress-bar-striped active" style="width: 37%;">
                                        <div class="progress-value">校外学生 37% <a href="">21人</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="admin-statistic-con-student">
        <div class="admin-statistic-con-student-left">
            <label for="" style="margin-top: 87px;">讲师人数</label>
        </div>
        <div class="admin-statistic-con-student-right">
            <div class="admin-statistic-con-student-right-top">
                <div class="demo">
                    <div class="container">
                        <div class="row">
                            <div class=" col-md-6">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-warning progress-bar-striped active" style="width: 33%;">
                                        <div class="progress-value">黄带 33% <a href="">14人</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="admin-statistic-con-student-right-bot">
                <div class="demo">
                    <div class="container">
                        <div class="row">
                            <div class=" col-md-6">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-success progress-bar-striped active" style="width: 34%;">
                                        <div class="progress-value">绿带 34% <a href="">15人</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="admin-statistic-con-student-right-bot">
                <div class="demo">
                    <div class="container">
                        <div class="row">
                            <div class=" col-md-6">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-info progress-bar-striped active" style="width: 33%;">
                                        <div class="progress-value">黑带 53% 14人</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="admin-statistic-con-student-company">
        <div class="admin-statistic-company-left">
            <label for="">企业数量</label>
            <span>现有<a href="">8家</a>企业</span>
        </div>
        <div class="admin-statistic-company-middle">
            <label for="">课程数量</label>
            <span>现有<a href="">12种</a>数量</span><br/>
            <label for="">课程数量</label>
            <span>现有<a href="">5种</a>课程</span>
        </div>
        <div class="admin-statistic-company-right">
            <label for="">上课数量</label>
            <span>现有<a href="">32节</a>课程</span>
        </div>
    </div>
    <div class="admin-statistic-con-student-order">
        <div class="admin-statistic-order-left">
            <label for="">订单数量</label>
            <span>现有<a href="">100个</a>订单</span>
        </div>
        <div class="admin-statistic-order-right">
            <label for="">订单收入</label>
            <span>现有收入<a href="">100000元</a></span>
        </div>
    </div>
    <div class="admin-statistic-con-student">
        <div class="admin-statistic-con-student-left">
            <label for="" style="margin-top: 58px;">工单数量</label>
        </div>
        <div class="admin-statistic-con-student-right">
            <div class="admin-statistic-con-student-right-top">
                <div class="demo">
                    <div class="container">
                        <div class="row">
                            <div class=" col-md-6">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-warning progress-bar-striped active" style="width: 35%;">
                                        <div class="progress-value">工单问题 35% <a href="">6个</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="admin-statistic-con-student-right-bot">
                <div class="demo">
                    <div class="container">
                        <div class="row">
                            <div class=" col-md-6">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-info progress-bar-striped active" style="width: 65%;">
                                        <div class="progress-value">申请工单 65% <a href="">10人</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                <p>COPY RIGHT©2016 数控科技有限公司 DATAWYC,ALL RIGHTS RESERVED</p>
            <a href="http://www.miitbeian.gov.cn/">
                <p>浙ICP备16004637号 -1</p>
            </a>

        </div>
    </div>

</footer>
</body>
<script type="text/javascript">
 var downcar=new downCarousel();
    var nav = document.getElementById('header-nav');
    var navs = nav.getElementsByTagName('div');
    var div = document.getElementById('header-div');
    var divs = div.getElementsByTagName('div');
    for(i=0;i<navs.length;i++)//循环每个按钮
    {
        navs[i].index=i;
//btn[i]是指定button的第i个按钮;为该按钮添加一个index属性，并将index的值设置为i
        navs[i].onmouseover=function()//按钮的第i个点击事件
        {
            for(i=0;i<navs.length;i++)//循环去掉button的样式，把div隐藏
            {
                navs[i].className='' //清空按钮的样式
                divs[i].style.display='none'//隐藏div
            }
            this.className='active'//自身添加active
            divs[this.index].style.display='block'//this.index是当前div
        }
    }
</script>
</html>