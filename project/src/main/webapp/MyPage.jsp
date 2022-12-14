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


<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-woox-travel.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
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
							<li><a href="reservation.jsp">예약</a></li>
							<li><a href="transfer.jsp">양도</a></li>
							<li><a href="community.jsp">커뮤니티</a></li>
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
							<li><a href="MyPage.jsp" class="active" class="modalBtn"
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
	<!-- 모달 -->
	<div class="modalPopup" style="display: none;">
		<div class="ModalBack" onclick
			style="position: fixed; background-color: black; width: 100%; height: 100%; opacity: 0.9;">
		</div>
		<div class="LoginModal"
			style="text-align: center; background-color: white; width: 540px; height: 650px; margin-top: 10%; margin-left: 36%; position: fixed; align-content: center;">
			<!-- 로그인 -->
			<form action="LoginService" method="post">
				<table style="margin: auto; margin-top: 10%;">
					<th colspan="2" style="font-size: 20px; padding: 10px;">로그인</th>
					<tr>
						<td>
							<div
								style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">이메일
							</div>
						</td>
						<td><input type="email" name="mb_email" style="width: 180px;" /></td>
					</tr>
					<tr>
						<td>
							<div
								style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">비밀번호
							</div>
						</td>
						<td><input type="password" name="mb_pw" style="width: 180px;" /></td>
					</tr>
					<td colspan="2" style="text-align: center;"><input
						type="submit" value="로그인" style="width: 80px;"></td>
				</table>
			</form>
			<!-- 회원가입-->
			<form action="JoinService" method="post">
				<table style="margin: auto; margin-top: 10%;">
					<th colspan="2" style="font-size: 20px; padding: 10px;">회원가입</th>
					<tr>
						<td>
							<div
								style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">이름
							</div>
						</td>
						<td><input type="text" name="mb_name" style="width: 180px;" /></td>
					</tr>
					<tr>
						<td>
							<div
								style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">이메일
							</div>
						</td>
						<td><input type="email" name="mb_email" id="mb_email_ck"
							style="width: 180px;" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="email중복확인"
							onclick="checkE()"></td>
					</tr>
					<tr>
						<th colspan="2"><span style="padding: 10px;" id="resultCheck"></span>
						</th>
					</tr>
					<tr>
						<td>
							<div
								style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">비밀번호
							</div>
						</td>
						<td><input type="password" name="mb_pw" style="width: 180px;" /></td>
					</tr>
					<tr>
						<td>
							<div
								style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">생년월일
							</div>
						</td>
						<td><input type="date" name="mb_birthdate"
							style="width: 180px;" /></td>
					</tr>
					<tr>
						<td>
							<div
								style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">전화번호
							</div>
						</td>
						<td><input type="text" name="mb_phone" style="width: 180px;" /></td>
					</tr>
					<td colspan="2" style="text-align: center;"><input
						type="submit" value="회원가입" style="width: 80px;"></td>
				</table>
			</form>
		</div>
	</div>


	<div class="dark">
		<div class="second-page-heading">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h4>내 여행관리는 여기에서</h4>
						<h2>My Page</h2>
						<div class="main-button">
							<p>내 여행일정 관리부터 소통까지 !</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="more-info reservation-info" style="margin: 10%;">
		<div class="container">
			<div class="row" style="width: 1500px; margin-left: -50px;">
				<div class="col-lg-4 col-sm-6" style="width: 350px;">
					<div class="info-item">
						<i class="fa fa-envelope"></i>
						<h4>회원정보</h4>
						<a href="회원정보수정.jsp">회원정보 수정하기</a>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6" style="width: 350px;">
					<div class="info-item">
						<i class="fa fa-phone"></i>
						<h4>예약 내역</h4>

						<a href="reservation_show.jsp">내 예약 확인하기</a>

					</div>
				</div>
				<div class="col-lg-4 col-sm-6" style="width: 350px;">
					<div class="info-item">
						<i class="fa fa-map-marker"></i>
						<h4>나의 후기</h4>
						<a href="comment_review.jsp">내가 작성한 리뷰/ 게시글</a>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6" style="width: 350px;">
					<div class="info-item">
						<i class="fa fa-map-marker"></i>
						<h4>설문조사</h4>
						<a href="Survey_update.jsp">설문조사 다시하기</a>
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
						Copyright © 2022 <a href="#">ze:a</a> Company. All rights
						reserved.
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
			}

			else {
				dark.style.opacity = "1";
				mainCaption.style.opacity = "1";
				modal.style.opacity = "0";
				modal.style.display = "none";
				modalBtn.textContent = "로그인";
			}
		}
	</script>
</body>

</html>

