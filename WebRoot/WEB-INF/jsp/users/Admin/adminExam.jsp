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
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/admin-exam.css">
	<title>考试信息</title>
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
                                <li><a href="<%=path%>/Admi/tofindOrd" class="lia"><span>订单管理</span></a></li>
                                <li><a href="<%=path%>/toadminCourse" class="lia"><span>课程管理</span></a></li>
                                <li><a href="<%=path%>/Admi/tofenCo" class="lia"><span>分配管理</span></a></li>
                                <li><a href="<%=path%>/toadminExam" class="lia"><span style="color: #ffdb72;font-size: 24px;">考试信息</span></a></li>
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
                <li><a href="javascript:void(0);" class="admin-left-a admin-manage-style-change">考试信息发布<img src="../images/admin/三角形.png" alt=""></a></li>
                <li><a href="javascript:void(0);" class="admin-left-a">考试信息管理<img src="../images/admin/三角形.png" alt="" style="display: none;"></a></li>
            </ul>
        </div>
        <div class="admin-manage-right">
            <div class="admin-exam-form1" >
                <form action="">
                    <div><h1>考试信息发布</h1></div>
                    <div><label for="">开始时间</label><input type="text" name="exam-year" class="exam-time"><span>年</span>
                    <input type="text" name="exam-mouth" class="exam-time"><span>月</span>
                    <input type="text" name="exam-day" class="exam-time"><span>日</span>
                    <input type="text" name="exam-hour" class="exam-time"><span>时</span>
                    <input type="text" name="exam-minute" class="exam-time"><span>分</span>
                    </div>
                    <div><label for="">结束时间</label><input type="text" name="exam-year1" class="exam-time"><span>年</span>
                    <input type="text" name="exam-mouth1" class="exam-time"><span>月</span>
                    <input type="text" name="exam-day1" class="exam-time"><span>日</span>
                    <input type="text" name="exam-hour1" class="exam-time"><span>时</span>
                    <input type="text" name="exam-minute1" class="exam-time"><span>分</span>
                    </div>
                    <div><label for="">考试主题</label><input type="text" name="exam-title" class="exam-input"></div>
                    <div><label for="">考试地点</label><input type="text" name="exam-area" class="exam-input"></div>
                    <div><input type="submit" class="exam-sub" value="发布信息"> </div>
                </form>
            </div>
            <div class="admin-exam-form2" style="display: none;">
                <div class="admin-exam-form2-table">
                    <table>
                        <tr class="admin-exam-form2-table-title">
                            <td style="width: 231px;">考试主题</td>
                            <td style="width: 166px;">考试时间</td>
                            <td style="width: 166px;">考试地点</td>
                            <td style="width: 166px;">发布考试时间</td>
                            <td style="width: 166px;">修改考试信息</td>
                        </tr>
                        <tr>
                            <td>大数据助理工程师</td>
                            <td>2016.2.1 8:00</td>
                            <td>杭州市西湖区云栖小镇中大银座5栋3层</td>
                            <td>2016.1.1 8:00</td>
                            <td><a href="javascript:void(0);" class="exam-change">修改</a></td>
                        </tr>
                        <tr>
                            <td>大数据助理工程师</td>
                            <td>2016.2.1 8:00</td>
                            <td>杭州市西湖区云栖小镇中大银座5栋3层</td>
                            <td>2016.1.1 8:00</td>
                            <td><a href="javascript:void(0);" class="exam-change">修改</a></td>
                        </tr>
                        <tr>
                            <td>大数据助理工程师</td>
                            <td>2016.2.1 8:00</td>
                            <td>杭州市西湖区云栖小镇中大银座5栋3层</td>
                            <td>2016.1.1 8:00</td>
                            <td><a href="javascript:void(0);" class="exam-change">修改</a></td>
                        </tr>
                        <tr>
                            <td>大数据助理工程师</td>
                            <td>2016.2.1 8:00</td>
                            <td>杭州市西湖区云栖小镇中大银座5栋3层</td>
                            <td>2016.1.1 8:00</td>
                            <td><a href="javascript:void(0);" class="exam-change">修改</a></td>
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
       if($(this).text()=='考试信息发布'){
        $('.admin-exam-form1').css('display','block');
        $('.admin-exam-form2').css('display','none');
       }
       if($(this).text()=='考试信息管理'){
        $('.admin-exam-form1').css('display','none');
        $('.admin-exam-form2').css('display','block');
       }
    });

</script>
</html>