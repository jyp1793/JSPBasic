<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 스크립트릿, 선언자, 표현식을 적절히 사용 --%>
<%! public int a = 0;
	Random ran = new Random();
%>

<% int dan = ran.nextInt(8) + 2; %>

<% a++; %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		<%=a %>번째 방문자 입니다.<br/>
		<%if(a % 10 == 0) { %>
			당첨되셨습니다.
		<% } %>
	</p>
	<hr/>
		<h4>랜덤구구단 <%=dan %></h4>	
		<p>
			이번에 나온 구구단 <%=dan %>입니다.<br/>
			<%for(int num = 1; num < 10; num++) { %>
				<%=dan %> X <%=num %> = <%=dan * num %><br/>
			<% } %>
		</p>

</body>
</html>