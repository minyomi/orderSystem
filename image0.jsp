<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="org.lxh.smart.*" %>
<html>
<body>
<%
SmartUpload smart=new SmartUpload();
smart.initialize(pageContext);
smart.upload();
smart.save("uploads");
%>
</body>
</html>