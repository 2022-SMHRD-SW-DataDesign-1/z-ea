<%@page import="com.smhrd.model.MemberDTO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.ItemDAO"%>
<%@page import="com.smhrd.model.ItemDTO"%>

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
<!--

TemplateMo 580 Woox Travel

https://templatemo.com/tm-580-woox-travel

-->
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
		<div class="about-main-content">
			<div class="container">
				<div class="row">
					<div class="col-lg-12"></div>
					<div class="content"></div>
				</div>
			</div>
		</div>

		<!-- ***** Main Banner Area End ***** -->

		<!-- 모달 -->

		<div class="cities-town"
			style="display: inline-block; margin-left: 200px;">
			<div class="container">
				<div class="row" style="text-align: center;">
					<div class="slider-content">

						<div class="row" style="display: block;">

							<h2 style="margin-bottom: 60px;">카테고리</h2>

							<div class="col-lg-12">
								<div class="owl-cites-town owl-carousel"
									style="display: inline-block;">

									<div class="choose1"
										style="height: 40px; width: 120px; border: solid black 1px"
										onclick="tag_filter(this)">#가족</div>


									<div class="choose1"
										style="height: 40px; width: 120px; border: solid black 1px"
										onclick="tag_filter(this)">#혼자</div>


									<div class="choose1"
										style="height: 40px; width: 120px; border: solid black 1px;"
										onclick="tag_filter(this)">#감성</div>


									<div class="choose1"
										style="height: 40px; width: 120px; border: solid black 1px"
										onclick="tag_filter(this)">#커플</div>


									<div class="choose1"
										style="height: 40px; width: 120px; border: solid black 1px"
										onclick="tag_filter(this)">#단체</div>


									<div class="choose1"
										style="height: 40px; width: 120px; border: solid black 1px"
										onclick="tag_filter(this)">#바다</div>


									<div class="choose1"
										style="height: 40px; width: 120px; border: solid black 1px"
										onclick="tag_filter(this)">#산</div>

								</div>
								<hr />

								<div>
									<div id="item">
										<div
											style="margin-top: 5%; width: 100%; display: inline-block; padding: 10px 5px 10px 5px;">

											<%
											ItemDAO dao = new ItemDAO();
											ArrayList<ItemDTO> item_list = new ArrayList<ItemDTO>();
											item_list = (ArrayList) request.getAttribute("item_list");
											/* if(request.getParameter("tag") != null){
												item_list = dao.Filter(request.getParameter("tag"));
											}
											 */

											item_list = dao.showAll();

											int cnt = 0;
											if (request.getParameter("page") == null) {
												for (int i = 0; i < item_list.size(); i++) {
													if (cnt == 8) {
												break;
													}
											%>

											<a id="item_list" class="item_list"
												href="ShowService?num=<%=item_list.get(i).getNum()%>"
												style="display: inline-block; width: 250px; height: 350px; text-align: center; padding: 5px; display: flexbox;">
												<img src="assets/images/offers-01.jpg" alt=""
												style="width: 200px; height: 200px;">
												<div style="text-align: left; padding-left: 20px;">
													<p id="item"><%=item_list.get(i).getName()%></p>
													<p id="item"><%=item_list.get(i).getDesc()%></p>
												</div>
											</a>

											<%
											cnt++;
											}
											%>
											<%
											} else {

											int pageNum = Integer.parseInt(request.getParameter("page"));
											System.out.print(item_list.size());
											for (int i = (pageNum - 1) * 8; i < (item_list.size()); i++) {

												if (cnt == 8) {
													break;
												}
											%>
											<a class="item_list"
												href="ShowService?num=<%=item_list.get(i).getNum()%>"
												style="display: inline-block; width: 250px; height: 350px; text-align: center; padding: 5px; display: flexbox;">
												<img src="assets/images/offers-01.jpg" alt=""
												style="width: 200px; height: 200px;">
												<div style="text-align: left; padding-left: 20px;">
													<p id="item"><%=item_list.get(i).getName()%></p>
													<p id="item"><%=item_list.get(i).getDesc()%></p>
												</div>
											</a>


											<%
											cnt++;
											}
											}
											%>




											<div style="width: 100%">
												<%
												for (int j = 0; j < ((item_list.size()) / 8) + 1; j++) {
												%>

												<a id="page" value="<%=j + 1%>" href="?page=<%=j + 1%>  "
													style="margin: 10px;"> <%=j + 1%>
												</a>
												<%
												}
												%>
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
		</script>

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

	</script>

		<script>
	function tag_filter(id){
		let value;
		
		if(id.style.backgroundColor == "white"){
		id.style.backgroundColor ="blue";
		value = id.textContent;
		console.log(value);
		$.ajax({
			url : 'Filter',  //요청 서버 url
			data : {'gc_tag': value},	//요청할 때 같이 보내줄 데이터
			type : 'post', 				//요청 타입(method)
			dataType : "json",
			success : listView,
			error : function(){			//통신실패
				console.log("통신실패");
			}
		})

		}else {
			id.style.backgroundColor = "white";
			value = "";
		}
		
		}
	</script>
		<script>
	  function listView(data){ // [{           },{            },{                }]
		  var tag="<table>";
		  let cnt = 0;
		  tag+="<div style='margin-top :5%;'>";	
		  $.each(data, function(index, obj){
			console.log(obj.num);
			  tag+="<a href='ShowService?num="+obj.num+"'>"
			  tag+="<div style='width:250px; height: 350px; display: inline-block;'><img src='assets/images/offers-01.jpg' alt=''style='width: 200px; height: 200px; display: flexbox;'> "
			  tag+="<div style='text-align: left; padding-left: 20px;'>"  
				  tag+="<p id='item'>"+obj.name +"</p>";
				  tag+="<p id='item'>"+obj.desc +"</p>";
			  tag+="</div></div>";
			  
			  tag+="</a>";
		  });		  
		  tag+="</div>";
		  
		  tag+="</table>";
		  $("#item").html(tag);
	  }
		
	</script>
		<script>
	function FullView()
	
	</script>


		<script>
	function filter(id){
		let inputE = id.val();
		console.log(inputE);
		
		$.ajax({
			url : 'EmailCheckService.do',  //요청 서버 url
			data : {'inputE': inputE},	//요청할 때 같이 보내줄 데이터
			type : 'get', 				//요청 타입(method)
			success : function(data){	//통신성공 (function(넘겨준데이터))
				console.log(typeof data);
				//resultCheckE
				if(data=='true'){
					$("#resultCheckE").text('사용할 수 없는 아이디');
				}else{ //false
					$("#resultCheckE").text('사용할 수 있는 아이디');
				}
			},
			error : function(){			//통신실패
				console.log("통신실패");
			}
		})

	}

	
	
	</script>
</body>

</html>
