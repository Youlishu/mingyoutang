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
                                <li><a href="<%=path%>/toadminPeopleManage" class="lia"><span>人员信息管理</span></a></li>
                                <li><a href="<%=path%>/toadminOrdermanage" class="lia"><span>订单管理</span></a></li>
                                <li><a href="<%=path%>/toadminAllocation" class="lia"><span>分配管理</span></a></li>
                                <li><a href="<%=path%>/toadminExam" class="lia"><span>考试信息</span></a></li>
                                <li><a href="" class="lia"><span>工单管理</span></a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
  <!--  -->
</div>
<h1>创建课程成功</h1>

    
   
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