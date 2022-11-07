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
<!--

TemplateMo 580 Woox Travel

https://templatemo.com/tm-580-woox-travel

-->
</head>

<body>

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
						<h4>Book Prefered Deal Here</h4>
						<h2>Make Your Reservation</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt uttersi labore et dolore magna
							aliqua is ipsum suspendisse ultrices gravida</p>
						<div class="main-button">
							<a href="about.jsp">Discover More</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="more-info reservation-info">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-sm-6">
						<div class="info-item">
							<i class="fa fa-phone"></i>
							<h4>Make a Phone Call</h4>
							<a href="#">+123 456 789 (0)</a>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6">
						<div class="info-item">
							<i class="fa fa-envelope"></i>
							<h4>Contact Us via Email</h4>
							<a href="#">company@email.com</a>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6">
						<div class="info-item">
							<i class="fa fa-map-marker"></i>
							<h4>Visit Our Offices</h4>
							<a href="#">24th Street North Avenue London, UK</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="reservation-form">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div id="map">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12469.776493332698!2d-80.14036379941481!3d25.907788681148624!2m3!1f357.26927939317244!2f20.870722720054623!3f0!3m2!1i1024!2i768!4f35!3m3!1m2!1s0x88d9add4b4ac788f%3A0xe77469d09480fcdb!2sSunny%20Isles%20Beach!5e1!3m2!1sen!2sth!4v1642869952544!5m2!1sen!2sth"
								width="100%" height="450px" frameborder="0"
								style="border: 0; border-top-left-radius: 23px; border-top-right-radius: 23px;"
								allowfullscreen=""></iframe>
						</div>
					</div>
					<div class="col-lg-12">
						<form id="reservation-form" name="gs" method="submit"
							role="search" action="#">
							<div class="row">
								<div class="col-lg-12">
									<h4>
										Make Your <em>Reservation</em> Through This <em>Form</em>
									</h4>
								</div>
								<div class="col-lg-6">
									<fieldset>
										<label for="Name" class="form-label">Your Name</label> <input
											type="text" name="Name" class="Name"
											placeholder="Ex. John Smithee" autocomplete="on" required>
									</fieldset>
								</div>
								<div class="col-lg-6">
									<fieldset>
										<label for="Number" class="form-label">Your Phone
											Number</label> <input type="text" name="Number" class="Number"
											placeholder="Ex. +xxx xxx xxx" autocomplete="on" required>
									</fieldset>
								</div>
								<div class="col-lg-6">
									<fieldset>
										<label for="chooseGuests" class="form-label">Number Of
											Guests</label> <select name="Guests" class="form-select"
											aria-label="Default select example" id="chooseGuests"
											onChange="this.form.click()">
											<option selected>ex. 3 or 4 or 5</option>
											<option type="checkbox" name="option1" value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4+">4+</option>
										</select>
									</fieldset>
								</div>
								<div class="col-lg-6">
									<fieldset>
										<label for="Number" class="form-label">Check In Date</label> <input
											type="date" name="date" class="date" required>
									</fieldset>
								</div>
								<div class="col-lg-12">
									<fieldset>
										<label for="chooseDestination" class="form-label">Choose
											Your Destination</label> <select name="Destination"
											class="form-select" aria-label="Default select example"
											id="chooseCategory" onChange="this.form.click()">
											<option selected>ex. Switzerland, Lausanne</option>
											<option value="Italy, Roma">Italy, Roma</option>
											<option value="France, Paris">France, Paris</option>
											<option value="Engaland, London">Engaland, London</option>
											<option value="Switzerland, Lausanne">Switzerland,
												Lausanne</option>
										</select>
									</fieldset>
								</div>
								<div class="col-lg-12">
									<fieldset>
										<button class="main-button">Make Your Reservation Now</button>
									</fieldset>
								</div>
							</div>
						</form>
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
	</script>
	<script>
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
