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
	<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/lunbo.js"></script>
	<script type="text/javascript" src="<%=path%>/js/index_lunbo.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/index.css">
	<title></title>

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
                            	<li><a href="<%=path%>/toMingyoutangHomepage" class="lia" ><span style="color: #ffdb72;">首页</span></a></li>
                                <li><a href="<%=path%>/toProfessiona" class="lia"><span>大数据职业认证</span></a></li>
                                <li><a href="<%=path%>/toInstructor" class="lia"><span>大数据讲师认证</span></a></li>
                                <li><a href="<%=path%>/toTraining" class="lia"><span>大数据企业内训</span></a></li>
                                <!--<li><a href="#"><span>慕课视频</span> <br><span>VIDEO COURSE</span></a></li>-->
                                <li><a href="<%=path%>/tologin" class="logina" style="padding-top: 22px;"><span>登录</span></a></li>
                                <li><a href="<%=path%>/toReg" class="rega" style="padding-top: 22px;"><span>注册</span></a></li>
                                <input type="hidden" value="${sessionScope.user.userName}" id="hiddensesson">
                                <li class="loginname-li" style="display: none;">
                                    <a href="javascript:void(0);" class="loginname">${sessionScope.user.userName}<span class="glyphicon glyphicon-chevron-down" style="padding-left: 5px;"></span></a>
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
<div class="index_carousel">

	<div class="carousel">
		
			<div class="carousecont">
				<div class="carouselimg carouselimg-1">
					<div class="carousel_w">
						<div class="upbutton"><a href="javascript:void(0);" ><img src="<%=path%>/images/index/up.png" alt=""></a></div>
						<div class="carousel_des">
							<h1>大数据职业认证培训</h1>
							<div class="arousel_dess">
								<p>着眼大数据职业人才培养标准、就业能力标准</p>
								<p>建立大数据行业跨平台统一职业认证标准</p>
								<p>北美和国内大数据理论和实战专家组成课程编委会</p>
								<p>前瞻性与实战性结合的大数据职业认证培训体系</p>
								<p>面向院校、企业、园区、培训机构、大数据开发者</p>
							</div>
							<div class="apply"><a href="<%=path%>/Course/toSignUpCourse">申请报名</a></div>
						</div>
						<div class="downbutton"><a href="javascript:void(0);"><img src="<%=path%>/images/index/down.png" alt=""></a></div>
					</div>
				</div>
				<div class="carouselimg carouselimg-2">
					<div class="carousel_w">
					<div class="upbutton"><a href="javascript:void(0);" ><img src="<%=path%>/images/index/up.png" alt=""></a></div>
					<div class="carousel_des">
						<h1>大数据私董会</h1>
						<div class="arousel_dess1">
							<h5>主办单位：<span>数空科技</span><span>明优堂</span><span>五叶草</span></h5>
							<h5>支持单位：<span>阿里云数加</span><span>云栖联盟</span><span>中欧</span></h5>
							<h5>大数据导师：阿里云大牛 各界大咖</h5>
							<h5>企业家会员：CEO、CTO、企业高管</h5>
							<h5>小组学习：20人小组 10天次学习</h5>
							<h5>学习形式</h5>
							<h5>身份共鸣 坦诚开放</h5>
							<h5>案例讲座 圆桌讨论</h5>
							<h5>群策群力 标杆游学</h5>
						</div>
					</div>
					<div class="downbutton"><a href="javascript:void(0);" ><img src="<%=path%>/images/index/down.png" alt=""></a></div>
					</div>
				</div>
				<div class="carouselimg carouselimg-3">
					<div class="carousel_w">
					<div class="upbutton"><a href="javascript:void(0);"><img src="<%=path%>/images/index/up.png" alt=""></a></div>
					<div class="carousel_des">
						<h1>大数据讲师资质培训</h1>
						<div class="arousel_dess1">
							<h5>讲师分级</h5>
							<h5>I级：认证绿带讲师</h5>
							<h5>CDSF认证绿带讲师 CDPA认证绿带讲师 CDPE认证绿带讲师 CDEA认证绿带讲师 CDAE认证绿带讲师</h5>
							<h5>II级：认证黑带讲师</h5>
							<h5>CDSF认证黑带讲师 CDPA认证黑带讲师 CDPE认证黑带讲师 CDEA认证黑带讲师 CDAE认证黑带讲师</h5>
							<h5>III级：认证黑带大师</h5>
						</div>
						<div class="apply"><a href="">申请讲师</a></div>
					</div>
					<div class="downbutton"><a href="javascript:void(0);" ><img src="<%=path%>/images/index/down.png" alt=""></a></div>
					</div>
				</div>
				<div class="carouselimg carouselimg-4">
					<div class="carousel_w">
					<div class="upbutton"><a href="javascript:void(0);" ><img src="<%=path%>/images/index/up.png" alt=""></a></div>
					<div class="carousel_des">
						<h1>大数据培训合作方式</h1>
						<div class="arousel_dess1">
							<h5>院校合作：专业共建 课程置换 实训室建设 认证考试</h5>
							<h5>培训合作：课程体系导入 认证考试 实训室建设</h5>
							<h5>企业合作：课程合作 企业内训 私董会 实战沙龙</h5>
						</div>
						<div class="apply" style="margin-top: 50px;"><a href="">申请合作</a></div>
					</div>
					<div class="downbutton"><a href="javascript:void(0);" ><img src="<%=path%>/images/index/down.png" alt=""></a></div>
					</div>
				</div>
			</div>
		
	</div>
</div>
<!-- 内容start -->
<section class="section ">
    <!-- 中间内容导航start -->
    <div class="container">
        <div class="section-header">
            <div class="header-nav" id="header-nav">
                <div><span>I级大数据助理工程师</span><br><span>CDSE</span></div>
                <div><span>Ⅱ级数据分析师</span><br><span>CDPA</span></div>
                <div><span>Ⅱ级大数据分析师</span><br><span>CDPE</span></div>
                <div><span>Ⅲ级数据分析专家</span><br><span>CDEA</span></div>
                <div><span>Ⅲ级大数据架构师</span><br><span>CDAE</span></div>
            </div>
            <div class="header-div" id="header-div">
                <div class="active">
                    <p>操作使用大数据系统</p>
                    <p>数据分析正确流程</p>
                    <p>数据挖掘在行业里的应用</p>
                    <p>执行数据项目的实际操作</p>
                </div>
                <div>
                    <p>针对实际需求提出分析方案</p>
                    <p>有效使用分析工具进行数据分析</p>
                    <p>进行洞察分析提出运营优化合理建议</p>
                    <p>帮助企业构建数据分析体系</p>
                </div>
                <div>
                    <p>根据设计搭建大数据平台</p>
                    <p>进行抽取、清洗、加工等数据处理</p>
                    <p>基于大数据平台进行研发、运维、管理等</p>
                    <p>自主设计基于云架构的数据仓库模型</p>
                </div>
                <div>
                    <p>使用高级分析方法分析数据</p>
                    <p>统筹设计企业对数据的需求</p>
                    <p>利用数据提升企业的经营效益</p>
                    <p>根据企业情况提出数据战略和长远规划</p>
                </div>
                <div>
                    <p>根据行业特点进行大数据架构设计</p>
                    <p>根据企业实际情况进行数据治理</p>
                    <p>根据企业情况提出数据战略和长远规划</p>
                    <p>根据数据工程理论提升企业数据管理能力</p>
                </div>
            </div>
            <img src="<%=path%>/images/index/pentagram_bg.png" alt="" class="header-enter">
            <div class="header-right"> <span>大数据职业认证</span></div>
            <!--<img src="<%=path%>/img/mingyoutangWebsite_11.png" alt="" class="header-right">-->
        </div>
        <!-- 中间内容start -->
        <div class="section-content">

        <div class="section-left">
            <div ><h3>大数据职业I级认证培训</h3></div>
        </div>
            <div class="section-right">
                <p>大数据职业I级认证培训  </p>
                <p>大数据助理工程师CDSF </p>
                <div>本课程是大数据行业的基础培训课程
                    以数据分析基本原理（数据库知识、数据质量控制、数据编程）为主线
                </div>
                <div> 辅以Hadoop和阿里云云计算技术
                    介绍数据分析在行业实际应用与项目管理中的方法、技术和技能
                    通过大量案例学习理解数据分析技能（实操内容占课程40%+）</div>
                <p><label >课程时间：</label>8天</p>
                <p><a href="<%=path%>/Course/toSignUpCourse">课程申请</a></p>
            </div>
        </div>
        <div class="section-footer">
            <div class="cooperate-bg">
			    <div class="animation-bg animation-bg1" >
			        <div class="animation-img animation-img1 ">
			        <h1>主办单位</h1>
			        <h2>Host Unit</h2>
			        </div>
			        <div class="animation-img animation-img2 ">
			          <h1>支持单位</h1>
			          <h2>Support</h2>
			        </div>
			    </div>
			    <div class="animation-bg animation-bg2" >
			        <div class="animation-img animation-img1 animation-logo">
			          <div class="col-sm-4"><a href=""><img src="<%=path%>/images/ThehostUnit/Shukonglogo-01.png" alt="" class="logo-size"></a></div>
			          <div class="col-sm-4"><a href=""><img src="<%=path%>/images/ThehostUnit/mingyoutanglogo-01.png" alt="" class="logo-size"></a></div>
			          <div class="col-sm-4"><a href=""><img src="<%=path%>/images/ThehostUnit/Wuyecaologo-01.png" alt="" class="logo-size"></a></div>
			        </div>
			        <div class="animation-img animation-img2 animation-logo">
			          <div class="col-sm-2"><a href=""><img src="<%=path%>/images/SupportUnit/GuestandBase.png" alt="" class="logo-size"></a></div>
			          <div class="col-sm-2"><a href=""><img src="<%=path%>/images/SupportUnit/AliCloudlogo-01.png" alt="" class="logo-size"></a></div>
			          <div class="col-sm-3"><a href=""><img src="<%=path%>/images/SupportUnit/InnovationCenterlogo-01.png" alt="" class="logo-size"></a></div>
			          <div class="col-sm-2"><a href=""><img src="<%=path%>/images/SupportUnit/yunqiGroup.png" alt="" class="logo-size"></a></div>
			          <div class="col-sm-3"><a href=""><img src="<%=path%>/images/SupportUnit/middleEurope.png" alt="" class="logo-size"></a></div>
			        </div>
			    </div>
    
  			</div>
        </div>
    </div>

</section>
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
 var rousel=new Carousel();
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
<script>
	if($('#hiddensesson').val()){
		$('.logina').css('display','none');
		$('.rega').css('display','none');
		$('.loginname-li').css('display','block');
	}else{
		$('.logina').css('display','block');
		$('.rega').css('display','block');
		$('.loginname-li').css('display','none');
	}
	
	$('.loginname-li').hover(function() {
        $('.loginname-list').css('display','block');
    }, function() {
        $('.loginname-list').css('display','none');
    });
</script>
</html>