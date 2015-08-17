<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<body>
<h3><%=this.getServletContext().getRealPath("/") %></h3>
<form action="image0.jsp" method="post" enctype="mulitpart/form-data">
<input type="file">
<button type="submit">确定</button>
</form>
</body>
</html>