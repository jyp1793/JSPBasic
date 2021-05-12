<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String s_kor = request.getParameter("korean");
	String s_math = request.getParameter("math");
	String s_eng = request.getParameter("english");
	
	//값이 공백이라면 다시 화면으로
	int kor, math, eng = 0;
	double avg = 0;
	if(name.equals("") || s_kor.equals("") || s_math.equals("") || s_eng.equals("")) {
		response.sendRedirect("quiz01.jsp");
	} else {
		
	kor = Integer.parseInt(s_kor);
	math = Integer.parseInt(s_math);
	eng = Integer.parseInt(s_eng);
	
	avg = (kor + math + eng) / 3;
	
	if(avg >= 60) {
		response.sendRedirect("quiz02_pass.jsp");
	} else {
		response.sendRedirect("quiz02_fail.jsp");
	} 
	}
	%>