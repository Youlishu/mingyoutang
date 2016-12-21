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
  <title>老师基本资料</title>
    <script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>/css/common.css">
    <link type="text/css" rel="stylesheet" href="<%=path%>css/student-basics.css" >
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
                    <a href="<%=path%>/toTeacherCenter"><img src="../images/admin/student/icon/我的账户.png" alt=""><span>我的账户</span></a>
                </div>
                <div class="student-set-left-list">
                    <a href="<%=path%>/Poder/tofindTea" style="color: #ffc92a;">基本资料</a>
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
            <div class="basic-change-msg">
                <a href="javascript:void(0);">个人信息</a><a href="javascript:void(0);">更多信息</a>
            </div>
            <div class="basic-change-msg-form">
                <div class="basic-head">
                    <form action="" method="">
                        <img src="../images/admin/teacher/老师头像.png" alt="">
                        <span>提示：格式支持jpg、gif、jpeg、bmp、文件大小不超过2MB</span>
                        <input type="file" class="file" name="file" style="display: none;">
                        <button type="button" class="button">上传头像</button>
                    </form>
                </div>
                <div class="basic-cont">
                      <form action="" method="">
                        <img src="../images/admin/student/用户头像.png" alt="">
                        <span>提示：格式支持jpg、gif、jpeg、bmp、文件大小不超过2MB</span>
                        <input type="file" class="file" name="file" style="display: none;">
                        <button type="button" class="button">上传头像</button>
                    </form>
                </div>
                <div class="basic-cont">
                    <form action="<%=path%>/Poder/toreplyTea" method="post">
                        <div><label for=""><span>*</span>登录账号</label><input type="text" class="input" name="userName" value="${sessionScope.user.userName}"></div>
                        <div><label for=""><span>*</span>真实姓名</label><input type="text" class="input" name="trueName"></div>
                        <div><label for=""><span>*</span>身份证号</label><input type="text" class="input" name="Idcard"></div>
                        <div><label for=""><span>*</span>昵称</label><input type="text" class="input" name="nickName"></div>
                        <div>
                            <label for="" name="sex">性别</label>
                            <input type="radio" name="sex" value="男" class="sexman"><h5>男</h5>
                            <input type="radio" name="sex" value="女" class="sexwoman"><h5>女</h5>
                        </div>
                        <div>
                            <label for="" name="birth">生日</label>
                            <select name="birth" id="" class="select1">
                                <option value="2000">2000</option>
                                <option value="1999">1999</option>
                                <option value="1998">1998</option>
                                <option value="1997">1997</option>
                                <option value="1996">1996</option>
                                <option value="1995">1995</option>
                                <option value="1994">1994</option>
                                <option value="1993">1993</option>
                                <option value="1992">1992</option>
                                <option value="1991">1991</option>
                                <option value="1990">1990</option>
                                <option value="1989">1989</option>
                                <option value="1988">1988</option>
                                <option value="1987">1987</option>
                                <option value="1986">1986</option>
                                <option value="1985">1985</option>
                                <option value="1984">1984</option>
                                <option value="1983">1983</option>
                            </select>
                            <h6>年</h6>
                            <select name="birth" id="" class="select1">
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                            <h6>月</h6>
                            <select name="birth" id="" class="select1">
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                            </select>
                            <h6>日</h6>
                        </div>
                        <div>
                            <label for="" name="">学历</label>
                            <select name="diploma" id="" class="select1">
                                <option value="本科">本科</option>
                                <option value="大专">大专</option>
                                <option value="研究生">研究生</option>
                            </select>
                        </div>
                        <div><label for="">所在行业</label><input type="text" class="input" name="position"></div>
                        <div><label for="">所在地区</label><input type="text" class="input" name="area"></div>
                        <div><label for="">所在单位</label><input type="text" class="input" name="company"></div>
                        <div><label for="">所在职位</label><input type="text" class="input" name="job"></div>
                        <div><label for="">工作方向</label><input type="text" class="input" name="Workgoal"></div>
                        <div><input type="submit" value="完 成" class="sub"><input type="reset" value="取消" class="reset"></div>
                    </form>
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
    $('.button').click(function(){
        $('.file').click();
    });
</script>
</html>