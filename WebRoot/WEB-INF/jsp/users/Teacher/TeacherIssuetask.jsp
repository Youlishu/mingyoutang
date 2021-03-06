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
<title>学生任务</title>
    <script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/pulldown.js"></script>
    <script type="text/javascript" src="<%=path%>/js/layer/layer.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/student-inform.css" >
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
                    <a href="<%=path%>/Poder/tofindTea">基本资料</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindTeaph">安全设置</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherInform">我的通知</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherBehavior">教学行为</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherStuManage">学生管理</a>
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
                    <a href="<%=path%>/Poder/tofindStu">学习管理</a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/toTeacherIssuetask" style="color: #ffc92a;">学生任务</a> 
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
            <div class="student-inform-title">
                <a href="javascript:void(0);" class="student-safe-title-style">发布任务</a><a href="javascript:void(0);">已发布</a>
            </div>
            <div class="teacher-issuetask-form1" >
                <form action="" method="">
                    <div class="teacher-issuetask-form-title">
                        <label for="">任务期限</label>
                        <select name="" id="">
                            <option value="">01</option>
                            <option value="">02</option>
                            <option value="">03</option>
                            <option value="">04</option>
                            <option value="">05</option>
                            <option value="">06</option>
                            <option value="">07</option>
                            <option value="">08</option>
                            <option value="">09</option>
                            <option value="">10</option>
                        </select>
                        <h6>月</h6>
                        <select name="" id="">
                            <option value="">01</option>
                            <option value="">02</option>
                            <option value="">03</option>
                            <option value="">04</option>
                            <option value="">05</option>
                            <option value="">06</option>
                            <option value="">07</option>
                            <option value="">08</option>
                            <option value="">09</option>
                            <option value="">10</option>
                        </select>
                        <h6>日</h6>
                        <span></span>
                        <select name="" id="">
                            <option value="">01</option>
                            <option value="">02</option>
                            <option value="">03</option>
                            <option value="">04</option>
                            <option value="">05</option>
                            <option value="">06</option>
                            <option value="">07</option>
                            <option value="">08</option>
                            <option value="">09</option>
                            <option value="">10</option>
                        </select>
                        <h6>月</h6>
                        <select name="" id="">
                            <option value="">01</option>
                            <option value="">02</option>
                            <option value="">03</option>
                            <option value="">04</option>
                            <option value="">05</option>
                            <option value="">06</option>
                            <option value="">07</option>
                            <option value="">08</option>
                            <option value="">09</option>
                            <option value="">10</option>
                        </select>
                        <h6>日</h6>
                    </div>
                    <div class="teacher-issuetask-form-cont">   
                        <label for="">任务内容</label>
                        <textarea name="issuetask-cont" id="" cols="80" rows="16"></textarea>
                    </div>
                    <div>
                        <input type="submit" class="issuetask-sub" value="发 布 任 务">
                    </div>
                </form>
            </div>
            <div class="student-inform-all" style="display: none;">
                <div class="student-inform-all-title">
                    <span><input type="checkbox" name="a" class="all">全 选</span>
                    <button type="button" class="inform-delete">删 除</button>
                </div>
                <div class="student-inform-all-cont">
                    <div class="student-inform-all-cont-list" >
                        <input type="checkbox" value="" name="a">
                        <span class="inform-email-send">这是一个主题</span>
                        <img src="../images/admin/student/icon/清空删除.png" alt="">
                        <span class="inform-email-title">剩余时间3天12小时</span>
                        <span class="inform-email-time">9月12日</span>
                    </div>
                    <div class="student-inform-all-cont-list" >
                        <input type="checkbox" value="" name="a">
                        <span class="inform-email-send">这是一个主题</span>
                        <img src="../images/admin/student/icon/清空删除.png" alt="">
                        <span class="inform-email-title">剩余时间3天12小时</span>
                        <span class="inform-email-time">9月12日</span>
                    </div>
                    <div class="student-inform-all-cont-list" >
                        <input type="checkbox" value="" name="a">
                        <span class="inform-email-send">这是一个主题</span>
                        <img src="../images/admin/student/icon/清空删除.png" alt="">
                        <span class="inform-email-title">剩余时间3天12小时</span>
                        <span class="inform-email-time">9月12日</span>
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
<script>
    var atitle=$('.student-inform-title').children('a');
    $(atitle).click(function() {
        $(atitle).removeClass('student-safe-title-style');
        $(this).addClass('student-safe-title-style');
        if($(this).text()=='发布任务'){
            $('.teacher-issuetask-form1').css('display','block');
            $('.student-inform-all').css('display','none');
        }
        if($(this).text()=='已发布'){
            $('.teacher-issuetask-form1').css('display','none');
            $('.student-inform-all').css('display','block');
        }

    });

    $('.inform-email-title').click(function() {
        layer.open({
            type: 1,
            skin: $(this), 
            title:[$(this).text(),'background:#ffc92a;font-size:20px;font-weight:bold;height:76px;padding-top:16px;padding-left:60px;'],
            area: ['822px', '500px'], 
            content: '<div class="layer-msg"><div class="layer-msg-title"><img src="../images/admin/student/用户头像.png" alt=""><span>数空科技</span></div><div class="layer-msg-time"><label for="">时 间</label><span>2017年1月1日</span></div><div class="layer-msg-cont"><p>您好，您的课程1，将于2017年1月1日即将开始，不要忘记哦！</p></div></div>'
        });
    });

    $('.all').click(function() {
         $("input[name='a']").prop("checked",$(this).prop("checked"));
    });
</script>
</html>