<%@page import="com.smhrd.model.RoomDAO"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.RoomDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.ItemDTO"%>
<%@page import="com.smhrd.model.ItemDAO"%>
<%@page import="com.smhrd.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar"%>

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
	height: 34rem;
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
</style>


</head>


<body>
	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	int num = Integer.parseInt(request.getParameter("num"));

	System.out.println(num);
	ItemDAO dao = new ItemDAO();
	ItemDTO item = dao.showDetail(num);
	System.out.print(item);
	System.out.print("item" + item.getNum());
	%>

	<%
	/* 	ArrayList<RoomDTO> room_list = new RoomDAO().showroom(num);
	 */
	/* 	String[][] day = new String[30][room_list.size()]; */

	/* for (int i = 1; i <= 31; i++) {
		for (int j = 0; j < room_list.size(); j++) {
			day[i][j] = room_list.get(j).getRoom_name();
		}
	}

	System.out.println(day.length); */

	RoomDAO roomdao = new RoomDAO();
	BigDecimal gc_num = item.getNum();
	ArrayList<RoomDTO> roomList = roomdao.room_select(gc_num);
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
							<li><a href="about.jsp" class="active">글램핑&카라반</a></li>
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
					</div>
				</div>
			</div>
		</div>


		<div class="cities-town"
			style="display: inline-block; margin-left: 350px;">
			<div class="container">
				<div class="row">
					<div class="slider-content" style="width: 1200px;">
						<div class="row" style="display: block;">
							<div class="col-lg-12"
								style="padding: 8px; margin-bottom: 8px; background-color: #fff;">
								<div class='rap'>
									<!-- 사진보기 -->
									<div id="galleryGo">
										<div class="user_reg"></div>
										<div class="photo_gallery">
											<!-- 공사 사진 영역 -->
											<div
												class="swiper-container swiper-container-initialized swiper-container-horizontal"
												style="height: 300px;">
												<div class="swiper-wrapper" id="pImgList">
													<div class="swiper-slide swiper-slide-active"
														style="width: 500px; margin-right: 20px;">
														<img class="swiper-lazy swiper-lazy-loaded" alt="타요캠핑장  0"
															onclick="openPhotoView(0)"
															style="width: 100%; height: 100%; object-fit: contain;"
															src="assets/camping/333_1.jpg">
													</div>
													<div class="swiper-slide swiper-slide-next"
														style="width: 500px;">
														<img class="swiper-lazy swiper-lazy-loaded" alt="타요캠핑장  1"
															onclick="openPhotoView(1)"
															style="width: 100%; height: 100%; object-fit: contain;"
															src="assets/camping/333_2.jpg">
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- //사진보기 -->
							<div class="col-lg-12"
								style="margin-top: -250px; margin-left: 20px;">
								<div class='rap'>
									<h2 id="topTitle" style="font-size: 35px;"><%=item.getName()%></h2>
									<div class="area_address" id="topAddr"
										style="margin-top: 10px; font-size: 30px;">
										<span id="address"><%=item.getAddr()%></span><br> <span
											id="address"><%=item.getTel()%></span>

									</div>
								</div>
							</div>

							<div class="col-lg-12"
								style="margin-top: -300px; margin-left: 20px;">
								<div class='rap'>
									<h4>일정 선택하기</h4>
									<div class="header" style="margin-top: 30px;">
										<div class="btn prevDay"></div>
										<h2 id="yearMonth" class='dateTitle'></h2>
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

								<div style="margin: 20px; margin-left: 20px;">
									<div style="float: right;">
										<button id="datesearch"
											style="margin-top: 70px; margin-left: -410px; width: 110px; border-radius: 15px; color: white; font-size: 18px; font-weight: bold; background-color: #6A5ACD; padding: 12px; border: none;">날짜검색</button>
									</div>
									<form action="ReservationService?gc_num=<%=gc_num%>"
										method="post">

										<div style="float: left; margin-right: 20px;">
											<h4 style="padding: 10px;">체크인</h4>
											<h4>
												<input type="text" name=checkin id="checkin" value=""
													readonly style="padding: 10px;"></input>
											</h4>
										</div>
										<div style="float: left; margin-right: 20px;">
											<h4 style="padding: 10px;">체크아웃</h4>
											<h4>
												<input type="text" name=checkout id="checkout" value=""
													readonly style="padding: 10px;"></input>
											</h4>
										</div>
								</div>
							</div>

							<div class="col-lg-12"
								style="margin-top: 200px; margin-left: 20px;">
								<div class='rap'>
									<h4 style="margin-bottom: 30px;">방</h4>
									<select name="roomname">

										<%
										for (int i = 0; i < roomList.size(); i++) {
										%>
										<option value="<%=i + 1%>"><%=roomList.get(i).getRoom_name()%></option>
										<%
										}
										%>

									</select>

								</div>
							</div>
							<div class="col-lg-12"
								style="margin-top: -400px; margin-bottom: -250px; margin-left: 20px;">
								<div class='rap'>
									<h4 style="margin-bottom: 30px;">객실 인원</h4>
									<fieldset>
										<div style="padding: 10px;">
											<h4 style="font-size: 15px;">성인</h4>
											<select name="Guests_adult" class="form-select"
												aria-label="Default select example" id="chooseGuests"
												onChange="this.form.click()">
												<option selected>인원수</option>
												<option type="checkbox" name="option1" value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4+">4+</option>
											</select>
										</div>
										<div style="padding: 10px;">
											<h4 style="font-size: 15px;">아이</h4>
											<select name="Guests_kid" class="form-select"
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

						<div style="text-align: center;">
							<input id="submit" type="submit" value="예약"
								style="width: 200px; border-radius: 15px; color: white; font-size: 18px; font-weight: bold; background-color: #6A5ACD; padding: 12px; border: none;" />
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
						Copyright © 2022 <a href="#">ze:a</a> Company. All rights
						reserved.
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
  htmlDummy += `<div id="#b${i}" onclick="tag_filter(this)">${i}</div>`;
/*   `let arr${i}=[]`; */
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


	<!-- 날짜선택 -->
	<script>
		

		let day=[];
function tag_filter(id){
	let value;
			
			let id_class = $(id).attr("class");
			
			let month;
			var num;
			
		
			let input;
			
			if((id.style.backgroundColor == "white" ) && day.length < 2){
				id.style.backgroundColor ="yellow";
				
				
				
				month =document.querySelector(`.dateTitle`).innerText;
				month_num = ((month.split("년 ")[1]).split("월")[0]);
				
				
				value = id.textContent;

				let ok = month_num+ value;
				
				console.log(ok);
				day.push(ok);
				console.log("푸쉬완료"); 
				
				}
			else{
				id.style.backgroundColor ="white";
				month =document.querySelector(`.dateTitle`).innerText;
				month_num = ((month.split("년 ")[1]).split("월")[0]);
				value=id.textContent;
				let ok = month_num+value;
				for(var i=0;i< day.length;i++){
					if(day[i] === ok){
						day.splice(i,ok);
						i--;
						}
					}
			}
			
				
}
			
		</script>

	<script>

						document.getElementById("datesearch").onclick=function(){
							let min=parseInt(day[0]);
							let max=parseInt(day[0]);
							
							console.log("min");
							console.log("max");
							
							for(var i=1;i<day.length;i++){
								if(min>parseInt(day[i])){
									min=parseInt(day[i]);
								}
							}
							
							for(var i=0;i<day.length;i++){
								if(max<parseInt(day[i])){
									max=parseInt(day[i]);
								}
							}
							
							console.log(min);
							console.log(max);
							
							document.getElementById("checkin").textContent=min;
							document.getElementById("checkout").textContent=max;
							$('input[name=checkin]').attr('value',min);
							$('input[name=checkout]').attr('value',max);
					
							
						};
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
