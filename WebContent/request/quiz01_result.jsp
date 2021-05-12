<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    
    String name = request.getParameter("name");
    String height = request.getParameter("height");
    String weight = request.getParameter("weight");
  
    
    double bmi = Double.parseDouble(weight) / (Double.parseDouble(height) / 100 * Double.parseDouble(height) / 100);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	이름:<%=name %><br/>
	몸무게:<%=weight %><br/>
	BMI:<%=bmi %><br/>
	
	<%  if(bmi >= 25) { %>
		<p>과체중입니다.</p>
	<% } else if(bmi <= 18) { %>
		<p>저체중입니다.</p>
	<% } else { %>
		<p>정상입니다.</p>
	<% } %>
	
</body>
</html>