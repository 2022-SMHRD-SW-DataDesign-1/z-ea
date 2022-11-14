<%@page import="com.smhrd.model.MemberDTO"%>
<%@page import="com.smhrd.model.RoomDAO"%>
<%@page import="com.smhrd.model.GlampingDAO"%>
<%@page import="com.smhrd.model.ReservationDAO"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.model.TransferDAO"%>
<%@page import="com.smhrd.model.TransferDTO"%>
<%@page import="com.smhrd.model.ItemDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.ItemDAO"%>
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
<!-- <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
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
<style>
.table {
	width: 750px;
	border: 1px solid #D9D9D9;
	display: inline-table;
	color: #fff;
	text-align: center;
	padding: 10px;
	margin-top: 10px;
	margin-left: 30px;
	border-top: none;
	border-bottom: none;
	border-left: none;
	border-right: none;
}

img {
	display: inline-block;
}

.noti {
	color: #fff;
	width: 300px;
	height: 50px;
	display: inline-block;
}

.noti>h5 {
	color: #fff;
	float: left;
	margin-left: 30px;
	margin-bottom: 20px;
}

.noti>ul {
	float: right;
}

.noti>li {
	margin-left: 10px;
	margin-top: 50px;
}

.ti {
	color: #fff;
	width: 80%;
	margin-left: 30px;
	margin-top: 50px;
	display: inline-block;
}

.ti>h5 {
	color: #fff;
	float: left;
	maring-left: 30px;
}

.ti>ul {
	float: right;
	margin-left: 30px;
	margin-top: 10px;
}

.ti>ul>li {
	float: left;
	margin-left: 30px;
	margin-top: 20px;
}

.check {
	color: #fff;
	margin-left: 60px;
	margin-top: 15px;
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
							<li><a href="about.jsp">테마</a></li>
							<li><a href="reservation.jsp">예약</a></li>
							<li><a href="transfer.jsp" class="active">양도</a></li>
							<li><a href="community.jsp">커뮤니티</a></li>
							<li>
								<button class="modalBtn" onclick="show()"
									style="background-color: #6A5ACD; padding: 8px 14px; border: none; color: #fff;">로그인</button>
							</li>
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
	<div class="modalPopup" style="display: none; z-index: 50;">
		<div class="ModalBack" onclick
			style="position: fixed; background-color: black; width: 100%; height: 100%; opacity: 0.9;">
		</div>
		<div class="LoginModal"
			style="text-align: center; background-color: white; width: 540px; height: 600px; margin-top: 10%; margin-left: 36%; position: fixed; align-content: center;">
			<!-- 로그인 -->
			<table style="margin: auto; margin-top: 10%;">
				<th colspan="2" style="font-size: 20px; padding: 10px;">로그인</th>
				<tr>
					<td>
						<div
							style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">이메일
						</div>
					</td>
					<td><input type="email" name="email" style="width: 180px;" /></td>
				</tr>
				<tr>
					<td>
						<div
							style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">비밀번호
						</div>
					</td>
					<td><input type="password" name="password"
						style="width: 180px;" /></td>
				</tr>
				<td colspan="2" style="text-align: center;"><input
					type="submit" value="로그인" style="width: 80px;"></td>
			</table>
			<!-- 회원가입-->
			<table style="margin: auto; margin-top: 10%;">
				<th colspan="2" style="font-size: 20px; padding: 10px;">회원가입</th>
				<tr>
					<td>
						<div
							style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">이름
						</div>
					</td>
					<td><input type="text" name="name" style="width: 180px;" /></td>
				</tr>
				<tr>
					<td>
						<div
							style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">이메일
						</div>
					</td>
					<td><input type="email" name="email" style="width: 180px;" /></td>
				</tr>
				<tr>
					<td>
						<div
							style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">비밀번호
						</div>
					</td>
					<td><input type="password" name="password"
						style="width: 180px;" /></td>
				</tr>
				<td colspan="2" style="text-align: center;"><input
					type="submit" value="회원가입" style="width: 80px;"></td>
			</table>
		</div>
	</div>
	<%
	BigDecimal transfer_num = new BigDecimal(request.getParameter("transfer_num"));
	System.out.println(transfer_num);
	%>
	<div class="dark">
		<div class="second-page-heading">
			<div class="container">
				<div class="more-info reservation-info">
					<div class="container">

						<table class="table" style="text-align: left; width: 80%;">

							<tr style="text-align: center;">
								<td colspan="2"></td>
							</tr>

							<tr>
								<td style="width: 300px;">양도자 아이디:</td>
								<td style="width: 300px;"><%=new TransferDAO().transfer_show(transfer_num).getTransfer_id()%></td>
							</tr>
							<tr>
								<td style="width: 300px;">장소 명:</td>
								<td style="width: 300px;"><%=new GlampingDAO().transfer_num_glamping_show(transfer_num).getGc_name()%></td>
							</tr>
							<tr>
								<td style="width: 300px;">장소 유형:</td>
								<td style="width: 300px;"><%=new GlampingDAO().transfer_num_glamping_show(transfer_num).getGc_type()%></td>
							</tr>
							<tr>
								<td style="width: 300px;">양도 마감일:</td>
								<td style="width: 300px;"><%=new ReservationDAO().transfer_num_check_in(transfer_num).getCheck_in()%></td>
							</tr>
							<tr>
								<td style="width: 300px;">제시가격:</td>
								<td style="width: 300px;"><%=new TransferDAO().transfer_show(transfer_num).getOffer_price()%></td>
							</tr>

							<tr>
								<td style="width: 300px;">양도 사유:</td>
								<td style="width: 300px;"><%=new TransferDAO().transfer_show(transfer_num).getTransfer_reason()%></td>
							</tr>

						</table>
						<table class="table" style="text-align: left; width: 80%;">
							<tr>
								<td style="width: 300px;">기간:</td>
								<td style="width: 300px;"><%=new ReservationDAO().transfer_num_check_in(transfer_num).getCheck_in()%>
									~<%=new ReservationDAO().transfer_num_check_in(transfer_num).getCheck_out()%></td>
							</tr>
							<tr>
								<td style="width: 300px;">제한 인원:</td>
								<td style="width: 300px;"><%=new RoomDAO().transfer_num_room_show(transfer_num).getPeople_limit()%></td>
							</tr>

							<tr>
								<td style="width: 300px;">주소</td>
								<td style="width: 300px;"><%=new GlampingDAO().transfer_num_glamping_show(transfer_num).getGc_addr()%></td>
							</tr>
							<tr>
								<td style="width: 300px;">장소연락처</td>
								<td style="width: 300px;"><%=new GlampingDAO().transfer_num_glamping_show(transfer_num).getGc_tel()%>
								</td>
							</tr>
							<tr>
								<td style="width: 300px;">방이름</td>
								<td style="width: 300px;"><%=new RoomDAO().transfer_num_room_show(transfer_num).getRoom_num()%>
								</td>
							</tr>

						</table>
						<div class="noti" style="width: 80%;">
							<h5>공지사항</h5>

							<ul>
								<li>코로나로 인한 5인 이상 집합금지 지침때문에 한 사이트당 4인 이상 예약을 받지 않습니다.</li>
								<li>가족동반(다자녀 포함)으로 오는 경우에 한하여 예외 허용합니다.</li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</div>
						<div class="ti" style="width: 80%;">
							<br>
							<h5 class="ti-title">주의사항</h5>
							<ul>
								<li>1.캠핑장의 공지사항/유의사항 등을 숙지하지 않으시고 캠핑장에 입실하여 발생되는 사고 및 분쟁에
									대하여 땡큐캠핑은 책임사유가 없음을 알려 드립니다. (예 : 반려견 입장 불가/최대인원 제한/입,퇴실시간 준수
									등)</li>
								<li>2.양도 받은 예약건을 개인사유로 인하여 취소 시 캠핑장의 환불기준에 준하여 환불처리됨을 알려
									드립니다.</li>
								<li>3.양도자의 사기거래로 인하여 캠핑장에 입실을 못 하시는 경우, 해당여부를 파악하여
									예약양도결제금액에 한하여 전액취소처리가 가능합니다.</li>
								<li>4.캠핑장관리자의 예약관리 부주의로 인한 예약누락으로 인하여 캠핑을 하지 못하시는 경우의 관련처리
									및 환불 책임은 해당캠핑장에 있음을 알려 드립니다.</li>
							</ul>
						</div>

						<div class="check">
							<input type="checkbox" id="ch"> 캠핑장 공지사항을 확인했으며, 양도거래 유의
							사항에 동의합니다.
						</div>
						<button type="button" id="btnGo" class="btn btn-primary btn-sm"
							disabled="disabled">
							<a
								href="TransferChangeService?num=<%=new TransferDAO().transfer_show(transfer_num).getRc_num()%>&email=<%=info.getMb_email()%>">양도받기</a>
						</button>
					</div>
				</div>
			</div>
		</div>
		<footer>
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<p>
							Copyright © 2032 ze:a. All rights reserved. <br>Design: <a
								href="https://templatemo.com" target="_blank"
								title="free CSS templates">TemplateMo</a> Distribution: <a
								href="https://themewagon.com" target="_blank">ThemeWagon</a>
						</p>
					</div>
				</div>
			</div>
		</footer>
		<!-- Scripts -->
		<!-- Bootstrap core JavaScript -->
		<!-- 	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script> -->
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="assets/js/isotope.min.js"></script>
		<script src="assets/js/owl-carousel.js"></script>
		<script src="assets/js/wow.js"></script>
		<script src="assets/js/tabs.js"></script>
		<script src="assets/js/popup.js"></script>
		<script src="assets/js/custom.js"></script>
		<script>
			$(document).ready(function() {
				/* $("#btnGo").click(
						function() {
							window.open("check.html", "양도최종",
									"width=300,height=250", true);
						}); */
				$("#ch").on('click', function() {
					//alert($("#btnGo").attr("disabled")=="disabled");
					if ($("#btnGo").attr("disabled") == "disabled") {
						$("#btnGo").attr("disabled", false);
					} else {
						$("#btnGo").attr("disabled", true);
					}
				});
			});
		</script>
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
				if (modal.style.opacity == "0") {
					// mainCaption.style.opacity ="0";
					slidercon.style.opacity = "0";
					modal.style.opacity = "1";
					modal.style.display = "block"
					modalBtn.textContent = "닫기"
				} else {
					// mainCaption.style.opacity ="1";
					slidercon.style.opacity = "1";
					modal.style.opacity = "0";
					modal.style.display = "none";
					modalBtn.textContent = "로그인";
				}
			}
		</script>
</body>
</html>