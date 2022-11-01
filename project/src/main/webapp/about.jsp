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

<title>WoOx Travel - About Us</title>

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
							<li><a href="index.jsp" class="active">홈</a></li>
							<li><a href="about.jsp">테마</a></li>
							<li><a href="deals.jsp">예약</a></li>
							<li><a href="reservation.jsp">양도</a></li>
							<li><a href="reservation.jsp">커뮤니티</a></li>
							<li>
								<button class="modalBtn" onclick="show()"
									style="background-color: #6a5acd; padding: 8px 14px; border: none; color: #fff;">로그인</button>
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
<div class="modalPopup" style="display: none; z-index:50;">
          <div class="ModalBack" onclick
            style="position : fixed; background-color : black; width: 100%; height: 100%; opacity: 0.9; ">
          </div>
          <div class="LoginModal"
            style="text-align: center; background-color: white; width: 540px; height: 600px; margin-top: 10%; margin-left: 36%; position: fixed; align-content: center;">
            <!-- 로그인 -->
            <table style="margin: auto; margin-top: 10%;">
              <th colspan="2" style="font-size: 20px; padding: 10px; text-align: center;">로그인</th>
              <tr>
                <td>
                  <div style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">이메일 </div>
                </td>
                <td><input type="email" name="email" style="width: 180px;" /></td>
              </tr>
              <tr>
                <td>
                  <div style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">비밀번호 </div>
                </td>
                <td><input type="password" name="password" style="width: 180px;" /></td>
              </tr>
              <td colspan="2" style="text-align: center;"><input type="submit" value="로그인" style="width: 80px;"></td>
            </table>
            <!-- 회원가입-->
            <table style="margin: auto; margin-top: 10%;">
              <th colspan="2" style="font-size: 20px; padding: 10px; text-align: center;">회원가입</th>
              <tr>
                <td>
                  <div style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">이름 </div>
                </td>
                <td><input type="text" name="name" style="width: 180px;" /></td>
              </tr>
              <tr>
                <td>
                  <div style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">이메일 </div>
                </td>
                <td><input type="email" name="email" style="width: 180px;" /></td>
              </tr>
              <tr>
                <td>
                  <div style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">비밀번호 </div>
                </td>
                <td><input type="password" name="password" style="width: 180px;" /></td>
              </tr>
              <td colspan="2" style="text-align: center;"><input type="submit" value="회원가입" style="width: 80px;"></td>
            </table>
          </div>
        </div>

	<!-- ***** Main Banner Area Start ***** -->
	<div class="about-main-content">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="content">
						<div class="blur-bg"></div>
						<h4>EXPLORE OUR COUNTRY</h4>
						<div class="line-dec"></div>
						<h2>Welcome To Caribbean</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt uttersi labore et dolore magna
							aliqua is ipsum suspendisse ultrices gravida</p>
						<div class="main-button">
							<a href="reservation.jsp">Discover More</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ***** Main Banner Area End ***** -->

	<div class="cities-town">
		<div class="container">
			<div class="row">
				<div class="slider-content">
					<div class="row">
						<div class="col-lg-12">
							<h2>
								Caribbeanâs <em>Cities &amp; Towns</em>
							</h2>
						</div>
						<div class="col-lg-12">
							<div class="owl-cites-town owl-carousel">
								<div class="item">
									<div class="thumb">
										<img src="assets/images/cities-01.jpg" alt="">
										<h4>Havana</h4>
									</div>
								</div>
								<div class="item">
									<div class="thumb">
										<img src="assets/images/cities-02.jpg" alt="">
										<h4>Kingston</h4>
									</div>
								</div>
								<div class="item">
									<div class="thumb">
										<img src="assets/images/cities-03.jpg" alt="">
										<h4>George Town</h4>
									</div>
								</div>
								<div class="item">
									<div class="thumb">
										<img src="assets/images/cities-04.jpg" alt="">
										<h4>Santo Domingo</h4>
									</div>
								</div>
								<div class="item">
									<div class="thumb">
										<img src="assets/images/cities-01.jpg" alt="">
										<h4>Havana</h4>
									</div>
								</div>
								<div class="item">
									<div class="thumb">
										<img src="assets/images/cities-02.jpg" alt="">
										<h4>Kingston</h4>
									</div>
								</div>
								<div class="item">
									<div class="thumb">
										<img src="assets/images/cities-03.jpg" alt="">
										<h4>George Town</h4>
									</div>
								</div>
								<div class="item">
									<div class="thumb">
										<img src="assets/images/cities-04.jpg" alt="">
										<h4>Santo Domingo</h4>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="weekly-offers">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<div class="section-heading text-center">
						<h2>Best Weekly Offers In Each City</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="owl-weekly-offers owl-carousel">
						<div class="item">
							<div class="thumb">
								<img src="assets/images/offers-01.jpg" alt="">
								<div class="text">
									<h4>
										Havana<br> <span><i class="fa fa-users"></i> 234
											Check Ins</span>
									</h4>
									<h6>
										$420<br> <span>/person</span>
									</h6>
									<div class="line-dec"></div>
									<ul>
										<li>Deal Includes:</li>
										<li><i class="fa fa-taxi"></i> 5 Days Trip > Hotel
											Included</li>
										<li><i class="fa fa-plane"></i> Airplane Bill Included</li>
										<li><i class="fa fa-building"></i> Daily Places Visit</li>
									</ul>
									<div class="main-button">
										<a href="reservation.jsp">Make a Reservation</a>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="thumb">
								<img src="assets/images/offers-02.jpg" alt="">
								<div class="text">
									<h4>
										Kingston<br> <span><i class="fa fa-users"></i> 234
											Check Ins</span>
									</h4>
									<h6>
										$420<br> <span>/person</span>
									</h6>
									<div class="line-dec"></div>
									<ul>
										<li>Deal Includes:</li>
										<li><i class="fa fa-taxi"></i> 5 Days Trip > Hotel
											Included</li>
										<li><i class="fa fa-plane"></i> Airplane Bill Included</li>
										<li><i class="fa fa-building"></i> Daily Places Visit</li>
									</ul>
									<div class="main-button">
										<a href="reservation.jsp">Make a Reservation</a>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="thumb">
								<img src="assets/images/offers-03.jpg" alt="">
								<div class="text">
									<h4>
										George Town<br> <span><i class="fa fa-users"></i>
											234 Check Ins</span>
									</h4>
									<h6>
										$420<br> <span>/person</span>
									</h6>
									<div class="line-dec"></div>
									<ul>
										<li>Deal Includes:</li>
										<li><i class="fa fa-taxi"></i> 5 Days Trip > Hotel
											Included</li>
										<li><i class="fa fa-plane"></i> Airplane Bill Included</li>
										<li><i class="fa fa-building"></i> Daily Places Visit</li>
									</ul>
									<div class="main-button">
										<a href="reservation.jsp">Make a Reservation</a>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="thumb">
								<img src="assets/images/offers-01.jpg" alt="">
								<div class="text">
									<h4>
										Havana<br> <span><i class="fa fa-users"></i> 234
											Check Ins</span>
									</h4>
									<h6>
										$420<br> <span>/person</span>
									</h6>
									<div class="line-dec"></div>
									<ul>
										<li>Deal Includes:</li>
										<li><i class="fa fa-taxi"></i> 5 Days Trip > Hotel
											Included</li>
										<li><i class="fa fa-plane"></i> Airplane Bill Included</li>
										<li><i class="fa fa-building"></i> Daily Places Visit</li>
									</ul>
									<div class="main-button">
										<a href="reservation.jsp">Make a Reservation</a>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="thumb">
								<img src="assets/images/offers-02.jpg" alt="">
								<div class="text">
									<h4>
										Kingston<br> <span><i class="fa fa-users"></i> 234
											Check Ins</span>
									</h4>
									<h6>
										$420<br> <span>/person</span>
									</h6>
									<div class="line-dec"></div>
									<ul>
										<li>Deal Includes:</li>
										<li><i class="fa fa-taxi"></i> 5 Days Trip > Hotel
											Included</li>
										<li><i class="fa fa-plane"></i> Airplane Bill Included</li>
										<li><i class="fa fa-building"></i> Daily Places Visit</li>
									</ul>
									<div class="main-button">
										<a href="reservation.jsp">Make a Reservation</a>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="thumb">
								<img src="assets/images/offers-03.jpg" alt="">
								<div class="text">
									<h4>
										George Town<br> <span><i class="fa fa-users"></i>
											234 Check Ins</span>
									</h4>
									<h6>
										$420<br> <span>/person</span>
									</h6>
									<div class="line-dec"></div>
									<ul>
										<li>Deal Includes:</li>
										<li><i class="fa fa-taxi"></i> 5 Days Trip > Hotel
											Included</li>
										<li><i class="fa fa-plane"></i> Airplane Bill Included</li>
										<li><i class="fa fa-building"></i> Daily Places Visit</li>
									</ul>
									<div class="main-button">
										<a href="reservation.jsp">Make a Reservation</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="more-about">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 align-self-center">
					<div class="left-image">
						<img src="assets/images/about-left-image.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="section-heading">
						<h2>Discover More About Our Country</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore.</p>
					</div>
					<div class="row">
						<div class="col-lg-6">
							<div class="info-item">
								<h4>150.640 +</h4>
								<span>Total Guests Yearly</span>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="info-item">
								<h4>175.000+</h4>
								<span>Amazing Accomoditations</span>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="info-item">
								<div class="row">
									<div class="col-lg-6">
										<h4>12.560+</h4>
										<span>Amazing Places</span>
									</div>
									<div class="col-lg-6">
										<h4>240.580+</h4>
										<span>Different Check-ins Yearly</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
						do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit
						amet, consectetur adipiscing elit, sed do eiusmod tempor
						incididunt ut labore.</p>
					<div class="main-button">
						<a href="reservation.jsp">Discover More</a>
					</div>
				</div>
			</div>
		</div>
	</div>
   <!-- 모달 -->

	<div class="best-locations">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<div class="section-heading text-center">
						<h2>Best Locations In Caribbeans</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore.</p>
					</div>
				</div>
				<div class="col-lg-8 offset-lg-2">
					<div class="options">
						<div class="option active"
							style="-optionBackground: url(https://buttoncreatives.com/html/woox/assets/images/best-01.jpg);">
							<div class="shadow"></div>
							<div class="label">
								<div class="icon">
									<i class="fas fa-expand"></i>
								</div>
								<div class="info">
									<div class="main">Havana</div>
									<div class="sub">Population: 2M</div>
								</div>
							</div>
						</div>
						<div class="option"
							style="-optionBackground: url(https://buttoncreatives.com/html/woox/assets/images/best-02.jpg);">
							<div class="shadow"></div>
							<div class="label">
								<div class="icon">
									<i class="fas fa-expand"></i>
								</div>
								<div class="info">
									<div class="main">Kingston</div>
									<div class="sub">Population: 3.5M</div>
								</div>
							</div>
						</div>
						<div class="option"
							style="-optionBackground: url(https://buttoncreatives.com/html/woox/assets/images/best-03.jpg);">
							<div class="shadow"></div>
							<div class="label">
								<div class="icon">
									<i class="fas fa-expand"></i>
								</div>
								<div class="info">
									<div class="main">London</div>
									<div class="sub">Population: 4.1M</div>
								</div>
							</div>
						</div>
						<div class="option"
							style="-optionBackground: url(https://buttoncreatives.com/html/woox/assets/images/best-04.jpg);">
							<div class="shadow"></div>
							<div class="label">
								<div class="icon">
									<i class="fas fa-expand"></i>
								</div>
								<div class="info">
									<div class="main">Pristina</div>
									<div class="sub">Population: 520K</div>
								</div>
							</div>
						</div>
						<div class="option"
							style="-optionBackground: url(https://buttoncreatives.com/html/woox/assets/images/best-05.jpg);">
							<div class="shadow"></div>
							<div class="label">
								<div class="icon">
									<i class="fas fa-expand"></i>
								</div>
								<div class="info">
									<div class="main">Paris</div>
									<div class="sub">Population: 3M</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="main-button text-center">
						<a href="deals.jsp">Discover All Places</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="call-to-action">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<h2>Are You Looking To Travel ?</h2>
					<h4>Make A Reservation By Clicking The Button</h4>
				</div>
				<div class="col-lg-4">
					<div class="border-button">
						<a href="reservation.jsp">Book Yours Now</a>
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
						Copyright Â© 2036 <a href="#">WoOx Travel</a> Company. All rights
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
			 
		      let modal = document.querySelector(".modalPopup");
		      let modalBtn = document.querySelector(".modalBtn");
		      let mainCaption = document.querySelector(".main-caption")

		      if (modal.style.opacity == "0") {
		    	mainCaption.style.opacity ="0";
		        modal.style.opacity = "1";
		        modal.style.display = "block"
		        modalBtn.textContent = "닫기"
		      }

		      else {
		    	  mainCaption.style.opacity ="1";
		        modal.style.opacity = "0";
		        modal.style.display = "none";
		        modalBtn.textContent = "로그인";
		      }
		    }
	</script>

</body>

</html>
