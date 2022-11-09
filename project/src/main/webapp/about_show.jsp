<%@page import="java.math.BigDecimal"%>
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

<link rel="stylesheet" href="assets/css/about.css">
<!--

TemplateMo 580 Woox Travel

https://templatemo.com/tm-580-woox-travel

-->
<!-- item_detail page -->
</head>

<body>
	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	int num = Integer.parseInt(request.getParameter("num"));

	System.out.println(num);
	ItemDAO dao = new ItemDAO();
	ItemDTO item = dao.showDetail(num);
	System.out.print(item);
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
							<li><a href="deals.jsp">예약</a></li>
							<li><a href="reservation.jsp">양도</a></li>
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

	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="content"></div>
				<h2>캠핑장이름</h2>

			</div>
		</div>
	</div>
	</div>
	<!-- ***** Main Banner Area End ***** -->


	<div id="contents">
		<!-- 상단 -->
		<div class="titleType1">
			<div class="area_tag">
				<div class="brandingIcon">
					<ul class="tour"></ul>
				</div>
			</div>

			<h2 id="topTitle"><%=item.getName()%></h2>

			<div class="area_address" id="topAddr">
				<span id="address"><%=item.getAddr()%></span>
			</div>

			<!-- 캐치플레이스 -->
			<div class="dbDetail titBg" id="topCp">
				<div class="titTypeWrap">
					<h3>
						<em><%=item.getName()%></em>
					</h3>
				</div>
			</div>
			<!-- //캐치플레이스 -->

			<div class="post_area">
				<button type="button" class="btn_good" onclick="setLike();">
					<span class="ico">좋아요</span><span class="num" id="conLike">0</span>
				</button>
				<span class="rline">
					<button type="button" class="btn_bookmark"
						onclick="setFavoContentDetail();">
						<span class="ico">즐겨찾기</span>
					</button>
				</span>
			</div>
		</div>
		<!-- //상단 -->


		<!-- 사진보기 -->
		<div id="galleryGo">
			<div class="user_reg"></div>
			<h3 class="blind" style="padding: 20px">사진보기</h3>
			<div class="photo_gallery">
				<!-- 공사 사진 영역 -->
				<div
					class="swiper-container swiper-container-initialized swiper-container-horizontal"
					style="height: 300px;">
					<div class="swiper-wrapper" id="pImgList">
						<div class="swiper-slide swiper-slide-active"
							style="width: 450px;">
							<img class="swiper-lazy swiper-lazy-loaded" alt="타요캠핑장  0"
								onclick="openPhotoView(0)"
								style="width: 100%; height: 100%; object-fit: contain;"
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=42235b2d-f656-4510-ae35-c562feb955cc">
						</div>
						<div class="swiper-slide swiper-slide-next" style="width: 450px;">
							<img class="swiper-lazy swiper-lazy-loaded" alt="타요캠핑장  1"
								onclick="openPhotoView(1)"
								style="width: 100%; height: 100%; object-fit: contain;"
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&amp;id=3a2aea96-11ac-4394-ad25-33eb3d9c3ee0">
						</div>

					</div>
					<!-- Add Pagination -->
					<!-- 	<div class="swiper-pagination swiper-pagination-fraction">
						<span class="swiper-pagination-current">1</span> / <span
							class="swiper-pagination-total">5</span>
					</div> -->
					<!-- Add Arrows -->
					<div class="swiper-button-next" tabindex="0" role="button"
						aria-label="Next slide" aria-disabled="false">다음</div>
					<div class="swiper-button-prev swiper-button-disabled" tabindex="0"
						role="button" aria-label="Previous slide" aria-disabled="true">이전</div>
					<span class="swiper-notification" aria-live="assertive"
						aria-atomic="true"></span>
				</div>

			</div>
		</div>
		<!-- //사진보기 -->

		<!-- 상세정보 -->
		<div id="detailGo">
			<div class="blind" style="padding-top: 20px;">
				<%=item.getDesc()%></div>
			<!-- 내용더보기 -->
			<div class="wrap_contView">
				<h3 style="padding: 20px">상세정보</h3>
				<button class="btn_modify" onclick="goJikimi();">
					<span>관광정보 수정요청</span>
				</button>
				<!-- //내용더보기 -->



				<div class="area_txtView top" style="padding-bottom: 50px;">
					<!-- 맛집 제보 코멘트 -->
					<div class="gastroventure_report">
						<!-- <div class="report_box">
                    여기에 값 넣기
                            </div> -->
					</div>

					<div class="cont_more" style="display: block;">
						<button type="button" class="btn_more" title="내용더보기">
							내용 <span>더보기</span>
						</button>
					</div>
				</div>
			</div>
			<!-- <!-- 주변정보 지도 -->

			<div class="surroundingsMap" id="detailGo">
				<div class="map_skip" tabindex="0">
					<a style="display: none;" href="javascript:jumpkakaomap();">지도
						건너뛰기</a>
				</div>
				<div id="map" class="wrap_map" style="overflow: hidden;">

					<div id="map" style="width: 900px; height: 350px;"></div>

					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e68d48a5b99c5c426f94e0e5b5f56dbc&libraries=services"></script>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(33.450701,
									126.570667), // 지도의 중심좌표
							level : 3
						// 지도의 확대 레벨
						};

						// 지도를 생성합니다    
						var map = new kakao.maps.Map(mapContainer, mapOption);

						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new kakao.maps.services.Geocoder();

						// 주소로 좌표를 검색합니다
						geocoder
								.addressSearch(
										document.getElementById('address').textContent,
										function(result, status) {

											// 정상적으로 검색이 완료됐으면 
											if (status === kakao.maps.services.Status.OK) {

												var coords = new kakao.maps.LatLng(
														result[0].y,
														result[0].x);

												// 결과값으로 받은 위치를 마커로 표시합니다
												var marker = new kakao.maps.Marker(
														{
															map : map,
															position : coords
														});

												// 인포윈도우로 장소에 대한 설명을 표시합니다
												var infowindow = new kakao.maps.InfoWindow(
														{
															content : '<div style="width:150px;text-align:center;padding:6px 0;">'
																	+ document
																			.getElementById('topTitle').textContent
																	+ '</div>'
														});
												infowindow.open(map, marker);

												// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
												map.setCenter(coords);
											}
										});
					</script>
					<img src="../resources/images/sub/map_dim01.png" alt=""
						style="width: 100%; height: 100%;"> <a
						href="javascript:myLocation();" class="position">내위치</a> <a
						href="javascript:changeCenter();" class="refreshify">새로고침</a> <a
						href="javascript:mapOpenClose();" class="map_open">지도 펼치기</a> <a
						href="javascript:mapOpenClose();" class="map_close">지도 접기</a>

					<div class="layer" tabindex="0">
						<span class="img"><a href="javascript:;"><img src=""
								alt=""></a></span>
						<div>
							<strong><a href="javascript:;"></a></strong> <span class="area"></span>
							<span class="km"></span>
							<div class="btn">
								<button type="button" class="bookmark"
									onclick="setFavoContentDetail(2);">즐겨찾기</button>
								<button type="button" class="good" onclick="setLike(2);">좋아요</button>
								<button type="button" class="course"
									onclick="MycourseAddContent(2);">코스담기</button>
								<button type="button" class="guide roadbutton">길안내</button>
							</div>
						</div>
						<button type="button" class="close">닫기</button>
					</div>
					-->
					<div class="map_menu">
						<button type="button" class="view" style="display: none;">상세보기</button>
						<ul>
							<li><button type="button">
									<span class="icon1">주변 여행지</span>
								</button></li>
							<li><button type="button">
									<span class="icon2">음식점</span>
								</button></li>
							<li><button type="button">
									<span class="icon3">카페</span>
								</button></li>
							<li><button type="button">
									<span class="icon4">숙소</span>
								</button></li>
							<li><button type="button">
									<span class="icon5">주차장</span>
								</button></li>
						</ul>
					</div>
					<!-- 			지도 -->
					<div
						style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
						<div
							style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left; display: none;">
							<div
								style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;"></div>
							<div
								style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">250m</div>
						</div>
						<div style="margin: 0px 4px; float: left;">
							<a target="_blank" href="http://map.kakao.com/"
								title="Kakao 지도로 보시려면 클릭하세요."
								style="float: left; width: 32px; height: 10px;"><img
								src="https://t1.daumcdn.net/mapjsapi/images/m_bi_b.png"
								alt="Kakao 지도로 이동"
								style="float: left; width: 32px; height: 10px; border: none;"></a>
							<div
								style="font: 11px/11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div>
						</div>
					</div>
					<div
						style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div>
				</div>
			</div>
			<!-- //주변정보 지도 -->
			<div class="wrap_contView" id="detailinfoview">
				<!-- 세부 정보 -->
				<div class="area_txtView bottom" style="padding-bottom: 0px;">
					<div class="inr_wrap" style="overflow: visible; height: auto;">
						<div class="inr">
							<ul>
								<li><strong>문의 및 안내</strong><span class="mo"><a
										href="#"><%=item.getTel()%></a></span></li>
								<li><strong>종류</strong><span><%=item.getType()%></span></li>
								<!-- <li><strong>홈페이지</strong><span><a
										href=" http://tayocaravan.com" target="_blank"
										title="새창 : 타요캠핑장 사이트로 이동"> http://tayocaravan.com</a></span></li> -->
								<li><strong>주소</strong><span><%=item.getAddr()%></span></li>
								<li><strong>이용시간</strong><span>15:00 ~ 익일11:00</span></li>

								<li><strong>주차</strong><span>주차가능</span></li>
								<li><strong>이용요금</strong><span><%=item.getPrice()%><br>※
										이용요금은 변동될 수 있으므로 홈페이지 참조 또는 전화 문의 요망 </span></li>
							</ul>
						</div>
					</div>
					<div class="cont_more" style="display: none;">
						<button type="button" class="btn_more" title="내용더보기">
							<span>더보기</span>
						</button>
					</div>
				</div>
				<!-- //세부 정보 -->
			</div>


			<!-- 중간 배너 -->
			<ul class="list_banner clfix" style="display: none;">
				<li class="link_mapsearch">
					<!-- 기본 노출 영역 --> <a
					href="https://map.kakao.com/link/to/%ED%83%80%EC%9A%94%EC%BA%A0%ED%95%91%EC%9E%A5,37.4212515162,129.1945918460"
					title="길찾기 페이지로 이동" style="background-color: #1b9efb"
					target="_blank"> <em>길찾기</em> <span></span>
				</a>
				</li>
				<li class="link_navi">
					<!-- 기본 노출 영역 --> <a href="javascript:showNevi();"
					title="내비게이션으로 이동" style="background-color: #edaf00"> <em>내비게이션</em>
						<span></span>
				</a>
				</li>
				<!-- 1002 로드뷰 삭제 -->
				<li class="link_map" style="background-color: #e84c57"><a
					href="#" title="로드뷰로 이동"> <em>로드뷰</em> <span></span>
				</a></li>
				<!-- // 1002 로드뷰 삭제 -->
				<li class="link_phone">
					<!-- 기본 노출 영역 --> <a href="tel:010-4252-4420" title="전화걸기"
					style="background-color: #49c9a3"> <em>전화걸기</em> <span></span>
				</a>
				</li>
			</ul>
			<!-- //중간 배너 -->

			<!-- 태그 -->
			<div class="tag_cont" style="padding-right: 0px;">
				<div class="inr" style="height: 70px;">
					<ul class="clfix">

						<%
						String tag = item.getTag();
						System.out.print(tag);
						String[] tagArr = tag.split(" ");
						for (int i = 0; i < tagArr.length; i++) {
						%>
						<li><a href="#"><span><%=tagArr[i]%></span></a></li>
						<%
						}
						%>

					</ul>
				</div>
				<button type="button" class="btn_more" style="display: none;">더보기</button>
			</div>
			<!-- //태그 -->

			<!-- 여행톡 -->
			<h3 class="blind">여행 후기</h3>
			<div id="replyGo">
				<div class="replyWrap">
					<!-- login 추가시 로그인 후 form -->
					<h3 class="tit_reply" style="padding: 20px">
						후기<span>0</span>
					</h3>
					<div class="write" style="height: 250px">
						<div class="form">
							<form name="tform" id="tform">

								<textarea name="review" rows="" id="comment215"
									placeholder="소중한 후기를 남겨주세요." cols=""
									onkeydown="commentresize(this);"
									style="width: 900px; height: 150px; margin-top: -50px;"></textarea>
								<div class="fileRegbtn_wrap">
									<%
									if (info != null) {
									%>

									<a href="javascript:void(0)" id="regi" onclick="regi_review()">등록하기</a>
									<%
									} else {
									%>
									<a href="#" class="btn_apply ContentComment">로그인</a>
									<%
									}
									%>
								</div>
							</form>
						</div>
					</div>

					<div class="wrap_reply">
						<div class="list_reply">
							<ul>
							</ul>
							<div class="btn_center" id="commentMore" style="display: none">
								<a href="javascript:" class="btn_more">댓글 더보기</a>
							</div>
						</div>
					</div>

					<div style="text-align: right; margin: 20px;">
						<a href="ItemReservService?num=<%=item.getNum()%>" style="">

							<button type="button" class="btn btn-primary btn-lg"
								style="background-color: #6A5ACD;">예약하러가기</button>

						</a>
					</div>
				</div>
			</div>
			<!-- //여행톡 -->

			<footer>
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<p>
								Copyright Â© 2036 <a href="#">WoOx Travel</a> Company. All
								rights reserved. <br>Design: <a
									href="https://templatemo.com" target="_blank"
									title="free CSS templates">TemplateMo</a> Distribution: <a
									href="https://themewagon.com target="_blank" >ThemeWagon</a>
							</p>
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
				function regi_review() {
						let regi_value = $("#comment215").val();
						let gc_num = <%=item.getNum()%>;
						console.log(regi_value);
						console.log(gc_num);

						$.ajax({	
							url : 'ReviewService',
							
							data : {
								'review_content' : regi_value,
								'gc_num' : gc_num,
							},
							type : 'get',
						
							success : function(data) {
								alert("성공!!!")},
							error : function(request,status,error){
							        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							      }

						}); 
					}

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
</body>

</html>
