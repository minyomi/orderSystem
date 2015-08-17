<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>您已预订成功，请再光临本餐馆后报出名字及电话已进行核实</h1>
<h3>将在10秒后返回之前的页面</h3>
<% response.setHeader("reflash","10;URL=Propaganda/Somuns.jsp");%>
<h3>如没跳转，请点<a href="Propaganda/Somuns.jsp">这里</h3>
</body>
</html>