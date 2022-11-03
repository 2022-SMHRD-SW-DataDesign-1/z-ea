<%@page import="com.smhrd.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<title>WoOx Travel Reservation Page</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-woox-travel.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<!--TemplateMo 580 Woox Travel

https://templatemo.com/tm-580-woox-travel
-->
</head>

<body>
<% MemberDTO info = (MemberDTO) session.getAttribute("info");%>

	<!-- ***** Preloader Start ***** -->
	<div id="js-preloader" class="js-preloader">
		<div class="preloader-inner">
			<span class="dot"></span>
			<div class="dots">
				<span></span> <span></span> <span></span>
			</div>
		</div>
	</div>
	<!-- ***** Preloader End ***** -->

	<!-- ***** Header Area Start ***** -->
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
							<li><a href="index.jsp" class="active">홈</a></li>
							<li><a href="about.jsp">테마</a></li>
							<li><a href="deals.jsp">예약</a></li>
							<li><a href="reservation.jsp">양도</a></li>
							<li><a href="reservation.jsp">커뮤니티</a></li>
							 <%if(info == null){ %>
              <li>
                <button class="modalBtn" onclick="show()" style="background-color: #22B3C1; padding: 8px 14px; border: none;
                          color: #fff;
                         ">로그인</button>
              </li>
               <%}else{ %>
               <li>
                <a href="MyPage.jsp" class="modalBtn"  style="background-color: #22B3C1; padding: 8px 14px; border: none;
                          color: #fff;
                         ">마이페이지</a>
               </li>
               <li>
                <a href="LogoutService" class="modalBtn"  style="background-color: #22B3C1; padding: 8px 14px; border: none;
                          color: #fff;
                         ">로그아웃</a>
               </li>
               <%} %>
						</ul>
						<a class='menu-trigger'> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	
	<!-- ***** Header Area End ***** -->

	<div class=se style="background-color: blanchedalmond; height: 300px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h4>내 여행관리는 여기에서</h4>
					<h2>My Page</h2>
					<p>내 여행일정 관리부터 소통까지 !</p>
					<div>
						<a href="about.jsp">자세히 알아보기</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="more-info reservation-info" style="margin: 10%;">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-sm-6">
					<div class="info-item">
						<i class="fa fa-envelope"></i>
						<h4>회원정보</h4>
						<a href="회원정보수정.jsp">회원정보 수정하기</a>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="info-item">
						<i class="fa fa-phone"></i>
						<h4>예약 내역</h4>
						<a href="#">내 예약 확인하기</a>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="info-item">
						<i class="fa fa-map-marker"></i>
						<h4>나의 후기</h4>
						<a href="#">내가 작성한 리뷰/ 게시글</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>


	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p>
						Copyright © 2036 <a href="#">WoOx Travel//ze-a</a> Company. All
						rights reserved. <br>Design: <a href="https://templatemo.com"
							target="_blank" title="free CSS templates">TemplateMo</a>
						Distribution: <a href="https://themewagon.com target="_blank" >ThemeWagon</a>
					</p>
				</div>
			</div>
		</div>
	</footer>


	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="assets/js/isotope.min.js"></script>
	<script src="assets/js/owl-carousel.js"></script>
	<script src="assets/js/wow.js"></script>
	<script src="assets/js/tabs.js"></script>
	<script src="assets/js/popup.js"></script>
	<script src="assets/js/custom.js"></script>

	<script>
		$(".option").click(function() {
			$(".option").removeClass("active");
			$(this).addClass("active");
		});
		
		 function show() {
		      console.log("외않되");
		      let modal = document.querySelector(".modalPopup");
		      let modalBtn = document.querySelector(".modalBtn");
		      let mainCaption = document.querySelector(".main-caption")
		      let dark = document.querySelector(".controls")

		      console.log("실행도미");
		      if (modal.style.opacity == "0") {
		    	mainCaption.style.opacity ="0";
		      dark.style.opacity = "0"
		        modal.style.opacity = "1";
		        modal.style.display = "block"
		        modalBtn.textContent = "닫기"
		      }

		      else {
		        dark.style.opacity ="1";
		    	  mainCaption.style.opacity ="1";
		        modal.style.opacity = "0";
		        modal.style.display = "none";
		        modalBtn.textContent = "로그인";
		      }
		    }
	</script>

</body>

</html>

