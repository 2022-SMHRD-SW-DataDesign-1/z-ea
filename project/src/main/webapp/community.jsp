<%@page import="com.smhrd.model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.BoardDAO"%>
<%@page import="com.smhrd.model.MemberDTO"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en-us">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap core CSS -->
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Load fonts -->
	<link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Lora' rel='stylesheet' type='text/css'>

	<!-- Additional CSS Files -->
	<link rel="stylesheet" href="assets/css/fontawesome.css">
	<link rel="stylesheet" href="assets/css/templatemo-woox-travel.css">
	<link rel="stylesheet" href="assets/css/owl.css">
	<link rel="stylesheet" href="assets/css/animate.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

	<!-- Load css styles -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<!-- <link rel="stylesheet" type="text/css" href="css/style.css" /> -->

</head>

<body>
	<%MemberDTO info = (MemberDTO)session.getAttribute("info"); %>
	  <!-- ***** Header Area Start ***** -->
	  <header class="header-area header-sticky">
		<div class="container">
		  <div class="row">
			<div class="col-12">
			  <nav class="main-nav">
				<!-- ***** Logo Start ***** -->
				<a href="Main.html" class="logo">
				  <img src="assets/images/logo.png" alt="">
				</a>
				<!-- ***** Logo End ***** -->
	
				<!-- ***** Menu Start ***** -->
				<ul class="nav">
				  <li><a href="index.jsp" class="active">홈</a></li>
				  <li><a href="about.jsp">테마</a></li>
				  <li><a href="deals.jsp">예약</a></li>
				  <li><a href="reservation.jsp">양도</a></li>
				  <li><a href="Community.html">커뮤니티</a></li>
				 								 <%if(info == null){ %>
              <li>
                <button class="modalBtn" onclick="show()" style="background-color:#6A5ACD; padding: 8px 14px; border: none;
                          color: #fff;
                         ">로그인</button>
              </li>
               <%}else{ %>
               <li>
                <a href="MyPage.jsp" class="modalBtn"  style="background-color: #6A5ACD; padding: 8px 14px; border: none;
                          color: #fff;
                         ">마이페이지</a>
               </li>
               <li>
                <a href="LogoutService" class="modalBtn"  style="background-color: #6A5ACD; padding: 8px 14px; border: none;
                          color: #fff;
                         ">로그아웃</a>
               </li>
               <%} %>
				</ul>
				<a class='menu-trigger'>
				  <span>Menu</span>
				</a>
				<!-- ***** Menu End ***** -->
			  </nav>
			</div>
		  </div>
		</div>
	  </header>
	  <!-- ***** Header Area End ***** -->
	<!-- Portfolio section start -->
	<section id="portfolio" class="darker">
		<div class="container2">
			<header>
				<h2>커뮤니티</h2>
				<a href="community_input.jsp">작성하기</a>
				<% ArrayList<BoardDTO> list = new BoardDAO().select(); %>
			</header>
			
			<div id="single-project"></div>
			
			<div class="row">
				<%for(int i = 0; i < list.size(); i++){ %>
				<figure class="portfolio-item col-md-4 col-sm-6">
					<a href="community_detail.jsp?board_num=<%=list.get(i).getBoard_num()%>">
					<img class="img-responsive" src="./file/<%=list.get(i).getBoard_file()%>" alt="Adena icons pack" />
					</a>
					<figcaption class="mask">
						<a href="community_detail.jsp?board_num=<%=list.get(i).getBoard_num()%>">
							<i class="glyphicon glyphicon-plus"><%=list.get(i).getBoard_title() %></i>
						</a>
					</figcaption>
				</figure>
				<%} %>
				
			
				
			</div>
		</div>
	</section>
	<!-- Portfolio section end -->

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p>
						Copyright Â© 2036 <a href="#">WoOx Travel</a> Company. All rights
						reserved. <br>Design: <a href="https://templatemo.com" target="_blank"
							title="free CSS templates">TemplateMo</a>
						Distribution: <a href="https://themewagon.com target=" _blank">ThemeWagon</a>
					</p>
				</div>
			</div>
		</div>
	</footer>

	

	<!-- Load jQuery -->
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>

	<!-- Load Booststrap -->
	<script type="text/javascript" src="js/bootstrap.js"></script>

	<script type="text/javascript" src="js/smooth-scroll.js"></script>

	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

	<!-- Load custom js for theme -->
	<script type="text/javascript" src="js/app.js"></script>


</body>

</html>