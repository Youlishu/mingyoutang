<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/a.js"></script>
<title>Insert title here</title>
</head>
<body>
<fieldset>
	<legend>。。。</legend>
	<div>
	<br/>修改学生信息<br/>
	</div>
</fieldset><br/>
<form action="${pageContext.servletContext.contextPath}/users/updateUser" method="post">
	<table border="1" width="700" style="border-collapse: collapse;" align="center">
		<tr bgcolor="#CABBCC" height="35">
			<td colspan="2">修改用户</td>
		</tr>
		<tr height="30">
			<td align="right">userId</td>
			<td>
				<input type="text" name="userId" value="${user.userId }"/>
			</td>
		</tr>
		<tr height="30">
			<td align="right">userName</td>
			<td>
				<input type="text" name="userName" value="${user.userName }"/>
			</td>
		</tr>
		<tr height="30">
			<td align="right">password</td>
			<td>
				<input type="text" name="password" value="${user.password }"/>
			</td>
		</tr>
		<tr height="30">
			<td></td>
			<td>
				<input type="submit" value="修改"/>
			</td>
		</tr>
	</table>	
</form>
</body>
</html>