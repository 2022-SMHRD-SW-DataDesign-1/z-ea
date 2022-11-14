<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.GlampingDTO"%>
<%@page import="com.smhrd.model.GlampingDAO"%>
<%@page import="com.smhrd.model.RoomDTO"%>
<%@page import="com.smhrd.model.RoomDAO"%>
<%@page import="com.smhrd.model.ReservationDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.ReservationDAO"%>
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
							<li><a href="reservation.jsp" class="active">예약</a></li>
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
	<div class="second-page-heading" style="height: 100px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2>예약 정보 조회</h2>
					<div class="main-button">
						<a href="MyPage.jsp">BACK</a>

					</div>
				</div>
			</div>
		</div>
	</div>
	<%
	ArrayList<ReservationDTO> re_list = new ReservationDAO().my_re_show(info.getMb_email());
	ArrayList<RoomDTO> ro_list = new RoomDAO().my_room_show(info.getMb_email());
	
	System.out.println(re_list.size());
	System.out.println(ro_list.size());

	%>
	<%
	if (info != null) {
	%>
	<div class="reservation-form">
		<div class="row" style="margin-bottom: 40px; text-align: center;">
			<div class="col-lg-12" >
				<form id="reservation-form" name="gs" method="submit" role="search"
					action="#">

					<div class="row">
						<h4>예약정보조회</h4>
				</form>
				<%
				
				for (int i = 0; i < re_list.size(); i++) {
					GlampingDTO gl_list = new GlampingDAO().my_glamping_show((re_list.get(i).getGc_num()));
				%>
				<!-- 이름 -->
				<div  style="margin-bottom: 40px;">
					<p>예약정보<%=i+1 %></p><br>
					<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label">이용자이메일</label>
							<div type="text" name="mb_name" class="Name" placeholder="name"
								autocomplete="on" required><%=re_list.get(i).getMb_email()%></div>
						</fieldset>
					</div>
					 <div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label">장소유형</label>
						
							<div type="text" name="mb_name" class="Name" placeholder="name"
								autocomplete="on" required><%=gl_list.getGc_type()%></div>
							

							
						</fieldset>
					</div>
				<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label">장소명</label>
						
							<div type="text" name="mb_name" class="Name" placeholder="name"
								autocomplete="on" required><%=gl_list.getGc_name()%></div>
						
						</fieldset>
					</div>
					<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label">장소연락처</label>
	
							<div type="text" name="mb_name" class="Name" placeholder="name"
								autocomplete="on" required><%=gl_list.getGc_tel()%></div>
						
						</fieldset>
					</div>
					<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label">장소주소</label>
							<div type="text" name="mb_name" class="Name" placeholder="name"
								autocomplete="on" required><%=gl_list.getGc_addr()%></div>
						
						</fieldset>
					</div>
					<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label">장소시설</label>
							<div type="text" name="mb_name" class="Name" placeholder="name"
								autocomplete="on" required><%=gl_list.getGc_facilities()%></div>
						</fieldset>
					</div>
					<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label">장소부가시설</label>
							<div type="text" name="mb_name" class="Name" placeholder="name"
								autocomplete="on" required><%=gl_list.getGc_Ad_facilities()%></div>
						</fieldset>
					</div>
					<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label">가격</label>
							<div type="text" name="mb_name" class="Name" placeholder="name"
								autocomplete="on" required><%=gl_list.getGc_price()%></div>
						</fieldset>
					</div>

					<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label">방이름</label>
							<div type="text" name="mb_name" class="Name" placeholder="name"
								autocomplete="on" required><%=re_list.get(i).getRoom_num()%></div>
						</fieldset>
					</div>
			
					<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label">체크인</label>
							<div type="text" name="mb_name" class="Name" placeholder="name"
								autocomplete="on" required><%=re_list.get(i).getCheck_in()%></div>
						</fieldset>
					</div>
					<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label">체크 아웃</label>
							<div type="text" name="mb_name" class="Name" placeholder="name"
								autocomplete="on" required><%=re_list.get(i).getCheck_out()%></div>
						</fieldset>
					</div>
				</div><hr/>
				<%
				}
				%>
			</div>
		</div>
	</div>
	<%
	}
	%>
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
