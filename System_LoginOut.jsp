<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
session.invalidate();
%>
<h3>您已退出登入，3秒后您将跳转至登入界面</h3>
<%response.setHeader("refresh", "3;URL=System_Login.jsp"); %>
<h3>如果没跳转，请点击<a href="System_Login.jsp">这里</a></h3>
<h3></h3>

</body>
</html>