
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>
	<%
		// 로그인 정보 info
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>

	<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header" class="alt">
						<a href="index.html" class="logo"><strong>Forty</strong> <span>by HTML5 UP</span></a>
						<nav>
							<!-- Q6. 로그인을 한 상태에서는 로그인탭 대신 로그아웃탭과 개인정보수정탭을 출력 -->
							<% if(info == null){ %>
								<a href="#menu">로그인</a>
							<%}else{ %>
								<a href="./UpdateMember.jsp"> 개인정보수정 </a>
								
								<%if(info.getEmail().equals("admin")){ %>
									<a href="./ShowMember.jsp"> 회원정보관리 </a>
								<%} %>
								<!-- Q8. 로그아웃 기능 만들기 -->
								<!-- 로그아웃 : session에서 info데이터 지우기 -->
								<a href="LogoutService.do"> 로그아웃 </a>
							<%} %>
							
							<!-- Q7. 개인정보수정 기능 만들기 -->
							<!-- Q9. 관리자 계정(admin)일 때는 회원정보관리 탭 만들기 -->
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">	
						<ul class="links">
						<!-- Q3. 로그인 기능 만들기 -->
						<!-- 사용자가 입력한 email, pw가 회원table 있는지 없는지 조회 -->
						<!-- select * from web_member where email = 사용자email and pw = 사용자pw -->
							<li><h5>로그인</h5></li>
								<form action="LoginService.do" method="post">
									<li><input type="text" name="email" placeholder="Email을 입력하세요"></li>
									<li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
									<li><input type="submit" value="LogIn" class="button fit"></li>
								</form>
						</ul>
						<ul class="actions vertical">
						<!-- Q1. 회원가입 기능 만들기 -->
						<!-- 사용자가 입력한(email, pw, tel, address) 데이터가 회원 table에 삽입되는 것 -->
							<li><h5>회원가입</h5></li>
								<form action="JoinService.do" method="post">
									<li><input type="text" name="email" placeholder="Email을 입력하세요" id="inputE"></li>
									<li><input type="button" value="email중복체크" onclick="checkE()"></li>
									<li><span id="resultCheckE"></span></li>
									<li><input type="password" name="pw"  placeholder="PW를 입력하세요"></li>
									<li><input type="text" name="tel" placeholder="전화번호를 입력하세요"></li>
									<li><input type="text" name="address" placeholder="집주소를 입력하세요"></li>
									<li><input type="submit" value="JoinUs" class="button fit"></li>
								</form>
						</ul>
					</nav>			
				<!-- Banner -->
					<section id="banner" class="major">
						<div class="inner">
							<header class="major">
							<!-- Q4. 로그인 후 로그인한 사용자의 아이디로 바꾸기 -->
							<!-- ex) smhrd님 환영합니다.  -->
							
							
									<% if(info !=null){ %>	
										<h1> <%= info.getEmail() %> 님 환영합니다. </h1>
									<%}else{ %>
										<h1> 로그인 한 세션아이디를 출력해주세요 </h1>
									<%} %>
							</header>
							<div class="content">
								<p>게시판을 이용해보세요 ^^<br></p>
								<ul class="actions">
									<li><a href="BoardMain.jsp" class="button next scrolly">게시판 바로가기</a></li>
								</ul>
							</div>
						</div>
					</section>

				<!-- Main -->
					<div id="main">

						<!-- One -->
							<section id="one" class="tiles">
								<article>
									<span class="image">
										<img src="images/pic01.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">HTML</a></h3>
										<p>홈페이지를 만드는 기초 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic02.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">CSS</a></h3>
										<p>HTML을 디자인해주는 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic03.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">Servlet/JSP</a></h3>
										<p>Java를 기본으로 한 웹 프로그래밍 언어/스크립트 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic04.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">JavaScript</a></h3>
										<p>HTML에 기본적인 로직을 정의할 수 있는 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic05.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">MVC</a></h3>
										<p>웹 프로젝트 중 가장 많이 사용하는 디자인패턴</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic06.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">Web Project</a></h3>
										<p>여러분의 최종프로젝트에 웹 기술을 활용하세요!</p>
									</header>
								</article>
							</section>
					<!-- Two -->
							<%
								MessageDAO dao = new MessageDAO();
								//로그인인 안되어 있으면 info <- null
								ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();
								if(info!=null){
									list = dao.showMessage(info.getEmail());
									System.out.print(list.size());
									//3. 가지고온 메세지 리스트의 사이즈만 출력
									//받는 사람 이메일 : 현재 로그인한 사람의 이메일
									//메세지 보낼때마다 출력되는 사이즈가 1씩 증가하면 됨
								}
							%>
							<section id="two">
								<div class="inner">
									<header class="major">
										<h2>나에게 온 메세지 확인하기</h2>
									</header>
									<p></p>
									<ul class="actions">
										<!-- Q12. 로그인 이메일 출력! -->
										<!-- ex) smhrd님에게 온 메시지  -->
										<%if(info==null){ //로그인을 안한 경우 %>
										<li>로그인을 하세요.</li>
										<%}else{ %>
										<!-- Q14. 메시지 전체 삭제 기능 -->								
										<li><a href="DeleteAllService.do" class="button next scrolly">전체삭제하기</a></li>
										<%} %>
									</ul>
									<table>
										<tr>
											<th>번호</th>
											<th>보낸 사람</th>
											<th>내용</th>
											<th>보낸 시간</th>
										</tr>
										<%for(int i=0; i<list.size(); i++) {%>
										<tr>
											<td><%=i+1 %></td>
											<td><%=list.get(i).getSendName() %></td>
											<td><%=list.get(i).getMessage() %></td>
											<td><%=list.get(i).getM_date() %></td>
											<td><a href="DeleteService.do?num=<%=list.get(i).getNum()%>">삭제</a></td>
										</tr>
										
										<%} %>
									</table>
									<!-- Q13. table형태로 나한테 온 메시지만 가져와서 보여주기
											 번호, 보낸사람, 내용, 시간 -->
									<!-- Q15. 메시지 개별 삭제 기능 -->								
								</div>
							</section>

					</div>

				<!-- Contact -->
					<section id="contact">
						<div class="inner">
							<section>
							<!-- Q11. 메시지 보내기 기능(메시지는 계속 확인하기 위해서 DB에 저장!) -->
							<!-- 다른 사람의 DB에 메시지 저장해보기! -->
								<form action="MessageService.do" method="post">
								<div class="field half first">
										<label for="name">Name</label>
										<input type="text"  id="name" name="sendName"  placeholder="보내는 사람 이름" />
									</div>
									<div class="field half">
										<label for="email">Email</label>
										<input type="text"  id="email" name="receiveEmail" placeholder="받는 사람 이메일"/>
									</div>

									<div class="field">
										<label for="message">Message</label>
										<textarea  id="message" rows="6" name="message"></textarea>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Send Message" class="special" /></li>
										<li><input type="reset" value="Clear" /></li>
									</ul>
								</form>
							</section>
							
							<section class="split">
								<section>
									<div class="contact-method">
										<span class="icon alt fa-envelope"></span>
										<h3>Email</h3>
										<!-- Q5. 로그인 한 사용자의 이메일을 출력 -->
										<%if(info != null){ %>
											<a href=#> <%= info.getEmail() %></a>
										<%}else{ %>
											<a href="#">로그인 한 사람의 이메일을 출력</a>
										<%} %>
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-phone"></span>
										<h3>Phone</h3>
										<!-- Q5. 로그인 한 사용자의 전화번호를 출력 -->
										<%if(info != null){ %>
											<span> <%= info.getTel() %></span>
										<%}else{ %>
											<span>로그인 한 사람의 전화번호를 출력</span>
										<%} %>
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-home"></span>
										<h3>Address</h3>
										<!-- Q5. 로그인 한 사용자의 집주소를 출력 -->
											<%if(info != null){ %>
											<span> <%= info.getAddress() %></span>
										<%}else{ %>
											<span>로그인 한 사람의 집주소를 출력</span>
										<%} %>
									</div>
								</section>
							</section>					
						</div>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<ul class="icons">
								<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon alt fa-linkedin"><span class="label">LinkedIn</span></a></li>
							</ul>
							<ul class="copyright">
								<li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
			<script>
				function checkE(){
					let inputE = $("#inputE").val();
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






