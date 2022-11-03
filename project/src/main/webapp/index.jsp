<%@page import="com.smhrd.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

  <title>WoOx Travel Bootstrap 5 Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Additional CSS Files -->
  <link rel="stylesheet" href="assets/css/fontawesome.css">
  <link rel="stylesheet" href="assets/css/templatemo-woox-travel.css">
  <link rel="stylesheet" href="assets/css/owl.css">
  <link rel="stylesheet" href="assets/css/animate.css">
  <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
  <!--

TemplateMo 580 Woox Travel

https://templatemo.com/tm-580-woox-travel

-->

</head>

<body>
<% MemberDTO info = (MemberDTO)session.getAttribute("info");%>

  <!-- ***** Preloader Start ***** -->
  <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
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
            <a href="index.jsp" class="logo">
              <img src="assets/images/짱구2.jpg" alt="">
            </a>
            <!-- ***** Logo End ***** -->
            <!-- ***** Menu Start ***** -->
            <ul class="nav">
              <li><a href="index.jsp" class="active">홈</a></li>
							<li><a href="about.jsp">테마</a></li>
							<li><a href="deals.jsp">예약</a></li>
							<li><a href="reservation.jsp">양도</a></li>
							<li><a href="community.jsp">커뮤니티</a></li>
              <%if(info == null){ %>
              <li>
                <button class="modalBtn" onclick="show()" style="background-color: #6A5ACD; padding: 8px 14px; border: none;
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

  <!-- ***** Main Banner Area Start ***** -->
  <section id="section-1">
    <div class="content-slider">
      <input type="radio" id="banner1" class="sec-1-input" name="banner" checked>
      <input type="radio" id="banner2" class="sec-1-input" name="banner">
      <input type="radio" id="banner3" class="sec-1-input" name="banner">
      <input type="radio" id="banner4" class="sec-1-input" name="banner">

      <div class="slider">
        <div class="main-caption" style="font-size: 20px;">
          <div style="margin-left: 10%;">검색어를 입력하세요</div>
          <form action="get">
            <input type="text" placeholder="#여행" style="width: 30%; height: 40px; border-radius:20px;" />
            <input type="submit" value="검색" />
          </form>
          <p>
            #여행 #먹방 #힐링 #키즈 
          </p>
        </div>

        <!-- 모달 -->
        <div class="modalPopup" style="display: none;">
          <div class="ModalBack" onclick
            style="position : fixed; background-color : black; width: 100%; height: 100%; opacity: 0.9; ">
          </div>
          <div class="LoginModal"
            style="text-align: center; background-color: white; width: 540px; height: 650px; margin-top: 10%; margin-left: 36%; position: fixed; align-content: center;">
            <!-- 로그인 -->
            <form action="LoginService" method="post">
            <table style="margin: auto; margin-top: 10%;">
              <th colspan="2" style="font-size: 20px; padding: 10px;">로그인</th>
              <tr>
                <td>
                  <div style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">이메일 </div>
                </td>
                <td><input type="email" name="mb_email" style="width: 180px;" /></td>
              </tr>
              <tr>
                <td>
                  <div style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">비밀번호 </div>
                </td>
                <td><input type="password" name="mb_pw" style="width: 180px;" /></td>
              </tr>
              <td colspan="2" style="text-align: center;"><input type="submit" value="로그인" style="width: 80px;"></td>
            </table>
            </form>
            <!-- 회원가입-->
            <form action="JoinService" method="post">
            <table style="margin: auto; margin-top: 10%;">
              <th colspan="2" style="font-size: 20px; padding: 10px;">회원가입</th>
              <tr>
                <td>
                  <div style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">이름 </div>
                </td>
                <td><input type="text" name="mb_name" style="width: 180px;" /></td>
              </tr>
              <tr>
                <td>
                  <div style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">이메일 </div>
                </td>
                <td><input type="email" name="mb_email" id="mb_email_ck" style="width: 180px;" /></td>
              </tr>
              <tr>
                <td colspan="2"><input type="button" value="email중복확인" onclick="checkE()"> </td>
              </tr>
              <tr>
              	<th colspan="2">
              	<span style="padding: 10px;" id="resultCheck"></span>
              	</th>
              </tr>
              <tr>
                <td>
                  <div style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">비밀번호 </div>
                </td>
                <td><input type="password" name="mb_pw" style="width: 180px;" /></td>
              </tr>
              <tr>
                <td>
                  <div style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">생년월일 </div>
                </td>
                <td><input type="date" name="mb_birthdate" style="width: 180px;" /></td>
              </tr>
              <tr>
                <td>
                  <div style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">전화번호 </div>
                </td>
                <td><input type="text" name="mb_phone" style="width: 180px;" /></td>
              </tr>
              <td colspan="2" style="text-align: center;"><input type="submit" value="회원가입" style="width: 80px;"></td>
            </table>
            </form>
          </div>
        </div>

        <div id="top-banner-1" class="banner">
          <div class="banner-inner-wrapper header-text">
            <div class="container">
              <div class="row">
                <div class="col-lg-12">
                  <div class="more-info">
                    <div class="row">
                      <div class="col-lg-3 col-sm-6 col-6">
                        <i class="fa fa-user"></i>
                        <h4><span>Population:</span><br>44.48 M</h4>
                      </div>
                      <div class="col-lg-3 col-sm-6 col-6">
                        <i class="fa fa-globe"></i>
                        <h4><span>Territory:</span><br>275.400 KM<em>2</em></h4>
                      </div>
                      <div class="col-lg-3 col-sm-6 col-6">
                        <i class="fa fa-home"></i>
                        <h4><span>AVG Price:</span><br>$946.000</h4>
                      </div>
                      <div class="col-lg-3 col-sm-6 col-6">
                        <div class="main-button">
                          <a href="about.jsp">Explore More</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="top-banner-2" class="banner">
          <div class="banner-inner-wrapper header-text">
            <div class="container">
              <div class="row">
                <div class="col-lg-12">
                  <div class="more-info">
                    <div class="row">
                      <div class="col-lg-3 col-sm-6 col-6">
                        <i class="fa fa-user"></i>
                        <h4><span>Population:</span><br>8.66 M</h4>
                      </div>
                      <div class="col-lg-3 col-sm-6 col-6">
                        <i class="fa fa-globe"></i>
                        <h4><span>Territory:</span><br>41.290 KM<em>2</em></h4>
                      </div>
                      <div class="col-lg-3 col-sm-6 col-6">
                        <i class="fa fa-home"></i>
                        <h4><span>AVG Price:</span><br>$1.100.200</h4>
                      </div>
                      <div class="col-lg-3 col-sm-6 col-6">
                        <div class="main-button">
                          <a href="about.jsp">Explore More</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="top-banner-3" class="banner">
          <div class="banner-inner-wrapper header-text">
            <div class="container">
              <div class="row">
                <div class="col-lg-12">
                  <div class="more-info">
                    <div class="row">
                      <div class="col-lg-3 col-sm-6 col-6">
                        <i class="fa fa-user"></i>
                        <h4><span>Population:</span><br>67.41 M</h4>
                      </div>
                      <div class="col-lg-3 col-sm-6 col-6">
                        <i class="fa fa-globe"></i>
                        <h4><span>Territory:</span><br>551.500 KM<em>2</em></h4>
                      </div>
                      <div class="col-lg-3 col-sm-6 col-6">
                        <i class="fa fa-home"></i>
                        <h4><span>AVG Price:</span><br>$425.600</h4>
                      </div>
                      <div class="col-lg-3 col-sm-6 col-6">
                        <div class="main-button">
                          <a href="about.jsp">Explore More</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="top-banner-4" class="banner">
          <div class="banner-inner-wrapper header-text">
            <div class="container">
              <div class="row">
                <div class="col-lg-12">
                  <div class="more-info">
                    <div class="row">
                      <div class="col-lg-3 col-sm-6 col-6">
                        <i class="fa fa-user"></i>
                        <h4><span>Population:</span><br>69.86 M</h4>
                      </div>
                      <div class="col-lg-3 col-sm-6 col-6">
                        <i class="fa fa-globe"></i>
                        <h4><span>Territory:</span><br>513.120 KM<em>2</em></h4>
                      </div>
                      <div class="col-lg-3 col-sm-6 col-6">
                        <i class="fa fa-home"></i>
                        <h4><span>AVG Price:</span><br>$165.450</h4>
                      </div>
                      <div class="col-lg-3 col-sm-6 col-6">
                        <div class="main-button">
                          <a href="about.jsp">Explore More</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <nav>
        <div class="controls">
          <label for="banner1"><span class="progressbar"><span class="progressbar-fill"></span></span><span
              class="text">1</span></label>
          <label for="banner2"><span class="progressbar"><span class="progressbar-fill"></span></span><span
              class="text">2</span></label>
          <label for="banner3"><span class="progressbar"><span class="progressbar-fill"></span></span><span
              class="text">3</span></label>
          <label for="banner4"><span class="progressbar"><span class="progressbar-fill"></span></span><span
              class="text">4</span></label>
        </div>
      </nav>
    </div>
  </section>
  <!-- ***** Main Banner Area End ***** -->

  <div class="visit-country">
    <div class="container">
      <div class="row">
       
      </div>
      <div class="row">
        <div class="col-lg-8">
          <div class="items">
            <div class="row">
              <div class="col-lg-12">
                <div class="item">
                  <div class="row">
                    <div class="col-lg-4 col-sm-5">
                      <div class="image">
                        <img src="assets/images/country-01.jpg" alt="">
                      </div>
                    </div>
                    <div class="col-lg-8 col-sm-7">
                      <div class="right-content">
                        <h4>SWITZERLAND</h4>
                        <span>Europe</span>
                        <div class="main-button">
                          <a href="about.jsp">Explore More</a>
                        </div>
                        <p>Woox Travel is a professional Bootstrap 5 theme HTML CSS layout for your website. You can use
                          this layout for your commercial work.</p>
                        <ul class="info">
                          <li><i class="fa fa-user"></i> 8.66 Mil People</li>
                          <li><i class="fa fa-globe"></i> 41.290 km2</li>
                          <li><i class="fa fa-home"></i> $1.100.200</li>
                        </ul>
                        <div class="text-button">
                          <a href="about.jsp">Need Directions ? <i class="fa fa-arrow-right"></i></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-12">
                <div class="item">
                  <div class="row">
                    <div class="col-lg-4 col-sm-5">
                      <div class="image">
                        <img src="assets/images/country-02.jpg" alt="">
                      </div>
                    </div>
                    <div class="col-lg-8 col-sm-7">
                      <div class="right-content">
                        <h4>CARIBBEAN</h4>
                        <span>North America</span>
                        <div class="main-button">
                          <a href="about.jsp">Explore More</a>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                          labore dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</p>
                        <ul class="info">
                          <li><i class="fa fa-user"></i> 44.48 Mil People</li>
                          <li><i class="fa fa-globe"></i> 275.400 km2</li>
                          <li><i class="fa fa-home"></i> $946.000</li>
                        </ul>
                        <div class="text-button">
                          <a href="about.jsp">Need Directions ? <i class="fa fa-arrow-right"></i></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-12">
                <div class="item last-item">
                  <div class="row">
                    <div class="col-lg-4 col-sm-5">
                      <div class="image">
                        <img src="assets/images/country-03.jpg" alt="">
                      </div>
                    </div>
                    <div class="col-lg-8 col-sm-7">
                      <div class="right-content">
                        <h4>FRANCE</h4>
                        <span>Europe</span>
                        <div class="main-button">
                          <a href="about.jsp">Explore More</a>
                        </div>
                        <p>We hope this WoOx template is useful for you, please support us a <a
                            href="https://paypal.me/templatemo" target="_blank">small amount of PayPal</a> to info [at]
                          templatemo.com for our survival. We really appreciate your contribution.</p>
                        <ul class="info">
                          <li><i class="fa fa-user"></i> 67.41 Mil People</li>
                          <li><i class="fa fa-globe"></i> 551.500 km2</li>
                          <li><i class="fa fa-home"></i> $425.600</li>
                        </ul>
                        <div class="text-button">
                          <a href="about.jsp">Need Directions ? <i class="fa fa-arrow-right"></i></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-12">
                <ul class="page-numbers">
                  <li><a href="#"><i class="fa fa-arrow-left"></i></a></li>
                  <li><a href="#">1</a></li>
                  <li class="active"><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#"><i class="fa fa-arrow-right"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="side-bar-map">
            <div class="row">
              <div class="col-lg-12">
                <div id="map">
                  <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12469.776493332698!2d-80.14036379941481!3d25.907788681148624!2m3!1f357.26927939317244!2f20.870722720054623!3f0!3m2!1i1024!2i768!4f35!3m3!1m2!1s0x88d9add4b4ac788f%3A0xe77469d09480fcdb!2sSunny%20Isles%20Beach!5e1!3m2!1sen!2sth!4v1642869952544!5m2!1sen!2sth"
                    width="100%" height="550px" frameborder="0" style="border:0; border-radius: 23px; "
                    allowfullscreen=""></iframe>
                </div>
              </div>
            </div>
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
          <p>Copyright © 2036 <a href="#">WoOx Travel</a> Company. All rights reserved.
            <br>Design: <a href="https://templatemo.com" target="_blank" title="free CSS templates">TemplateMo</a>
            Distribution: <a href="https://themewagon.com target=" _blank">ThemeWagon</a>
          </p>
        </div>
      </div>
    </div>
  </footer>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.js"></script>
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/jquery/jquery.slim.js"></script>
  <script src="vendor/jquery/jquery.slim.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="assets/js/isotope.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/wow.js"></script>
  <script src="assets/js/tabs.js"></script>
  <script src="assets/js/popup.js"></script>
  <script src="assets/js/custom.js"></script>

  <script>
    function bannerSwitcher() {
      next = $('.sec-1-input').filter(':checked').next('.sec-1-input');
      if (next.length) next.prop('checked', true);
      else $('.sec-1-input').first().prop('checked', true);
    }

    var bannerTimer = setInterval(bannerSwitcher, 5000);

    $('nav .controls label').click(function () {
      clearInterval(bannerTimer);
      bannerTimer = setInterval(bannerSwitcher, 5000)
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
	
	function checkE() {
		let mb_email_ck =$('#mb_email_ck').val();
		console.log(mb_email_ck);
		
		$.ajax({
			url : 'EmailCheckService', 
			data : {'mb_email_ck':mb_email_ck}, 
			type : 'get',
			success : function(data){ 
				console.log(data);
				
				if(data == 'true'){
					$('#resultCheck').text('사용할 수 없는 아이디')
				}else{ 
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

