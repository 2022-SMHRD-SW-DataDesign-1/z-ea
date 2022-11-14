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
/* 달력 */
.rap {
	max-width: 820px;
	padding: 0 1.4rem;
	margin-top: 3rem;
	height: 35rem;
}

.dateHead {
	margin-bottom: .4rem;
}

.dateHead div {
	background: darkslateblue;
	color: #fff;
	text-align: center;
}

.grid {
	display: grid;
	grid-template-columns: repeat(7, 1fr);
	grid-gap: 5px;
}

.grid div {
	padding: .6rem;
	font-size: .9rem;
	cursor: pointer;
}

.dateBoard div {
	color: #222;
	font-weight: bold;
	height: 50px;
	padding: .6rem .8rem;
	border-radius: .6rem;
	border: 1px solid #eee;
	background-color: white;
}

.noColor {
	background: #eee;
}

.header {
	display: flex;
	justify-content: space-between;
	padding: 1rem 2rem;
}

.btn {
	display: block;
	width: 20px;
	height: 20px;
	border: 3px solid #000;
	border-width: 3px 3px 0 0;
	cursor: pointer;
}

.prevDay {
	transform: rotate(-135deg);
}

.nextDay {
	transform: rotate(45deg);
}

/* ---- */
@import
	url("https://cdn.Sjsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css")
	;

* {
	margin: 0;
	padding: 0;
	list-style: none;
	box-sizing: border-box;
	font-family: Pretendard;
}
.second-page-heading {
	background-image: url(assets/images/배너사진할꼬얌.jpg);
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

	<div class="dark">
		<div class="second-page-heading">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h4>지금 바로 예약해보세요!</h4>
						<h2>예약하기</h2>
						<div class="main-button">
							<a href="index.jsp">홈으로 돌아가기</a>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="search-form">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class='rap'>
							<h4>일정 선택하기</h4>
							<div class="header" style="margin-top: 30px;">
								<div class="btn prevDay"></div>
								<h2 class='dateTitle'></h2>
								<div class="btn nextDay"></div>
							</div>

							<div class="grid dateHead" style="margin-top: 50px;">
								<div>일</div>
								<div>월</div>
								<div>화</div>
								<div>수</div>
								<div>목</div>
								<div>금</div>
								<div>토</div>
							</div>

							<div class="grid dateBoard" style="margin-top: 50px;"></div>
						</div>

						<div class="col-lg-12">
							<div class='rap'>
								<div class="camp-name-search">
									<h4 style="margin-bottom: 30px;">캠핑장 검색하기</h4>
									<div
										class="input-area d-flex align-items-center justify-content-center mx-auto">
										<img style="width: 30px; height: 30px;"
											src="https://static.campingtalk.me/local/images/icon/search/search.svg">
										<input id="searchText_-1" type="text"
											placeholder="클릭하여 검색하세요." class="text-center p-0"
											style="margin-left: 30px; padding: 30px; margin-right: 20px; width: 700px; height: 40px;">
										<ul aria-labelledby="searchText_-1"
											class="search-box-list border" style="display: none;"></ul>
									</div>
								</div>
							</div>

							<div class="col-lg-12" style="margin-top: -400px;">
								<div class='rap'>
									<h4 style="margin-bottom: 30px;">객실 인원</h4>
									<fieldset>
										<h4 style="font-size: 15px; padding: 10px;">성인</h4>
										<select name="Guests" class="form-select"
											aria-label="Default select example" id="chooseGuests"
											onChange="this.form.click()">
											<option selected>인원수</option>
											<option type="checkbox" name="option1" value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4+">4+</option>
										</select>
										<h4 style="font-size: 15px; padding: 10px;">아이</h4>
										<select name="Guests" class="form-select"
											aria-label="Default select example" id="chooseGuests"
											onChange="this.form.click()">
											<option selected>인원수</option>
											<option type="checkbox" name="option1" value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4+">4+</option>
										</select>
									</fieldset>
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


			<script>
//달력 생성
const makeCalendar = (date) => {
// 현재의 년도와 월 받아오기
const nowYear = new Date(date).getFullYear();
const nowMonth = new Date(date).getMonth() + 1;

// 한달전의 마지막 요일
const prevDay = new Date(nowYear, nowMonth - 1, 1).getDay();

// 현재 월의 마지막 날 구하기
const lastDay = new Date(nowYear, nowMonth, 0).getDate();

// 남은 박스만큼 다음달 날짜 표시
const limitDay = prevDay + lastDay;
const nextDay = Math.ceil(limitDay / 7) * 7;

let htmlDummy = '';

// 한달전 날짜 표시하기
for (let i = 0; i < prevDay; i++) {
  htmlDummy += `<div class="noColor"></div>`;
}

// 이번달 날짜 표시하기
for (let i = 1; i <= lastDay; i++) {    
  htmlDummy += `<div class="#b${i}" onclick="tag_filter(this)" onclick='getInnerText(this)'>${i}</div>`;
}

// 다음달 날짜 표시하기
for (let i = limitDay; i < nextDay; i++) {
  htmlDummy += `<div class="noColor"></div>`;
}

document.querySelector(`.dateBoard`).innerHTML = htmlDummy;
document.querySelector(`.dateTitle`).innerText = `${nowYear}년 ${nowMonth}월`;
}


const date = new Date();
makeCalendar(date);



//이전달 이동
document.querySelector(`.prevDay`).onclick = () => {
makeCalendar(new Date(date.setMonth(date.getMonth() - 1)));
}

//다음달 이동
document.querySelector(`.nextDay`).onclick = () => {
makeCalendar(new Date(date.setMonth(date.getMonth() + 1)));
}

</script>

			<script>
function tag_filter(id){
	let value;
			
			if(id.style.backgroundColor == "white"){
			id.style.backgroundColor ="yellow";
			value = id.textContent;
			console.log(value);
			/* $.ajax({
				url : 'Filter',  //요청 서버 url
				data : {'inputE': inputE},	//요청할 때 같이 보내줄 데이터
				type : 'get', 				//요청 타입(method)
				success : function(data){	//통신성공 (function(넘겨준데이터))
					res=data;
			console.log(res);
				},
				error : function(){			//통신실패
					console.log("통신실패");
				}
			}) */

			}else {
				id.style.backgroundColor = "white";
				value = "";
			}
			
			}
		</script>


			<!-- Bootstrap core JavaScript -->
			<script src="vendor/jquery/jquery.min.js"></script>
			<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
			<script src="assets/js/isotope.min.js"></script>
			<script src="assets/js/owl-carousel.js"></script>
			<script src="assets/js/wow.js"></script>
			<script src="assets/js/tabs.js"></script>
			<script src="assets/js/popup.js"></script>
			<script src="assets/js/custom.js"></script>
</body>

</html>
