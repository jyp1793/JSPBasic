<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--
	선언자, 스크립을 적절하게 사용합니다!
	어피치, 라이언, 제이지, 무지, 프로도를 가지고 있는 배열 생성
	랜덤하게 선택된 카카오프렌즈를 list에 추가하는 형식으로 작성을 합니다. --%>
<%!
	String[] jobs = {"어피치", "라이언","제이지","무지","프로도"};
	List<String> list = new ArrayList<>();
	Random ran = new Random();
%>
<%
	//1번씩 실행될 구문
	int r = ran.nextInt(jobs.length);
	list.add(jobs[r]); //추가
	
	int count = 0; //중복인원체크
	for(String s : list) {
		if(s.equals(jobs[r])) {
			count++;
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h4><%=jobs[r] %>친구가 입장했습니다.</h4>
	현재 같은 카카오 프렌즈는 <%=list.toString()%>명입니다.
	
	<%
	
	if(list.size() == 10) {
		list.clear();
	}
	%>
	
	
	
</body>
</html>