<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
	<legend>。。。</legend>
	<div>
	<br/>学生注册<br/>
	</div>
</fieldset><br/>
<form action="${pageContext.servletContext.ContextPath}/users/addUser" method="post">
	<table border="1" width="700" style="border-collapse: collapse;" align="center">
		<tr bgcolor="#CABBCC" height="35">
			<td colspan="2">注册用户</td>
		</tr>
		<tr height="30">
			<td align="right">userId</td>
			<td>
				<input type="text" name="userId"/>
			</td>
		</tr>
		<tr height="30">
			<td align="right">userName</td>
			<td>
				<input type="text" name="userName"/>
			</td>
		</tr>
		<tr height="30">
			<td align="right">password</td>
			<td>
				<input type="text" name="password"/>
			</td>
		</tr>
		<tr height="30">
			<td></td>
			<td>
				<input type="submit" value="添加"/>
			</td>
		</tr>
	</table>	
</form>
</body>
</html>