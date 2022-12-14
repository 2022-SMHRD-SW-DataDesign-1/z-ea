<%@page import="com.smhrd.model.ReviewDTO"%>
<%@page import="com.smhrd.model.ReviewDAO"%>
<%@page import="com.smhrd.model.BoardDTO"%>
<%@page import="com.smhrd.model.BoardDAO"%>
<%@page import="com.smhrd.model.CommentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.CommentDAO"%>
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
							<li><a href="index.jsp">???</a></li>
							<li><a href="about.jsp">?????????&?????????</a></li>
							<li><a href="reservation.jsp">??????</a></li>
							<li><a href="transfer.jsp">??????</a></li>
							<li><a href="community.jsp">????????????</a></li>
							<%
							if (info == null) {
							%>
							<li>
								<button class="modalBtn" onclick="show()"
									style="background-color: #6A5ACD; padding: 8px 14px; border: none; color: #fff;">?????????</button>
							</li>
							<%
							} else {
							%>
							<li><a href="MyPage.jsp" class="active" class="modalBtn"
								style="background-color: #6A5ACD; padding: 8px 14px; border: none; color: #fff;">???????????????</a>
							</li>
							<li><a href="LogoutService" class="modalBtn"
								style="background-color: #6A5ACD; padding: 8px 14px; border: none; color: #fff;">????????????</a>
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
	<!-- ?????? -->
	<div class="modalPopup" style="display: none;">
		<div class="ModalBack" onclick
			style="position: fixed; background-color: black; width: 100%; height: 100%; opacity: 0.9;">
		</div>
		<div class="LoginModal"
			style="text-align: center; background-color: white; width: 540px; height: 650px; margin-top: 10%; margin-left: 36%; position: fixed; align-content: center;">
			<!-- ????????? -->
			<form action="LoginService" method="post">
				<table style="margin: auto; margin-top: 10%;">
					<th colspan="2" style="font-size: 20px; padding: 10px;">?????????</th>
					<tr>
						<td>
							<div
								style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">?????????
							</div>
						</td>
						<td><input type="email" name="mb_email" style="width: 180px;" /></td>
					</tr>
					<tr>
						<td>
							<div
								style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">????????????
							</div>
						</td>
						<td><input type="password" name="mb_pw" style="width: 180px;" /></td>
					</tr>
					<td colspan="2" style="text-align: center;"><input
						type="submit" value="?????????" style="width: 80px;"></td>
				</table>
			</form>
			<!-- ????????????-->
			<form action="JoinService" method="post">
				<table style="margin: auto; margin-top: 10%;">
					<th colspan="2" style="font-size: 20px; padding: 10px;">????????????</th>
					<tr>
						<td>
							<div
								style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">??????
							</div>
						</td>
						<td><input type="text" name="mb_name" style="width: 180px;" /></td>
					</tr>
					<tr>
						<td>
							<div
								style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">?????????
							</div>
						</td>
						<td><input type="email" name="mb_email" id="mb_email_ck"
							style="width: 180px;" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="email????????????"
							onclick="checkE()"></td>
					</tr>
					<tr>
						<th colspan="2"><span style="padding: 10px;" id="resultCheck"></span>
						</th>
					</tr>
					<tr>
						<td>
							<div
								style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">????????????
							</div>
						</td>
						<td><input type="password" name="mb_pw" style="width: 180px;" /></td>
					</tr>
					<tr>
						<td>
							<div
								style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">????????????
							</div>
						</td>
						<td><input type="date" name="mb_birthdate"
							style="width: 180px;" /></td>
					</tr>
					<tr>
						<td>
							<div
								style="display: inline-block; margin-right: 10px; margin-top: 5px; padding: 5px;">????????????
							</div>
						</td>
						<td><input type="text" name="mb_phone" style="width: 180px;" /></td>
					</tr>
					<td colspan="2" style="text-align: center;"><input
						type="submit" value="????????????" style="width: 80px;"></td>
				</table>
			</form>
		</div>
	</div>


	<div class="second-page-heading">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2>??????/??????/????????????</h2>
					<div class="main-button">
						<a href="MyPage.jsp"
							style="width: 110px; border-radius: 15px; color: white; font-size: 18px; font-weight: bold; background-color: #6A5ACD; padding: 12px; border: none;">BACK</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<%
	ArrayList<CommentDTO> comment_list = new CommentDAO().my_comment(info.getMb_email());
	%>
	<div class="cities-town"
		style="display: inline-block; margin-left: 350px;">
		<div class="container">
			<div class="row">
				<div class="slider-content" style="width: 1200px;">
					<div class="transfer-form" style="margin: 20px;">
						<div class="col-lg-12">
							<h2 style="padding: 20px;">?????? ??????</h2>
						</div>

						<!-- ?????? -->
						<%
						if (info != null) {
						%>
						<div class="col-lg-6" style="padding: 20px; width: 100%;">
							<div>
								<div class="table">
									<table style="padding: 20px; width: 100%;">
										<%
										for (int i = 0; i < comment_list.size(); i++) {
										%>
										<tr style="padding: 5px; text-align: center;">
											<td><p style="padding: 5px; color: #4b4b4b;">????????????</p></td>
											<td><p style="padding: 5px; color: #4b4b4b;">????????????</p></td>
											<td><p style="padding: 5px; color: #4b4b4b;">????????????</p></td>
											<td></td>
										</tr>
										<tr style="padding: 5px; text-align: center;">
											<td>
												<p class="label" style="padding: 5px; color: #4b4b4b;"><%=comment_list.get(i).getComment_num()%></p>
											</td>
											<td>
												<p class="label" style="padding: 5px; color: #4b4b4b;"><%=comment_list.get(i).getComment_content()%></p>
											</td>
											<td>
												<p class="label" style="padding: 5px; color: #4b4b4b;"><%=comment_list.get(i).getComment_date()%></p>
											</td>
											<td>
												<button style="border: none; font-weight: bold;">
													<a
														href="mypage_update.jsp?name=??????&num=<%=comment_list.get(i).getComment_num()%>">??????</a>
												</button>

												<button style="border: none; font-weight: bold;">
													<a
														href="CommentDeleteService?num=<%=comment_list.get(i).getComment_num()%>">??????</a>
												</button>
											</td>
										</tr>
										<%
										}
										%>

									</table>
								</div>
							</div>
							<%
							}
							%>
						</div>

						<div class="col-lg-12">
							<h2 style="padding: 20px;">?????? ??????</h2>
						</div>

						<%
						ArrayList<ReviewDTO> review_list = new ReviewDAO().my_review(info.getMb_email());
						%>
						<%
						if (info != null) {
						%>
						<div class="col-lg-6" style="padding: 20px; width: 100%;">
							<div style="padding: 10px;">
								<div class="table" style="margin-bottom: 10px;">
									<table style="padding: 20px; width: 100%;">
										<%
										for (int i = 0; i < review_list.size(); i++) {
										%>
										<tr style="padding: 5px; text-align: center;">
											<td><p style="padding: 5px; color: #4b4b4b;">????????????</p></td>
											<td><p style="padding: 5px; color: #4b4b4b;">??????</p></td>
											<td><p style="padding: 5px; color: #4b4b4b;">??????</p></td>
											<td><p style="padding: 5px; color: #4b4b4b;">??????</p></td>
											<td></td>
										</tr>
										<tr style="padding: 5px; text-align: center;">
											<td>
												<p class="label" style="padding: 5px; color: #4b4b4b;"><%=review_list.get(i).getReview_num()%></p>
											</td>
											<td>
												<p class="label" style="padding: 5px; color: #4b4b4b;"><%=review_list.get(i).getReview_content()%></p>
											</td>
											<td>
												<p class="label" style="padding: 5px; color: #4b4b4b;"><%=review_list.get(i).getScore()%></p>
											</td>
											<td>
												<p class="label" style="padding: 5px; color: #4b4b4b;"><%=review_list.get(i).getReview_date()%></p>
											</td>
											<td>
												<button style="border: none; font-weight: bold;">
													<a
														href="mypage_update.jsp?name=??????&num=<%=review_list.get(i).getReview_num()%>">??????</a>
												</button>
												<button style="border: none; font-weight: bold;">
													<a
														href="ReviewDeleteService?num=<%=review_list.get(i).getReview_num()%>">??????</a>
												</button>
											</td>
										</tr>

										<%
										}
										%>
									</table>
								</div>
							</div>
							<%
							}
							%>
						</div>

						<div class="col-lg-12">
							<h2 style="padding: 20px;">???????????? ??????</h2>
						</div>
						<%
						ArrayList<BoardDTO> board_list = new BoardDAO().my_board(info.getMb_email());
						%>
						<%
						if (info != null) {
						%>
						<div class="col-lg-6" style="padding: 20px; width: 100%;">
							<div style="margin-bottom: 40px;">
								<div class="table">
									<table style="padding: 20px; width: 100%;">
										<%
										for (int i = 0; i < board_list.size(); i++) {
										%>
										<tr>
											<td><p style="padding: 5px; color: #4b4b4b;">??????????????????</p></td>
											<td><p style="padding: 5px; color: #4b4b4b;">??????</p></td>
											<td><p style="padding: 5px; color: #4b4b4b;">??????</p></td>
											<td><p style="padding: 5px; color: #4b4b4b;">????????????</p></td>
											<td><p style="padding: 5px; color: #4b4b4b;">????????????</p></td>
											<td><p style="padding: 5px; color: #4b4b4b;">????????????</p></td>
											<td></td>
										</tr>
										<tr>
											<td>
												<p class="label" style="padding: 5px; color: #4b4b4b;"><%=board_list.get(i).getBoard_num()%></p>
											</td>
											<td>
												<p class="label" style="padding: 5px; color: #4b4b4b;"><%=board_list.get(i).getBoard_title()%></p>
											</td>
											<td>
												<p class="label" style="padding: 5px; color: #4b4b4b;"><%=board_list.get(i).getBoard_content()%></p>
											</td>
											<td>
												<p class="label" style="padding: 5px; color: #4b4b4b;"><%=board_list.get(i).getBoard_file()%></p>
											</td>
											<td>
												<p class="label" style="padding: 5px; color: #4b4b4b;"><%=board_list.get(i).getBoard_category()%></p>
											</td>
											<td>
												<p class="label" style="padding: 5px; color: #4b4b4b;"><%=board_list.get(i).getBoard_date()%></p>
											</td>
											<td><button style="border: none; font-weight: bold;">
													<a
														href="mypage_update.jsp?name=????????????&num=<%=board_list.get(i).getBoard_num()%>">??????</a>
												</button>
												<button style="border: none; font-weight: bold;">
													<a
														href="CommunityDeleteService?num=<%=board_list.get(i).getBoard_num()%>">??????</a>
												</button></td>
										</tr>
										<%
										}
										%>
									</table>
								</div>
							</div>
							<%
							}
							%>
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
						Copyright ?? 2022 <a href="#">ze:a</a> Company. All rights
						reserved.
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
			console.log("?????????");
			let modal = document.querySelector(".modalPopup");
			let modalBtn = document.querySelector(".modalBtn");
			let mainCaption = document.querySelector(".main-caption")
			let dark = document.querySelector(".controls")

			console.log("????????????");
			if (modal.style.opacity == "0") {
				mainCaption.style.opacity = "0";
				dark.style.opacity = "0"
				modal.style.opacity = "1";
				modal.style.display = "block"
				modalBtn.textContent = "??????"
			}

			else {
				dark.style.opacity = "1";
				mainCaption.style.opacity = "1";
				modal.style.opacity = "0";
				modal.style.display = "none";
				modalBtn.textContent = "?????????";
			}
		}
	</script>
</body>

</html>
