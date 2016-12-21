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
 <title>确认订单</title>
    <script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/common.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/zhifu.css">
</head>
<body>
<div class="header">
    <div class="top">
        <div class="container" >
            <div class="header-nav navbar-fixed-top">
                <div class="logimg">
                    <img src="images/Professiona/mingyoutanglogo2.png" alt="">
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
<div class="zhifu">
    <div class="container">
   <c:set var="c" value="${co}">
        <div class="apply">
            <span class="ele">你选择的课程</span>
            <div class="details">
                <div class="header"><span >${c.ClassOrderTime}</span></div>
                <div><span>2017年01月01日</span>--<span>2017年01月09日</span></div>
                <div>
                    <span class="rank">${c.ClassOrderPlace}</span>
                </div>
                <div>
                  <span>杭州市西湖区云栖小镇中大银座5号楼3楼</span>
                </div>

                <div class="rank"><span>${c.ClassOrderName}</span><span>CDSF</span></div>
                <div class="intr">
                    <p><label >课程1、</label><span class="arr">大数据分析领域职业介绍</span><span>2017.01.01</span>-<span>2017.01.03</span></p>
                    <p><label >课程2、</label><span class="arr">数据与数据库基础</span><span>2017.01.04</span>-<span>2017.01.05</span></p>
                    <p><label >课程3、</label><span class="arr">数据分析工具与语言</span><span>2017.01.06</span>-<span>2017.01.07</span></p>
                    <p><label >课程4、</label><span class="arr">数据可视化</span><span>2017.01.08</span>-<span>2017.01.09</span></p>
                    <p><label >课程5、</label><span class="arr">数据项目质量控制</span><span>2017.01.08</span>-<span>2017.01.09</span></p>
                    <p><label >课程6、</label><span class="arr">数据编程基础</span><span>2017.01.08</span>-<span>2017.01.09</span></p>
                    <p><label >课程7、</label><span class="arr">数据分析项目设计与执行</span><span>2017.01.08</span>-<span>2017.01.09</span></p>
                    <p><label >课程8、</label><span class="arr">回顾与总结</span><span>2017.01.08</span>-<span>2017.01.09</span></p>
                </div>
                    <h3><span class="rank much">报名费用:2888元</span></h3>
            </div>
            <div class="click"><a href="" class="enter">确认付款</a><a href="" class="back">返回</a> </div>
        </div>
    </c:set>
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
<script>
    setTimeout(function(){
        document.getElementsByClassName('zhifu')[0].style.height = window.innerHeight+'px';
    });
    $('.loginname-li').hover(function() {
        $('.loginname-list').css('display','block');
    }, function() {
        $('.loginname-list').css('display','none');
    });
</script>
</body>
</html>