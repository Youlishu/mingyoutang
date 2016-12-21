<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="StyleSheet" href="${pageContext.servletContext.contextPath}/js/dtree/dtree.css" type="text/css" />
		<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/dtree/dtree.js"></script>
	</head>
	<body>
		<div class="dtree">

		<script type="text/javascript">
			d = new dTree('d');
	
			d.add(0,-1,'My example tree');
			d.add(1,0,'管理','');
			d.add(2,0,'系统管理','');
			d.add(3,1,'课程订单','createcard.jsp','','right');
			d.add(4,1,'课程认证','','','aaa');
			d.add(5,1,'实验','','','right');
			d.add(6,1,'用户管理','users/toUserList','','right');
			
			document.write(d);
		</script>
		</div>
	</body>
</html>