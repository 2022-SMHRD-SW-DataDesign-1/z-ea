<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
							<li><a href="index.jsp" class="active">홈</a></li>
							<li><a href="about.jsp">글램핑&카라반</a></li>
							<li><a href="deals.jsp">예약</a></li>
							<li><a href="reservation.jsp">양도</a></li>
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
	<%
	String name = request.getParameter("name");
	int num = Integer.parseInt(request.getParameter("num"));
	%>
	<%
	if (name.equals("댓글")) {
	%>
	<!-- ***** Header Area End ***** -->
	<div class="second-page-heading" style="height: 100px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2><%=name%>수정
					</h2>
					<div class="main-button">
						<a href="comment_review.jsp">BACK</a>

					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="reservation-form">
		<div class="row" style="margin-bottom: 40px;">
			<div class="col-lg-12">
				<form id="reservation-form" name="gs" method="submit" role="search"
					action="#">

					<div class="row">

						<h4><%=name%>수정
						</h4>
				</form>
				<!-- 이름 -->
				<form action="CommentUpdateService?num=<%=num%>" method="post"
					style="margin-bottom: 40px;">
					<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label"><%=name%> 내용</label><br>
							<input type="text" name="comment_content" class="Name"
								placeholder="내용" autocomplete="on" required>
						</fieldset>
					</div>

					<div class="col-lg-12">
						<fieldset>
							<button type="submit" class="main-button">Save</button>
						</fieldset>
					</div>
				</form>
			</div>
		</div>
	</div>


	<%
	} else if (name.equals("리뷰")) {
	%>
	<div class="second-page-heading" style="height: 100px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2><%=name%>
						수정
					</h2>
					<div class="main-button">
						<a href="comment_review.jsp">BACK</a>

					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="reservation-form">
		<div class="row" style="margin-bottom: 40px;">
			<div class="col-lg-12">
				<form id="reservation-form" name="gs" method="submit" role="search"
					action="#">

					<div class="row">

						<h4><%=name%>정보
						</h4>
				</form>
				<form action="ReviewUpdateService?num=<%=num%>" method="post"
					style="margin-bottom: 40px;">
					<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label"><%=name%> 내용</label><br>
							<input type="text" name="review_content" class="Name"
								placeholder="내용" autocomplete="on" required>
						</fieldset>
					</div>
					<div class="col-lg-6">
						<fieldset>
							<label for="Number" class="form-label"><%=name%> 점수</label> <input
								type="text" name="score" class="Number" placeholder="점수">
						</fieldset>
					</div>
					<div class="col-lg-12">
						<fieldset>
							<button type="submit" class="main-button">Save</button>
						</fieldset>
					</div>
				</form>
			</div>
		</div>
	</div>

	<%
	} else if (name.equals("커뮤니티")) {
	%>
	<div class="second-page-heading" style="height: 100px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2><%=name%>수정
					</h2>
					<div class="main-button">
						<a href="comment_review.jsp">BACK</a>

					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="reservation-form">
		<div class="row" style="margin-bottom: 40px;">
			<div class="col-lg-12">
				<form id="reservation-form" name="gs" method="submit" role="search"
					action="#">

					<div class="row">

						<h4><%=name%>수정
						</h4>
				</form>
				<form action="CommunityUpdateService?num=<%=num%>" method="post"
					style="margin-bottom: 40px;" enctype="multipart/form-data">
					<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label"><%=name%> 제목</label><br>
							<input type="text" name="board_title" class="Name"
								placeholder="제목" autocomplete="on" required>
						</fieldset>
					</div>
					<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label"><%=name%> 내용</label><br>
							<input type="text" name="board_content" class="Name"
								placeholder="내용" autocomplete="on" required>
						</fieldset>
					</div>
					<div class="col-lg-6">
						<fieldset>
							<label for="Name" class="form-label"><%=name%> 첨부파일</label><br>
							<input type="file" name="board_file" class="Name"
								placeholder="파일" autocomplete="on" required>
						</fieldset>
					</div>
					<div class="col-lg-6">
						<fieldset>
							<label for="Number" class="form-label"><%=name%> 카테고리</label> <select
								name="board_category" class="name">
								<option value="#바다">바다</option>
								<option value="#산">산</option>
								<option value="#뷰">뷰</option>
								<option value="#감성">감성</option>
							</select>
						</fieldset>
					</div>
					<div class="col-lg-12">
						<fieldset>
							<button type="submit" class="main-button">Save</button>
						</fieldset>
					</div>
				</form>
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
