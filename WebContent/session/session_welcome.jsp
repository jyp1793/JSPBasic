<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션이 없는 사람이라면, 화면에 접근 불가.
	if(session.getAttribute("id") == null) {
		response.sendRedirect("session_login.jsp"); //강제이동
	}


	String id = (String)session.getAttribute("id");
	String name = (String)session.getAttribute("name");


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h4><%=id %>(<%=name%>)환영합니다.</h4>
	
	<form action="session_logout.jsp" method="post">
	<a><input type="submit" value="로그아웃" ></a>
	</form>
	
</body>
</html>