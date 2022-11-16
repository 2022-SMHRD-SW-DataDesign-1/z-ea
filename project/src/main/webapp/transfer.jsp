<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.smhrd.model.ReservationDAO"%>
<%@page import="com.smhrd.model.ReservationDTO"%>
<%@page import="com.smhrd.model.GlampingDAO"%>
<%@page import="com.smhrd.model.GlampingDTO"%>
<%@page import="com.smhrd.model.TransferDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.TransferDAO"%>
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
<style>
.second-page-heading {
	background-image: url(assets/images/배너사진할꼬얌2.jpg);
	background-position: center center;
	background-size: cover;
	background-repeat: no-repeat;
	padding: 260px 0px 190px 0px;
	text-align: center;
}
</style>
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
							<li><a href="transfer.jsp" class="active">양도</a></li>
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

	<div class="modalPopup" style="z-index: 100; display: none;">
		<div class="ModalBack"
			style="position: fixed; background-color: black; width: 100%; height: 100%; opacity: 0.5;">
		</div>
		<div class="LoginModal"
			style="text-align: center; z-index: 3000; background-color: white; width: 500px; height: 650px; margin-top: 10%; margin-left: 36%; position: fixed; align-content: center;">
			<!-- 로그인 -->
			<form action="LoginService" method="post">
				<table style="margin: auto; margin-top: 8%;">
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
				<table style="margin: auto; margin-top: 8%;">
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
						<th colspan="2"><span style="padding: 10px;" id="resultCheck"></span></th>
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
						<h2>예약 양도</h2>
						<div class="main-button">
							<a href="transfer_input.jsp"
								style="width: 110px; border-radius: 15px; color: white; font-size: 18px; font-weight: bold; background-color: #6A5ACD; padding: 12px; border: none;">양도하기</a>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="amazing-deals">
			<div class="container">
				<div class="row">
					<%
					ArrayList<TransferDTO> transfer_list = new TransferDAO().transfer_all_show();
					%>
					<%
					for (int i = 0; i < transfer_list.size(); i++) {
						System.out.println("status확인 :" + transfer_list.get(i).getTransfer_status());
						System.out.println(transfer_list.get(i).getTransfer_num());
					%>

					<%
					if (transfer_list.get(i).getTransfer_status().equals("0")) {
					%>


					<%
					StringBuffer buf = new StringBuffer(
							new ReservationDAO().transfer_num_check_in(transfer_list.get(i).getTransfer_num()).getCheck_in());
					System.out.println("status확인 :" + transfer_list.get(i).getTransfer_status());
					%>

					<div class="col-lg-6 col-sm-6" style="overflow: hidden;">
						<div class="item">
							<div class="row">
								<div class="col-lg-6">
									<div class="image">
										<img src="assets/camping/<%=333-i %>_1.jpg" alt=""
											style="width: 246px; height: 328px;">
									</div>
								</div>
								<div class="col-lg-6 align-self-center">
									<div class="content">
										<h4><%=new GlampingDAO()
		.my_glamping_show(
				(new ReservationDAO().transfer_num_check_in(transfer_list.get(i).getTransfer_num()).getGc_num()))
		.getGc_name()%></h4>
										<div class="row">
											<div class="col-6">
												<i class="fa fa-clock"></i> <span class="list">마감<%=buf.insert(2, '-')%></span>
											</div>
											<div class="col-6">
												<i class="fa fa-map"></i> <span class="list"><%=transfer_list.get(i).getOffer_price()
/* new TransferDAO().transfer_show(transfer_list.get(i).getTransfer_num()).getOffer_price() */%></span>
											</div>
										</div>
										<p>
											양도이유 :
											<%=transfer_list.get(i).getTransfer_reason()
/* new TransferDAO().transfer_show(transfer_list.get(i).getTransfer_num()).getTransfer_reason() */%></p>

										<div class="main-button">
											<a
												href="transfer_select_show.jsp?transfer_num=<%=transfer_list.get(i).getTransfer_num()%>">자세히보기</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<%
					} else
					%>
					<%
					}
					%>
					<div class="col-lg-12" style="margin-bottom: 50px;">
						<ul class="page-numbers">
							<!-- <li><a href="#"><i class="fa fa-arrow-left"></i></a></li>
							<li><a href="#">1</a></li> -->
							<li class="active"><a href="#">up</a></li>
							<!-- <li><a href="#">3</a></li>
							<li><a href="#"><i class="fa fa-arrow-right"></i></a></li> -->
						</ul>
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
		</script>
		<script>
			function show() {
				console.log("실행");
				let modal = document.querySelector(".modalPopup");
				let modalBtn = document.querySelector(".modalBtn");
				// let mainCaption = document.querySelector(".main-caption")
				let slidercon = document.querySelector(".dark")
				console.log(modal.style.zIndex);
				console.log(slidercon.style.zIndex);
				if (modal.style.display == "none") {

					modal.style.display = "block"
					modalBtn.textContent = "닫기"
				}

				else {
					// mainCaption.style.opacity ="1";
					modal.style.display = "none"

					modalBtn.textContent = "로그인";
				}
			}
		</script>
</body>

</html>
