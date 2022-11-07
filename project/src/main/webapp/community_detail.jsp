
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.model.CommentDTO"%>
<%@page import="com.smhrd.model.CommentDAO"%>
<%@page import="com.smhrd.model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.BoardDAO"%>
<%@page import="com.smhrd.model.MemberDTO"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en-us">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Load fonts -->
<link href='http://fonts.googleapis.com/css?family=Montserrat'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lora'
	rel='stylesheet' type='text/css'>

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-woox-travel.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- Load css styles -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<!-- <link rel="stylesheet" type="text/css" href="css/style.css" /> -->

</head>

<body>
	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->
						<a href="Main.html" class="logo"> <img
							src="assets/images/logo.png" alt="">
						</a>
						<!-- ***** Logo End ***** -->

						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<li><a href="index.jsp" class="active">홈</a></li>
							<li><a href="about.jsp">테마</a></li>
							<li><a href="deals.jsp">예약</a></li>
							<li><a href="reservation.jsp">양도</a></li>
							<li><a href="Community.html">커뮤니티</a></li>
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
	<%
	BigDecimal board_num = new BigDecimal(request.getParameter("board_num"));
	BoardDTO dto = new BoardDAO().show(board_num);
	%>
	<!-- Portfolio section start -->
	<section id="portfolio" class="darker">
		<div class="container2">
			<header>
				<!-- 커뮤니티 상세내용 -->
				<br>
				<h5>
					커뮤니티 <a href="community.jsp">뒤로가기</a>
				</h5>
				<h5 id="board_num"><%=dto.getBoard_num()%></h5>
				<h5>
					제목 :
					<%=dto.getBoard_title()%></h5>
				<h5>
					카테고리 :<%=dto.getBoard_category()%></h5>
				<h5>
					작성자email :<%=dto.getMb_email()%></h5>
				<h5>
					게시날짜 :<%=dto.getBoard_date()%></h5>

			</header>

			<div id="single-project"></div>
			<div class="row">
				<!--  <figure class="portfolio-item col-md-4 col-sm-6"> -->
				<img class="img-responsive"
					style="height: 500px; width: 500px; margin-left: 30%;"
					src="./file/<%=dto.getBoard_file()%>" alt="Adena icons pack" />
				<!-- 	<figcaption class="mask"> -->
				<!-- 	</figcaption> -->
				<div>
					<%=dto.getBoard_content()%>
				</div>
				<br>
				<!-- </figure> -->
				<!-- 댓글작성 -->
				<%
				if (info != null) {
				%>
				<div>
					<form action="CommentService?board_num=<%=dto.getBoard_num()%>"
						method="post">
						<div>
							작성자이메일 :<%=info.getMb_email()%></div>
						<textarea type="text" name="comment_content" id="content"
							style="resize: none;" rows="10"></textarea>
						<input type="submit" value="댓글작성" onclick="commentShow()">
					</form>
				</div>
				<%
				}
				%>





				<br> <br>
				<br>
				<br>
				<br>
				<br>
				<br>

				<table>
					<div style="font-size: 20px;">댓글</div>
					<%
					CommentDAO dao = new CommentDAO();
					ArrayList<CommentDTO> clist = dao.show_comment(dto.getBoard_num());
					System.out.println(clist);
					%>



					<div>
						<!-- 댓글내용조회 -->
						<table style="margin:20px;">
							
							<%
							if (clist != null) {
							%>
							<%
							for (int i = 0; i < clist.size(); i++) {
							%>
							<tr >
								<th><%=i + 1%></th>
							
								<div class="col-lg-6">
								<td><label for="Name" class="form-label"
									style="display: inline-block;">작성자이메일 <%=clist.get(i).getMb_email()%>
								</label></td>
								</div>
								<td><label for="Name" class="form-label"
									style="display: inline-block;">작성시간 :  <%=clist.get(i).getComment_date()%> </label></td>
							</tr>
							<tr style="border: 1px black solid;">
								<td><label for="Name" class="form-label"
									style="display: inline-block;  padding: 5px;">댓글내용 : <%=clist.get(i).getComment_content()%> </label></td>
							</tr>

							<%
							}
							} else {
							%>
							<tr>
								<th></th>
							</tr>

							<%
							}
							%>
						</table>
				</table>


			</div>



		</div>
		</div>
	</section>
	<!-- Portfolio section end -->

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p>
						Copyright Â© 2036 <a href="#">WoOx Travel</a> Company. All rights
						reserved. <br>Design: <a href="https://templatemo.com"
							target="_blank" title="free CSS templates">TemplateMo</a>
						Distribution: <a href="https://themewagon.com target="_blank">ThemeWagon</a>
					</p>
				</div>
			</div>
		</div>
	</footer>



	<!-- Load jQuery -->
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
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>

	<!-- Load Booststrap -->
	<script type="text/javascript" src="js/bootstrap.js"></script>

	<script type="text/javascript" src="js/smooth-scroll.js"></script>

	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

	<!-- Load custom js for theme -->
	<script type="text/javascript" src="js/app.js"></script>


</body>

</html>
