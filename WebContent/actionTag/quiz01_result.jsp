<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    /*
    	앞에서 넘어온 값을 받아서 평균을 구합니다.
    	평균이 60점 이상이라면 quiz01_ok.jsp로 이동해서 ~~님 평균xx점 합격입니다.
    	
    	평균이 60점 이하인 경우는 quiz01_no.jsp로 이동해서 ~~님 평균xx점 불합격입니다.
    	
    	조건:세션 사용하지 않습니다.
    	*/
    	
    	request.setCharacterEncoding("utf-8");
    	
    	String name = request.getParameter("name");
    	String kor = request.getParameter("kor");
    	String math = request.getParameter("math");
    	String eng = request.getParameter("eng");
    	
    	Integer kor_s = Integer.parseInt(kor);
    	Integer math_s = Integer.parseInt(math);
    	Integer eng_s = Integer.parseInt(eng);
    	
    	double avg = (kor_s + math_s + eng_s) / 3.0;
    	
    	//request객체에 강제저장
    	request.setAttribute("name", name);
    	request.setAttribute("avg", avg);
    	
    	if(avg >= 60.0) {
    		request.getRequestDispatcher("quiz01_ok.jsp").forward(request, response);
    	} else {
    		request.getRequestDispatcher("quiz01_no.jsp").forward(request, response);
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>