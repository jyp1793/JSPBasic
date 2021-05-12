<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Cookie[] cookies = request.getCookies();
    
    String id = "";
    if(cookies != null) {
    	
    	for(Cookie c : cookies) {
    		if(c.getName().equals("user_id")) {
    				id = c.getValue();
    		}
    	}
    }
    
    //쿠키가 없다면 리다이렉트
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h4><%=id %>아이디님 환영합니다.</h4>
</body>
</html>