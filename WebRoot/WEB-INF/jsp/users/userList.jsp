<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/a.js"></script>
<title>LMS后台</title>
</head>
<body>
<fieldset>
	<legend>。。。</legend>
	<div>
	<br/>学生添加<br/>
	</div>
</fieldset><br/>
<a href="${pageContext.servletContext.contextPath}/users/toForm">添加</a><br/>
<table border="1" width="100%" style="border-collapse: collapse;">	
	<tr bgcolor="#CABBCC" height="35">
		<th width="190">id</th>
		<th width="190">name</th>
		<th width="190">pwd</th>
		<th width="190">action</th>
	</tr>
</table>
<table border="1" width="100%" style="border-collapse: collapse;">	
	<c:forEach items="${map.userList}" var="user">
		<tr align="center" height="30">
			<td width="190">${user.userId }</td>
			<td width="190">${user.userName }</td>
			<td width="190">${user.password }</td>
			<td width="190"><a href="${pageContext.servletContext.contextPath}/users/toForm?userId=${user.userId }">修改</a>/<a href="${pageContext.servletContext.contextPath}/users/deleteUser?userId=${user.userId}">删除</a></td>
		</tr>	
	</c:forEach>
</table>
<table border="1" width="100%" style="border-collapse: collapse;">
	<tr>
		<td align="right">
			<a href="" onclick="f(1);return false;">首页</a>
			<c:choose>
				<c:when test="${map.currentPage<=1}">上一页</c:when>			
				<c:otherwise>
					<a href="" onclick="f(${map.currentPage-1});return false;">上一页</a>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${map.currentPage>=map.totalPage}">
					下一页
				</c:when>			
				<c:otherwise>
					<a href="" onclick="f(${map.currentPage+1});return false;">下一页</a>
				</c:otherwise>
			</c:choose>			
			<a href="" onclick="f(${map.totalPage});return false;">尾页</a>&nbsp;&nbsp;
		</td>		
	</tr>
</table>
<form action="${pageContext.servletContext.contextPath}/users/toUserList" method="post" id="searchForm">
	<input type="hidden" name="currentPage" id="currentPage"/>
</form>
<script type="text/javascript">
	function f(v){
				var searchForm=document.getElementById("searchForm");
		document.getElementById("currentPage").value=v;
		searchForm.submit();
	}
</script>
</body>
</html>