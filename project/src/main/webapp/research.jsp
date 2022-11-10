<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문 조사 결과</title>
</head>
<style type="text/css">
b {
	font-size: 16pt;
}
</style>
<body>

	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name"); out.println("이름"
	 <b>"+name+"</b> <br>"); 

	String Q1 = request.getParameter("Q1"); out.println("연령대:");
	if(Q1.equals("20대")){ out.println("
	<b>20대</b>
	<br>"); }else if (Q1.equals("30대") { out.println("
	<b>30대</b>
	<br>"); } else{ out.println("<b>40대</b><br>"); }
	
	

	 String Q2Arr[] = request.getParameterValues("Q2");

	out.println("어떤 뷰를 원해요??"); 
	for(String Q2: Q2Arr){ int n =Integer.parseInt(Q2); 
	switch(n){ 
	case 1 : out.println("<b> 산</b>입니다."); 
		break; 
	case 2 : out.println("<b> 바다</b>입니다.");
	 break; 
	 case 3 : out.println("<b> 촌캉스</b>입니다."); 
		break; 
	case 4 : out.println("<b> 도심</b>입니다.");
	 break; 
	 } %>

	String Q3 = request.getParameter("Q3");
	out.println("동행자 :"); 
	if(Q3.equals("가족")){ out.println("<b>가족</b><br>"); 
	}else if (Q3.equals("친구") out.println("
	<b>친구</b>
	<br>"); } else if (Q3.equals("연인"){ out.println("
	<b>연인</b>
	<br>"); }else if (Q3.equals("혼자"){ out.println("
	<b>혼자</b>
	<br>"); } else{ out.println("
	<b>반려동물</b>
	<br>"); } 

	String Q4 = request.getParameter("Q4"); out.println("글램핑
	vs 카라반 :"); if(Q4.equals("카라반")){ out.println("
	<b>카라반</b>
	<br>"); 
	}else{ out.println("<b>글램핑</b><br>");}  


	 String Q5Arr[] = request.getParameterValues("Q5");
	out.println("이번여행 컨셉은? "); 
	for(String Q5: Q5Arr){ int n =Integer.parseInt(Q5); 
	switch(n){ 
	case 1 : out.println("<b>#힐링</b>입니다.");
	 break; 
	case 2 : out.println("<b> #먹방</b>입니다."); 
	break; 
	case 3 : out.println("<b> #사진</b>입니다.");
	 break; 
	 case 4 : out.println("<b> #핫플</b>입니다.");
	  break;} %>

	 String Q6Arr[] =request.getParameterValues("Q6"); 
	  out.println("어떤 정보를 주로 알고싶나요  ");

		for(String Q6: Q6Arr){ int n = Integer.parseInt(Q6); 
		switch(n){
		 case 1: out.println("<b>꿀팁</b>입니다.");
		 break; 
		 case 2 : out.println("<b>스팟 정보</b>입니다.");
		 break;
		  case 3 : out.println("<b> 요즘핫플</b>입니다.");
		 break; 
		 case 4 : out.println("<b> 캠핑음식</b>입니다.");
		 break; 
		 case 5 : out.println("<b> 편의성</b>입니다.");
		 break;} 


	 String Q7 = request.getParameter("Q7");
	out.println("어느 계절에 떠나나요??:"); 
	
	for(String Q7 : Q7Arr){ int n =Integer.parseInt(Q7);
	 switch(n){ case 1 : out.println("<b> 봄</b>입니다.");
	 break; 
	 case 2 : out.println("<b> 여름</b>입니다.");
	 break; 
	 case 3 : out.println("<b> 가을</b>입니다.");
	 break; 
	 case 4 : out.println("<b> 겨울</b>입니다.");
	 break; 
	<br>

	<b><a href='researchForm.jsp.go(-1)'>다시</a></b>

</body>

</html>
</body>
</html>