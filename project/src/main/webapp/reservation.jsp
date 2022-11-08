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



<html>
<head>
<title>:: JavaScript 캘린더 ::</title>
<style type="text/css">
a {
	color: #000000;
	text-decoration: none;
}

.scriptCalendar {
	text-align: center;
}

.scriptCalendar>thead>tr>td {
	width: 50px;
	height: 50px;
}

.scriptCalendar>thead>tr:first-child>td {
	font-weight: bold;
}

.scriptCalendar>thead>tr:last-child>td {
	background-color: #90EE90;
}

.scriptCalendar>tbody>tr>td {
	width: 50px;
	height: 50px;
}
</style>
<script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function() {
		buildCalendar();
	});

	var today = new Date(); // @param 전역 변수, 오늘 날짜 / 내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
	var date = new Date(); // @param 전역 변수, today의 Date를 세어주는 역할

	/**
	 * @brief   이전달 버튼 클릭
	 */
	function prevCalendar() {
		this.today = new Date(today.getFullYear(), today.getMonth() - 1, today
				.getDate());
		buildCalendar(); // @param 전월 캘린더 출력 요청
	}

	/**
	 * @brief   다음달 버튼 클릭
	 */
	function nextCalendar() {
		this.today = new Date(today.getFullYear(), today.getMonth() + 1, today
				.getDate());
		buildCalendar(); // @param 명월 캘린더 출력 요청
	}

	/**
	 * @brief   캘린더 오픈
	 * @details 날짜 값을 받아 캘린더 폼을 생성하고, 날짜값을 채워넣는다.
	 */
	function buildCalendar() {

		let doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
		let lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);

		let tbCalendar = document.querySelector(".scriptCalendar > tbody");

		document.getElementById("calYear").innerText = today.getFullYear(); // @param YYYY월
		document.getElementById("calMonth").innerText = autoLeftPad((today
				.getMonth() + 1), 2); // @param MM월

		// @details 이전 캘린더의 출력결과가 남아있다면, 이전 캘린더를 삭제한다.
		while (tbCalendar.rows.length > 0) {
			tbCalendar.deleteRow(tbCalendar.rows.length - 1);
		}

		// @param 첫번째 개행
		let row = tbCalendar.insertRow();

		// @param 날짜가 표기될 열의 증가값
		let dom = 1;

		// @details 시작일의 요일값( doMonth.getDay() ) + 해당월의 전체일( lastDate.getDate())을  더해준 값에서
		//               7로 나눈값을 올림( Math.ceil() )하고 다시 시작일의 요일값( doMonth.getDay() )을 빼준다.
		let daysLength = (Math
				.ceil((doMonth.getDay() + lastDate.getDate()) / 7) * 7)
				- doMonth.getDay();

		// @param 달력 출력
		// @details 시작값은 1일을 직접 지정하고 요일값( doMonth.getDay() )를 빼서 마이너스( - )로 for문을 시작한다.
		for (let day = 1 - doMonth.getDay(); daysLength >= day; day++) {

			let column = row.insertCell();

			// @param 평일( 전월일과 익월일의 데이터 제외 )
			if (Math.sign(day) == 1 && lastDate.getDate() >= day) {

				// @param 평일 날짜 데이터 삽입

				column.innerText = autoLeftPad(day, 2);

				// @param 일요일인 경우
				if (dom % 7 == 1) {
					column.style.color = "#FF4D4D";
				}

				// @param 토요일인 경우
				if (dom % 7 == 0) {
					column.style.color = "#4D4DFF";
					row = tbCalendar.insertRow(); // @param 토요일이 지나면 다시 가로 행을 한줄 추가한다.
				}

			}

			// @param 평일 전월일과 익월일의 데이터 날짜변경
			else {
				let exceptDay = new Date(doMonth.getFullYear(), doMonth
						.getMonth(), day);
				column.innerText = autoLeftPad(exceptDay.getDate(), 2);
				column.style.color = "#A9A9A9";
			}

			// @brief   전월, 명월 음영처리
			// @details 현재년과 선택 년도가 같은경우
			if (today.getFullYear() == date.getFullYear()) {

				// @details 현재월과 선택월이 같은경우
				if (today.getMonth() == date.getMonth()) {

					// @details 현재일보다 이전인 경우이면서 현재월에 포함되는 일인경우
					if (date.getDate() > day && Math.sign(day) == 1) {
						column.style.backgroundColor = "#E5E5E5";
					}

					// @details 현재일보다 이후이면서 현재월에 포함되는 일인경우
					else if (date.getDate() < day && lastDate.getDate() >= day) {
						column.style.backgroundColor = "#FFFFFF";
						column.style.cursor = "pointer";
						column.onclick = function() {
							calendarChoiceDay(this);
						}
					}

					// @details 현재일인 경우
					else if (date.getDate() == day) {
						column.style.backgroundColor = "#FFFFE6";
						column.style.cursor = "pointer";
						column.onclick = function() {
							calendarChoiceDay(this);
						}
					}

					// @details 현재월보다 이전인경우
				} else if (today.getMonth() < date.getMonth()) {
					if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
						column.style.backgroundColor = "#E5E5E5";
					}
				}

				// @details 현재월보다 이후인경우
				else {
					if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
						column.style.backgroundColor = "#FFFFFF";
						column.style.cursor = "pointer";
						column.onclick = function() {
							calendarChoiceDay(this);
						}
					}
				}
			}

			// @details 선택한년도가 현재년도보다 작은경우
			else if (today.getFullYear() < date.getFullYear()) {
				if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
					column.style.backgroundColor = "#E5E5E5";
				}
			}

			// @details 선택한년도가 현재년도보다 큰경우
			else {
				if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
					column.style.backgroundColor = "#FFFFFF";
					column.style.cursor = "pointer";
					column.onclick = function() {
						calendarChoiceDay(this);
					}
				}
			}

			dom++;

		}
	}

	/**
	 * @brief   날짜 선택
	 * @details 사용자가 선택한 날짜에 체크표시를 남긴다.
	 */
	function calendarChoiceDay(column) {

		// @param 기존 선택일이 존재하는 경우 기존 선택일의 표시형식을 초기화 한다.
		if (document.getElementsByClassName("choiceDay")[0]) {
			document.getElementsByClassName("choiceDay")[0].style.backgroundColor = "#FFFFFF";
			document.getElementsByClassName("choiceDay")[0].classList
					.remove("choiceDay");
		}

		// @param 선택일 체크 표시
		column.style.backgroundColor = "#FF9999";

		// @param 선택일 클래스명 변경
		column.classList.add("choiceDay");
	}

	/**
	 * @brief   숫자 두자릿수( 00 ) 변경
	 * @details 자릿수가 한자리인 ( 1, 2, 3등 )의 값을 10, 11, 12등과 같은 두자리수 형식으로 맞추기위해 0을 붙인다.
	 * @param   num     앞에 0을 붙일 숫자 값
	 * @param   digit   글자의 자릿수를 지정 ( 2자릿수인 경우 00, 3자릿수인 경우 000 … )
	 */
	function autoLeftPad(num, digit) {
		if (String(num).length < digit) {
			num = new Array(digit - String(num).length + 1).join("0") + num;
		}
		return num;
	}
</script>
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
						<form id="search-form" name="gs" method="submit" role="search"
							action="#">

							<div class="topArea">
								<div class="topInner">
									<h2 class="titDep1">예약</h2>
									<br>
									<div class="col-lg-12">
										<li class=""><strong class="listTit">투숙기간 선택</strong><br>
											<em class="intValue" id="dateText">
												<table class="scriptCalendar">
													<thead>
														<tr>
															<td onClick="prevCalendar();" style="cursor: pointer;">&#60;&#60;</td>
															<td colspan="5"><span id="calYear">YYYY</span>년 <span
																id="calMonth">MM</span>월</td>
															<td onClick="nextCalendar();" style="cursor: pointer;">&#62;&#62;</td>
														</tr>
														<tr>
															<td>일</td>
															<td>월</td>
															<td>화</td>
															<td>수</td>
															<td>목</td>
															<td>금</td>
															<td>토</td>
														</tr>
													</thead>
													<tbody></tbody>
												</table>
									</div>
									</button>


									<footer>
										<div class="container">
											<div class="row">
												<div class="col-lg-12">
													<p>
														Copyright © 2036 <a href="#">WoOx Travel</a> Company. All
														rights reserved. <br>Design: <a
															href="https://templatemo.com" target="_blank"
															title="free CSS templates">TemplateMo</a> Distribution: <a
															href="https://themewagon.com target="_blank" >ThemeWagon</a>
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
											let modal = document
													.querySelector(".modalPopup");
											let modalBtn = document
													.querySelector(".modalBtn");
											// let mainCaption = document.querySelector(".main-caption")
											let slidercon = document
													.querySelector(".dark")
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
