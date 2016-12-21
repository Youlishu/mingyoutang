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
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
	<link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admincommon.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-admincommon.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-ordermanage.css">
	<title>订单管理</title>
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
                                <li><a href="<%=path%>/Admi/tofindallStu" class="lia"><span>人员信息管理</span></a></li>
                                <li><a href="<%=path%>/toadminOrdermanage" class="lia"><span style="color: #ffdb72;font-size: 24px;">订单管理</span></a></li>
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
                <li><a href="javascript:void(0);" class="admin-left-a admin-manage-style-change">个人订单管理<img src="../images/admin/三角形.png" alt=""></a></li>
                <li><a href="javascript:void(0);" class="admin-left-a">企业订单管理<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
            </ul>
        </div>
        <div class="admin-manage-right">
            <div class="admin-ordermanage-form1">
                <div class="admin-ordermanage-form1-table">
                    <table>
                        <tr class="admin-ordermanage-form1-table-title">
                            <td style="width: 148px;">用户名</td>
                            <td style="width: 166px;">订单描述</td>
                            <td style="width: 140px;">价格</td>
                            <td style="width: 168px;">订单数量</td>
                            <td style="width: 156px;">交易数量</td>
                            <td style="width: 148px;">下单时间</td>
                        </tr>
                        <tr>
                            <td>宽容睿智的潘志文</td>
                            <td>数据分析</td>
                            <td>￥8888</td>
                            <td>1</td>
                            <td>已付款</td>
                            <td>2017年12月10日<br>17:00</td>
                        </tr>
                        <tr>
                            <td>宽容睿智的潘志文</td>
                            <td>数据分析</td>
                            <td>￥8888</td>
                            <td>1</td>
                            <td>已付款</td>
                            <td>2017年12月10日<br>17:00</td>
                        </tr>
                        <tr>
                            <td>宽容睿智的潘志文</td>
                            <td>数据分析</td>
                            <td>￥8888</td>
                            <td>1</td>
                            <td>已付款</td>
                            <td>2017年12月10日<br>17:00</td>
                        </tr>
                        <tr>
                            <td>宽容睿智的潘志文</td>
                            <td>数据分析</td>
                            <td>￥8888</td>
                            <td>1</td>
                            <td>已付款</td>
                            <td>2017年12月10日<br>17:00</td>
                        </tr>
                    </table>
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
        function loadData(num) {
            $("#PageCount").val("89");
        }
</script>

<script>
    $('.admin-left-a').click(function() {
       $('.admin-left-a').removeClass('admin-manage-style-change');
       $('.admin-left-a').children('img').css('display','none');
       $(this).addClass('admin-manage-style-change');
       $(this).children('img').css('display','block');
       if($(this).text()=='学生信息管理'){
        $('.admin-people-form1').css('display','block');
        $('.admin-people-form2').css('display','none');
        $('.admin-people-form3').css('display','none');
       }
       if($(this).text()=='讲师信息管理'){
        $('.admin-people-form1').css('display','none');
        $('.admin-people-form2').css('display','block');
        $('.admin-people-form3').css('display','none');
       }
       if($(this).text()=='企业信息管理'){
        $('.admin-people-form1').css('display','none');
        $('.admin-people-form2').css('display','none');
        $('.admin-people-form3').css('display','block');
       }
    });

</script>
</html>