<%@page import="session.example.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
   	User u = (User)session.getAttribute("user");

    String id = u.getId();
    String name = u.getName();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=id %>(<%=name %>)님 환영합니다.
</body>
</html>