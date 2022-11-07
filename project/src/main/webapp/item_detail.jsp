<%@page import="com.smhrd.model.MemberDTO"%>

<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.ItemDAO"%>
<%@page import="com.smhrd.model.ItemDTO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-woox-travel.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />


<title>Insert title here</title>
</head>
<body>
<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->
						<a href="index.jsp" class="logo"> <img
							src="assets/images/logo.png" alt="">
						</a>
						<!-- ***** Logo End ***** -->
						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<li><a href="index.jsp">홈</a></li>
							<li><a href="about.jsp" class="active">글램핑&카라반</a></li>
							<li><a href="deals.jsp">예약</a></li>
							<li><a href="reservation.jsp">양도</a></li>
							<li><a href="community.jsp">커뮤니티</a></li>
							<%
							if (info == null) {
							%>
							<li>
								<button class="modalBtn" onclick=""
									style="background-color: #6A5ACD; padding: 8px 14px; border: none; color: #fff;">로그인</button>
							</li>
							<%
							} else {
							%>
							<li><a href="MyPage.jsp" class="modalBtn"
								style="background-color: #6A5ACD; padding: 8px 14px; border: none; color: #fff;">마이페이지</a>
							</li>
							<li><a href="LogoutService" class="modalBtn"
								style="background-color: #6A5ACD; padding: 8px 14px; border: none; color: #fff;">로그아웃</a>
							</li>
							<%
							}
							%>
						</ul>
						<a class='menu-trigger'> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	
		<!-- ***** Main Banner Area Start ***** -->
		<div class="about-main-content" style="opacity : 0.3;">
			<div class="container">
				<div class="row" >
					<div class="col-lg-12" style="text-align : center;" >
						<div class="content" style="background-color :black; width : 100%; height: 800px;">
							<img ="./project/src/main/webapp/assets/images/cities-04.jpg" alt="" style="width: 30%; height: 30%; border: black 1px solid;">
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="slider-content">
					<div style="background-color : white; width: 1200px height: 500px;">
						
						</div>
						</div>
	
	<footer>
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<p>
									Copyright Â© 2036 <a href="#">WoOx Travel</a> Company. All
									rights reserved. <br>Design: <a
										href="https://templatemo.com" target="_blank"
										title="free CSS templates">TemplateMo</a> Distribution: <a
										href="https://themewagon.com target="_blank" >ThemeWagon</a>
								</p>
							</div>
						</div>
				</footer>
</body>
</html>