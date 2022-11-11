<%@page import="com.smhrd.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang=en>
<head>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
<!--
TemplateMo 580 Woox Travel
https://templatemo.com/tm-580-woox-travel
-->
</head>
<body>
	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
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
							<li><a href="index.jsp">홈</a></li>
							<li><a href="about.jsp">글램핑&카라반</a></li>
							<li><a href="deals.jsp">예약</a></li>
							<li><a href="reservation.jsp">양도</a></li>
							<li><a href="community.jsp" class="active">커뮤니티</a></li>
							<%
							if (info == null) {
							%>
							<li>
								<button class="modalBtn" onclick="show()"
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
	<!-- ***** Header Area End ***** -->

	<div class="second-page-heading">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2></h2>
					<div class="main-button">
						<a href="index.jsp">BACK</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="reservation-form">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<form id="reservation-form" name="gs" method="submit" role="search"
						action="#">
						<div class="col-lg-12">
							<h4>작성하기</h4>
						</div>
					</form>
					<div class="row">
						<div class="col-lg-12">
							<form action="BoardService" method="post"
								enctype="multipart/form-data" style="margin-bottom: 400px;">
								<!-- 글제목 -->
								<div class="col-lg-6">
									<fieldset>
										<label for="name" class="form-label">title</label><br> <input
											type="text" name="board_title" class="Name"
											placeholder="title" autocomplete="on" required> <select
											name="board_category">
											<option value="#바다">바다</option>
											<option value="#산">산</option>
											<option value="#뷰">뷰</option>
											<option value="#감성">감성</option>
										</select>
									</fieldset>
								</div>
								<!-- 글내용 -->
								<div class="col-lg-6">
									<fieldset>
										<label style="margin-top:30px;">content</label><br>
										<label for="name" class="form-label"></label><br>
										<textarea type="text" name="board_content" class="Name"
											placeholder="content" autocomplete="on" required
											style="resize: none; margin-top:-20px;" rows="10">
										</textarea>
									</fieldset>
									<input type="file" name="board_file">
								</div>
								<div class="col-lg-12">
									<fieldset style="margin-top:40px;">
										<button type="submit" class="main-button">작성하기</button>
									</fieldset>
									</from>
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
							Copyright © 2036 <a href="#">WoOx Travel</a> Company. All rights
							reserved. <br>Design: <a href="https://templatemo.com"
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
					mainCaption.style.opacity = "0";
					dark.style.opacity = "0"
					modal.style.opacity = "1";
					modal.style.display = "block"
					modalBtn.textContent = "닫기"
				} else {
					dark.style.opacity = "1";
					mainCaption.style.opacity = "1";
					modal.style.opacity = "0";
					modal.style.display = "none";
					modalBtn.textContent = "로그인";
				}
			}
		</script>
		<script>
			function checkE() {
				let mb_email_ck = $('#mb_email_ck').val();
				console.log(mb_email_ck);
				$.ajax({
					url : 'EmailCheckService',
					data : {
						'mb_email_ck' : mb_email_ck
					},
					type : 'get',
					success : function(data) {
						console.log(data);
						if (data == 'true') {
							$('#resultCheck').text('사용할 수 없는 아이디')
						} else {
							$('#resultCheck').text('사용할 수 있는 아이디')
						}
					},
					error : function() {
						console.log("통신실패");
					}
				});
			}
		</script>
</body>
</html>