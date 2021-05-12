<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- a태그를 클릭시  quiz02_result페이지로 학생번호를 전달하면됩니다.-->
	<h2>quiz02.jsp</h2>
	
<form action="quiz02_result.jsp" method="post">

<%for(int a = 1; a <= 30; a++) { %>
    	<a href="quiz02_result.jsp/num=<%=a %>"><%=a %>번 학생</a><br/>
   <% }%>







</form>
</body>
</html>