<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	//1. 예약페이지에서 넘어온 좌석 정보를 받습니다.
	
	//2. 좌석정보를 임시로 저장 할 A리스트 생성
	
	//3. app에 B리스트가 있다면 꺼내와서  A에 저장합니다.
	
	//4. A리스트와 좌석정보를 비교해서 중복된 좌석이 아니라면 사본리스트를 생성하고, 하나씩 추가하세요.
	//list.contains(값)
	
	//5. 사본리스트와 seat와 길이가 같다면 중복이 없다는 뜻이므로 
	//	  사본리스트를 A리스트에 전체 추가하고 app에 저장.

	String[] seat = request.getParameterValues("seat");
	
	List<String> list = new ArrayList<>();
	
	if(application.getAttribute("list") != null) { //존재하는 경우
		list = (List<String>)application.getAttribute("arl");
	}
	
	List<String> temp = new ArrayList<>();
	for(String s : seat) {
		if(list.contains(s) ) { //중복인경우
			break;
		} else {
			temp.add(s); //중복이 아닌경우 좌석을 추가
		}
	}
	
	if(temp.size() == seat.length) {
		list.addAll(temp); //사본리스트를 
	}
	
	//application에 같은 이름으로 추가.
	application.setAttribute("list", list);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div aligh="center">
		<h3>예약 선택한 좌석</h3>
		<% for(String s : seat)  {%>
		[<%=s %>]
		<% } %>
		<br/>
		
		<b>신청결과:</b>
		<%=temp.size() == seat.length ? "<b>성공</b>" : "<b>실패</b>" %>
		
		<br/>
		<a href="reserve.jsp">다시 예약하기</a>
	</div>
</body>
</html>