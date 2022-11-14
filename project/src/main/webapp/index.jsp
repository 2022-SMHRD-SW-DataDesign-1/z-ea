<%@page import="java.io.File"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.ItemDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.ItemDAO"%>
<%@page import="com.smhrd.model.SurveyDTO2"%>
<%@page import="com.smhrd.model.SurveyDAO2"%>
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


	<!-- ***** Main Banner Area Start ***** -->
	<section id="section-1">
		<div class="content-slider">
			<input type="radio" id="banner1" class="sec-1-input" name="banner"
				checked> <input type="radio" id="banner2"
				class="sec-1-input" name="banner"> <input type="radio"
				id="banner3" class="sec-1-input" name="banner"> <input
				type="radio" id="banner4" class="sec-1-input" name="banner">

			<div class="slider">
				<div class="main-caption">
					<div style="margin-left: 10%; font-size: 25px">검색어를 입력하세요</div>
					<form action="SearchService" method="post">
						<input id="SearchEngine" type="text" placeholder="#여행" name="tag"
							style="width: 30%; height: 50px; border-radius: 20px; padding: 10px; margin: 5px;" />
						<input
							style="padding: 12px; border: none; border-radius: 15px; color: white; font-size: 18px; font-weight: bold; background-color: #6A5ACD;"
							type="submit" value="검색" />
					</form>
					<p style="margin-left: 10%;">#여행 #먹방 #힐링 #키즈</p>
				</div>
				<div class="modalPopup"
					style="z-index: 100; display: none; margin-top: 45px;">
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
									<td><input type="email" name="mb_email"
										style="width: 180px;" /></td>
								</tr>
								<tr>
									<td>
										<div
											style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">비밀번호
										</div>
									</td>
									<td><input type="password" name="mb_pw"
										style="width: 180px;" /></td>
								</tr>
								<td colspan="2" style="text-align: center;"><input
									type="submit" value="로그인"
									style="width: 80px; background-color: #6A5ACD; border: none; color: white; padding: 5px 5px 5px 5px; border-radius: 10px;"></td>
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
									<td><input type="text" name="mb_name"
										style="width: 180px;" /></td>
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
										style="background-color: #6A5ACD; border: none; color: white; margin-left: 20px; padding: 5px 5px 5px 5px; border-radius: 10px;"
										onclick="checkE()"></td>
								</tr>
								<tr>
									<th colspan="2"><span style="padding: 10px;"
										id="resultCheck"></span></th>
								</tr>
								<tr>
									<td>
										<div
											style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">비밀번호
										</div>
									</td>
									<td><input type="password" name="mb_pw"
										style="width: 180px;" /></td>
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
									<td><input type="text" name="mb_phone"
										style="width: 180px;" /></td>
								</tr>
								<td colspan="2" style="text-align: center;"><input
									type="submit" value="회원가입"
									style="width: 80px; background-color: #6A5ACD; border: none; color: white; padding: 5px 5px 5px 5px; border-radius: 10px;"></td>
							</table>
						</form>
					</div>
				</div>



				<!-- 모달 -->

				<div id="top-banner-1" class="banner">
					<div class="banner-inner-wrapper header-text">
						<div class="container"></div>
					</div>
				</div>
				<div id="top-banner-2" class="banner">
					<div class="banner-inner-wrapper header-text">
						<div class="container"></div>
					</div>
				</div>
				<div id="top-banner-3" class="banner">
					<div class="banner-inner-wrapper header-text"></div>
				</div>
				<div id="top-banner-4" class="banner">
					<div class="banner-inner-wrapper header-text">
						<div class="container"></div>
					</div>
				</div>
			</div>

		</div>
	</section>
	<!-- ***** Main Banner Area End ***** -->



	<%
	if (info != null) {
		SurveyDTO2 surv_info = new SurveyDAO2().surv_info(info.getMb_email());
		ArrayList<ItemDTO> age_list = new ItemDAO().surv_item_filter((surv_info.getMb_age()));
		ArrayList<ItemDTO> company_list = new ItemDAO().surv_item_filter((surv_info.getMb_company()));
		ArrayList<ItemDTO> season_list = new ItemDAO().surv_item_filter((surv_info.getMb_season()));
		ArrayList<ItemDTO> type_list = new ItemDAO().surv_item_filter((surv_info.getMb_tour_type()));
		//ArrayList<ItemDTO> tip_list = new ItemDAO().surv_item_filter((surv_info.getMb_tip()));
		//ArrayList<ItemDTO> view_list = new ItemDAO().surv_item_filter((surv_info.getMb_view()));

		//String[] themedata = surv_info.getMb_tour_theme().split("#");
		//System.out.println("0번" + themedata[0]);
		//System.out.println("1번" + themedata[1]);
		//System.out.println("2번" + themedata[2]);
		//System.out.println("3번" + themedata[3]);
		//		System.out.println("size"+themedata.length);
		//		ArrayList<ItemDTO> theme_list = new ItemDAO().Filter(a)
		//		for(int j=0; i<theme_list.size())
		//		for(int i=1;i<themedata.length; i++) {
		//			a=themedata[i];
		//		}

		//				surv_info.getMb_tour_theme());
		//		ArrayList<ItemDTO> theme_list = new ArrayList<ItemDTO>();

		//		for (int i = 1; i < themedata.length; i++) {
		//			theme_list.add(new);
		//		}
	%>
	<%-- 
	<script>
		function camp_images_info() {
			for(let j=0;j<=age_list.size();j++){
			let item_num = <%=age_list.get(j).getNum()%>
		;
			let img_src;
			for (let i = 1; i <= 100; i++) {
				if (item_num == i) {
					img_src = 'assets/캠핑장 1차/' + i + '.jpg';
				}
			}
			return img_src;
		}
	</script> --%>
	<%ItemDAO dao = new ItemDAO();
ArrayList<ItemDTO> item_list = new ArrayList<ItemDTO>();
item_list = (ArrayList) request.getAttribute("item_list");%>


	<div class="visit-country">
		<div class="container">
			<div class="row">
				<div class="col-lg-8" style="margin-left: 150px;">
					<div class="row"
						style="width: 1400px; height: 600px; overflow: scroll;">

						<%
						if (age_list.size() > 0) {
						%>
						<%
						for (int i = 0; i < age_list.size(); i++) {
						%>

						<div class="col-lg-12">
							<div class="item">
								<div class="row">
									<div class="col-lg-4 col-sm-5">
										<div class="image">
											<img id="camp_images" src="assets/camping/<%=i + 330%>_1.jpg"
												onerror="this.style.display='none'">
										</div>
									</div>

									<div class="col-lg-8 col-sm-7">
										<div class="right-content">
											<h4><%=age_list.get(i).getName()%></h4>
											<span><%=age_list.get(i).getTag()%></span>
											<div class="main-button">
												<a id="item_list" class="item_list"
													href="ShowService?num=<%=age_list.get(i).getNum()%>">상세보기</a>
											</div>
											<p><%=age_list.get(i).getAddr()%></p>
											<ul class="info">
												<li><i class="fa fa-user"></i>전화번호 : <%=age_list.get(i).getTel()%></li>
												<li><i class="fa fa-globe"></i>가격 : <%=age_list.get(i).getPrice()%></li>
												<li><i class="fa fa-home"></i>유형 : <%=age_list.get(i).getType()%></li>
											</ul>
											<div class="text-button">
												<a href="about.jsp">더보려면?<i class="fa fa-arrow-right"></i></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>


						<%
						}
						}
						%>
						<%--<%
=======
							
							
							<% }}%>
							<%--
							<%
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-SW-DataDesign-1/z-ea.git
							}
							%>
							<%
							} else {
							}
							%>
							<%
							if (company_list.size() > 0) {
							%>
							<%
							for (int i = 0; i < company_list.size(); i++) {
							%>
							<div class="col-lg-12">
								<div class="item">
									<div class="row">
										<div class="col-lg-4 col-sm-5">
											<div class="image">
												<img src="assets/images/country-0<%=i + 1%>.jpg" alt="">
											</div>
										</div>
										<div class="col-lg-8 col-sm-7">
											<div class="right-content">
												<h4><%=company_list.get(i).getName()%></h4>
												<span><%=company_list.get(i).getTag()%></span>
												<div class="main-button">
													<a id="item_list" class="item_list"
														href="ShowService?num=<%=company_list.get(i).getNum()%>">상세보기</a>
												</div>
												<p><%=company_list.get(i).getAddr()%></p>
												<ul class="info">
													<li><i class="fa fa-user"></i>전화번호 : <%=company_list.get(i).getTel()%></li>
													<li><i class="fa fa-globe"></i>가격 : <%=company_list.get(i).getPrice()%></li>
													<li><i class="fa fa-home"></i>유형 : <%=company_list.get(i).getType()%></li>
												</ul>
												<div class="text-button">
													<a href="about.jsp">더보려면?<i class="fa fa-arrow-right"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<%
							}
							%>
							<%
							} else {
							}
							%>
							<%
							if (season_list.size() > 0) {
							%>
							<%
							for (int i = 0; i < season_list.size(); i++) {
							%>
							<div class="col-lg-12">
								<div class="item">
									<div class="row">
										<div class="col-lg-4 col-sm-5">
											<div class="image">
												<img src="assets/images/country-0<%=i + 1%>.jpg" alt="">
											</div>
										</div>
										<div class="col-lg-8 col-sm-7">
											<div class="right-content">
												<h4><%=season_list.get(i).getName()%></h4>
												<span><%=season_list.get(i).getTag()%></span>
												<div class="main-button">
													<a id="item_list" class="item_list"
														href="ShowService?num=<%=season_list.get(i).getNum()%>">상세보기</a>
												</div>
												<p><%=season_list.get(i).getAddr()%></p>
												<ul class="info">
													<li><i class="fa fa-user"></i>전화번호 : <%=season_list.get(i).getTel()%></li>
													<li><i class="fa fa-globe"></i>가격 : <%=season_list.get(i).getPrice()%></li>
													<li><i class="fa fa-home"></i>유형 : <%=season_list.get(i).getType()%></li>
												</ul>
												<div class="text-button">
													<a href="about.jsp">더보려면?<i class="fa fa-arrow-right"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%
							}
							%>
							<%
							} else {
							}
							%>
							<%
							if (type_list.size() > 0) {
							%>
							<%
							for (int i = 0; i < type_list.size(); i++) {
							%>
							<div class="col-lg-12">
								<div class="item">
									<div class="row">
										<div class="col-lg-4 col-sm-5">
											<div class="image">
												<img src="assets/images/country-0<%=i + 1%>.jpg" alt="">
											</div>
										</div>
										<div class="col-lg-8 col-sm-7">
											<div class="right-content">
												<h4><%=type_list.get(i).getName()%></h4>
												<span><%=type_list.get(i).getTag()%></span>
												<div class="main-button">
													<a id="item_list" class="item_list"
														href="ShowService?num=<%=type_list.get(i).getNum()%>">상세보기</a>
												</div>
												<p><%=type_list.get(i).getAddr()%></p>
												<ul class="info">
													<li><i class="fa fa-user"></i>전화번호 : <%=type_list.get(i).getTel()%></li>
													<li><i class="fa fa-globe"></i>가격 : <%=type_list.get(i).getPrice()%></li>
													<li><i class="fa fa-home"></i>유형 : <%=type_list.get(i).getType()%></li>
												</ul>
												<div class="text-button">
													<a href="about.jsp">더보려면?<i class="fa fa-arrow-right"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%
							}
							%>
							<%
							} else {
							}
							%>

							<%
							String[] themedata = surv_info.getMb_tour_theme().split("#");
							%>
							<%
							for (int i = 1; i < themedata.length; i++) {
							%>
							<%
							ArrayList<ItemDTO> theme_list = new ItemDAO().surv_item_filter((themedata[i]));
							%>
							<%
							if (theme_list.size() > 0) {
							%>
							<%
							for (int j = 0; j < theme_list.size(); i++) {
							%>
							<div class="col-lg-12">
								<div class="item">
									<div class="row">
										<div class="col-lg-4 col-sm-5">
											<div class="image">
												<img src="assets/images/country-0<%=j + 1%>.jpg" alt="">
											</div>
										</div>
										<div class="col-lg-8 col-sm-7">
											<div class="right-content">
												<h4><%=theme_list.get(j).getName()%></h4>
												<span><%=theme_list.get(j).getTag()%></span>
												<div class="main-button">
													<a id="item_list" class="item_list"
														href="ShowService?num=<%=theme_list.get(i).getNum()%>">상세보기</a>
												</div>
												<p><%=theme_list.get(j).getAddr()%></p>
												<ul class="info">
													<li><i class="fa fa-user"></i>전화번호 : <%=theme_list.get(j).getTel()%></li>
													<li><i class="fa fa-globe"></i>가격 : <%=theme_list.get(j).getPrice()%></li>
													<li><i class="fa fa-home"></i>유형 : <%=theme_list.get(j).getType()%></li>
												</ul>
												<div class="text-button">
													<a href="about.jsp">더보려면?<i class="fa fa-arrow-right"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%
							}
							%>
							<%
							} else {
							%>
							<%
							}
							}
							%>
							<%
							String[] tipdata = surv_info.getMb_tip().split("#");
							%>
							<%
							for (int i = 1; i < tipdata.length; i++) {
							%>
							<%
							ArrayList<ItemDTO> tip_list = new ItemDAO().surv_item_filter((tipdata[i]));
							%>
							<%
							if (tip_list.size() > 0) {
							%>
							<%
							for (int j = 0; j < tip_list.size(); i++) {
							%>
							<div class="col-lg-12">
								<div class="item">
									<div class="row">
										<div class="col-lg-4 col-sm-5">
											<div class="image">
												<img src="assets/images/country-0<%=j + 1%>.jpg" alt="">
											</div>
										</div>
										<div class="col-lg-8 col-sm-7">
											<div class="right-content">
												<h4><%=tip_list.get(j).getName()%></h4>
												<span><%=tip_list.get(j).getTag()%></span>
												<div class="main-button">
													<a id="item_list" class="item_list"
														href="ShowService?num=<%=tip_list.get(i).getNum()%>">상세보기</a>
												</div>
												<p><%=tip_list.get(j).getAddr()%></p>
												<ul class="info">
													<li><i class="fa fa-user"></i>전화번호 : <%=tip_list.get(j).getTel()%></li>
													<li><i class="fa fa-globe"></i>가격 : <%=tip_list.get(j).getPrice()%></li>
													<li><i class="fa fa-home"></i>유형 : <%=tip_list.get(j).getType()%></li>
												</ul>
												<div class="text-button">
													<a href="about.jsp">더보려면?<i class="fa fa-arrow-right"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%
							}
							%>
							<%
							} else {
							%>
							<%
							}
							}
							%>
							<%
							String[] viewdata = surv_info.getMb_view().split("#");
							%>
							<%
							for (int i = 1; i < viewdata.length; i++) {
							%>
							<%
							ArrayList<ItemDTO> view_list = new ItemDAO().surv_item_filter((viewdata[i]));
							%>
							<%
							if (view_list.size() > 0) {
							%>
							<%
							for (int j = 0; j < view_list.size(); i++) {
							%>
							<div class="col-lg-12">
								<div class="item">
									<div class="row">
										<div class="col-lg-4 col-sm-5">
											<div class="image">
												<img src="assets/images/country-0<%=j + 1%>.jpg" alt="">
											</div>
										</div>
										<div class="col-lg-8 col-sm-7">
											<div class="right-content">
												<h4><%=view_list.get(j).getName()%></h4>
												<span><%=view_list.get(j).getTag()%></span>
												<div class="main-button">
													<a id="item_list" class="item_list"
														href="ShowService?num=<%=view_list.get(i).getNum()%>">상세보기</a>
												</div>
												<p><%=view_list.get(j).getAddr()%></p>
												<ul class="info">
													<li><i class="fa fa-user"></i>전화번호 : <%=view_list.get(j).getTel()%></li>
													<li><i class="fa fa-globe"></i>가격 : <%=view_list.get(j).getPrice()%></li>
													<li><i class="fa fa-home"></i>유형 : <%=view_list.get(j).getType()%></li>
												</ul>
												<div class="text-button">
													<a href="about.jsp">더보려면?<i class="fa fa-arrow-right"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%
							}
							%>
							<%
							} else {
							%>
							<%
							}
							}
							%> --%>
						<div class="col-lg-12">
							<ul class="page-numbers">
								<!-- <li><a href="#"><i class="fa fa-arrow-left"></i></a></li>
									<li><a href="#">1</a></li> -->
								<li class="active"><a href="#">up</a></li>
								<!-- 	<li><a href="#">3</a></li>
									<li><a href="#"><i class="fa fa-arrow-right"></i></a></li> -->
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- <div class="col-lg-4">
					<div class="side-bar-map">
						<div class="row">
							<div class="col-lg-12">
								<div id="map">
									<iframe
										src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12469.776493332698!2d-80.14036379941481!3d25.907788681148624!2m3!1f357.26927939317244!2f20.870722720054623!3f0!3m2!1i1024!2i768!4f35!3m3!1m2!1s0x88d9add4b4ac788f%3A0xe77469d09480fcdb!2sSunny%20Isles%20Beach!5e1!3m2!1sen!2sth!4v1642869952544!5m2!1sen!2sth"
										width="100%" height="550px" frameborder="0"
										style="border: 0; border-radius: 23px;" allowfullscreen=""></iframe>
								</div>
							</div>
						</div>
					</div>
				</div> -->
		</div>
	</div>
	</div>
	<div class="col-lg-12">
		<ul class="page-numbers">
			<!-- <li><a href="#"><i class="fa fa-arrow-left"></i></a></li>
									<li><a href="#">1</a></li> -->
			<li class="active"><a href="#">up</a></li>
			<!-- <li><a href="#">3</a></li>
									<li><a href="#"><i class="fa fa-arrow-right"></i></a></li> -->
		</ul>
	</div>



	<%
	}
	%>


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
			if (next.length)
				next.prop('checked', true);
			else
				$('.sec-1-input').first().prop('checked', true);
		}

		var bannerTimer = setInterval(bannerSwitcher, 5000);

		$('nav .controls label').click(function() {
			clearInterval(bannerTimer);
			bannerTimer = setInterval(bannerSwitcher, 5000)
		});
	</script>
	<script>
		function show() {

			let modal = document.querySelector(".modalPopup");
			let modalBtn = document.querySelector(".modalBtn");
			let mainCaption = document.querySelector(".main-caption")
			let dark = document.querySelector(".controls")

			console.log("실행도미");
			if (modal.style.display == "none") {

				modal.style.display = "block";
				modalBtn.textContent = "닫기";
			}

			else {
				// mainCaption.style.opacity ="1";
				modal.style.display = "none";

				modalBtn.textContent = "로그인";
			}
		};
	</script>
	<script>
		function checkE() {
			let mb_email_ck = $('#mb_email_ck').val();
			console.log(mb_email_ck);

			$.ajax({
				url : 'EmailCheckService',
				data : {
					'mb_email_ck' : mb_email_ck
				},
				type : 'get',
				success : function(data) {
					console.log(data);

					if (data == 'true') {
						$('#resultCheck').text('사용할 수 없는 아이디')
					} else {
						$('#resultCheck').text('사용할 수 있는 아이디')
					}
				},
				error : function() {
					console.log("통신실패");

				}
			});

		}
	</script>


	<script>
			function camp_images_info(){
			
				get.email   
				<img id="showitem" src="">
				<script>
					document
							.getElementById('showitem').src = showitem_info();
				</script>

</body>

</html>

