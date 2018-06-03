<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>원탑홀덤</title>
<link rel="stylesheet" href="resources/css/default.css">
<script src="resources/js/jquery-3.2.1.min.js"></script>
</head>


<body>

<!---- headr ---------->
<c:import url="../module/top.jsp"></c:import>

<!---- headr ---------->

<div id="warp">
	<!---- content ---------->

	<div id="content">
		<div id="aside">
			<div class="tit">
				<div class="tt"><span class="big">고객센터</span><br>CUSTOMER CENTER</div>
			</div>
			<div class="sub_menu">
				<ul>
					<li class="over"><a href="faqMenu">· FAQ</a></li>
					<!-- 
					<li><a href="noticeList">· 공지사항</a></li>
					<li><a href="qnaWrite">· 1:1문의</a></li>
					 -->
				</ul>
			</div>
			<div><img src="resources/img/sub_down_btn.jpg"></div>
		</div>
		<div id="container">
			<div style="padding-bottom:10px;">
				<span id="container_title">FAQ</span>
				<div class="sub_nav"><img src="resources/img/home_icon.jpg"> HOME&nbsp;&nbsp;>&nbsp;&nbsp;고객센터&nbsp;&nbsp;>&nbsp;&nbsp;<b>FAQ</b></div>
			</div>
			<div id="customer_center">
				<img src="resources/img/customer_icon.jpg">
				<div class="call">
					<div><b>상담전화</b> <span style="font-size:16pt;font-weight:800;color:#444;">063-273-8171</span><br><b>평일 Am 10:00 ~ Pm 19:00</b></div>
					<div style="font-size:9pt;">주말 및 공휴일은 1:1문의 게시판을 이용해주세요.</div>
				</div>
				<div class="mail">
					<div>이메일문의 <span style="font-size:10pt;color:#444;">onetopgamescom@gmail.com</span></div>
					<div style="padding-top:13px;font-size:9pt;"><span class="mail_btn">1:1문의</span>&nbsp;&nbsp;<span class="mail_btn">이메일 상담문의</span></div>
				</div>
			</div>
			<div id="tab">
				<ul>
					<li class="over" onclick="location.href='faqMenu'">회원정보</li>
					<li onclick="location.href='faqMenu'">게임관련</li>
					<li onclick="location.href='faqMenu'">결제</li>
					<li onclick="location.href='faqMenu'">기타</li>
				</ul>
			</div>

			<div id="faq_list">
				<ul id="fd_accordion" class="accordion">
					<li>
						<span class="fd_num">Q</span>
						<h3><span class="over">아이디 / 비밀번호를 어떻게 찾을 수 있을까요?</span></h3>
						
						<div class="panel loading" style="position:relative">
							<div class="fd_an"><img src="resources/img/fa_an.jpg"></div>
							<span>원탑 홀덤 홈페이지 로그인 영역에 있는 [아이디/비밀번호 찾기]을 클릭합니다.<br>
							휴대폰 인증과 아이핀 인증 중 하나의 방법을 선택하여 본인확인 절차를 거치면 고객님의 가입정보를 확인할 수 있습니다.<br>
							위의 방법으로도 확인이 불가능한 경우에는, 고객센터로 문의하여 주시면 처리방법을 안내 받으실 수 있습니다.</span>
						</div>					
					</li>
					<li>
						<span class="fd_num">Q</span>
						<h3><span class="over">아이디를 변경하고 싶습니다.</span></h3>
						
						<div class="panel loading" style="position:relative">
							<div class="fd_an"><img src="resources/img/fa_an.jpg"></div>
							<span>원탑 홀덤 홈페이지 로그인 영역에 있는 [아이디/비밀번호 찾기]을 클릭합니다.<br>
							휴대폰 인증과 아이핀 인증 중 하나의 방법을 선택하여 본인확인 절차를 거치면 고객님의 가입정보를 확인할 수 있습니다.<br>
							위의 방법으로도 확인이 불가능한 경우에는, 고객센터로 문의하여 주시면 처리방법을 안내 받으실 수 있습니다.</span>
						</div>					
					</li>
					<li>
						<span class="fd_num">Q</span>
						<h3><span class="over">개인정보는 어떻게 변경하나요?</span></h3>
						
						<div class="panel loading" style="position:relative">
							<div class="fd_an"><img src="resources/img/fa_an.jpg"></div>
							<span>원탑 홀덤 홈페이지 로그인 영역에 있는 [아이디/비밀번호 찾기]을 클릭합니다.<br>
							휴대폰 인증과 아이핀 인증 중 하나의 방법을 선택하여 본인확인 절차를 거치면 고객님의 가입정보를 확인할 수 있습니다.<br>
							위의 방법으로도 확인이 불가능한 경우에는, 고객센터로 문의하여 주시면 처리방법을 안내 받으실 수 있습니다.</span>
						</div>					
					</li>
					<li>
						<span class="fd_num">Q</span>
						<h3><span class="over">휴대폰 인증을 꼭 해야 하나요?</span></h3>
						
						<div class="panel loading" style="position:relative">
							<div class="fd_an"><img src="resources/img/fa_an.jpg"></div>
							<span>원탑 홀덤 홈페이지 로그인 영역에 있는 [아이디/비밀번호 찾기]을 클릭합니다.<br>
							휴대폰 인증과 아이핀 인증 중 하나의 방법을 선택하여 본인확인 절차를 거치면 고객님의 가입정보를 확인할 수 있습니다.<br>
							위의 방법으로도 확인이 불가능한 경우에는, 고객센터로 문의하여 주시면 처리방법을 안내 받으실 수 있습니다.</span>
						</div>					
					</li>
					<li>
						<span class="fd_num">Q</span>
						<h3><span class="over">회원 가입 시 실명인증이 안되요?</span></h3>
						
						<div class="panel loading" style="position:relative">
							<div class="fd_an"><img src="resources/img/fa_an.jpg"></div>
							<span>원탑 홀덤 홈페이지 로그인 영역에 있는 [아이디/비밀번호 찾기]을 클릭합니다.<br>
							휴대폰 인증과 아이핀 인증 중 하나의 방법을 선택하여 본인확인 절차를 거치면 고객님의 가입정보를 확인할 수 있습니다.<br>
							위의 방법으로도 확인이 불가능한 경우에는, 고객센터로 문의하여 주시면 처리방법을 안내 받으실 수 있습니다.</span>
						</div>					
					</li>
					<li>
						<span class="fd_num">Q</span>
						<h3><span class="over">회원 탈퇴는 어떻게 하나요?</span></h3>
						
						<div class="panel loading" style="position:relative">
							<div class="fd_an"><img src="resources/img/fa_an.jpg"></div>
							<span>원탑 홀덤 홈페이지 로그인 영역에 있는 [아이디/비밀번호 찾기]을 클릭합니다.<br>
							휴대폰 인증과 아이핀 인증 중 하나의 방법을 선택하여 본인확인 절차를 거치면 고객님의 가입정보를 확인할 수 있습니다.<br>
							위의 방법으로도 확인이 불가능한 경우에는, 고객센터로 문의하여 주시면 처리방법을 안내 받으실 수 있습니다.</span>
						</div>					
					</li>
					<li>
						<span class="fd_num">Q</span>
						<h3><span class="over">탈퇴 이후 재가입은 어떻게 하나요?</span></h3>
						
						<div class="panel loading" style="position:relative">
							<div class="fd_an"><img src="resources/img/fa_an.jpg"></div>
							<span>원탑 홀덤 홈페이지 로그인 영역에 있는 [아이디/비밀번호 찾기]을 클릭합니다.<br>
							휴대폰 인증과 아이핀 인증 중 하나의 방법을 선택하여 본인확인 절차를 거치면 고객님의 가입정보를 확인할 수 있습니다.<br>
							위의 방법으로도 확인이 불가능한 경우에는, 고객센터로 문의하여 주시면 처리방법을 안내 받으실 수 있습니다.</span>
						</div>					
					</li>
					<li>
						<span class="fd_num">Q</span>
						<h3><span class="over">회원가입은 성인만 가능한가요?</span></h3>
						
						<div class="panel loading" style="position:relative">
							<div class="fd_an"><img src="resources/img/fa_an.jpg"></div>
							<span>원탑 홀덤에서 제공되는 게임 서비스는 청소년 정보통신망 이용촉진 및 청소년 보호법에 의거하여 모든 서비스가 제공되고 있습니다. 따라서 게임의 이용 가능한 나이는 풀팟 정책에 명시된 바와 같이 출생 년도를 기준으로 연 19세 이상만 이용이 가능합니다.<br>(현재 년도 - 출생 년도 = 연 나이)</span>
						</div>					
					</li>
				</ul>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="resources/js/jquery.accordion.2.0.js" charset="utf-8"></script>
	<script type="text/javascript">
		$('#fd_accordion').accordion({
			canToggle: true;
		});
		$(".loading").removeClass("loading");
	</script>

	<!---- content ---------->



	<!---- footer ---------->
	<c:import url="../module/footer.jsp"></c:import>
	
	<!-- <div id="ft">
		<div style="float:left"><img src="img/bottom_logo.jpg"></div>
		<div class="txt">
		<a href="">이용약관</a><a href="">개인정보취급방침</a><br>
		원탑홀덤 대표 : 홍길동 &nbsp; 사업자번호 : 000-00-00000 &nbsp; 통신판매업 : 제2018-전주덕진-00000호<br>
		전북 전주시 덕진구 추탄로 48(덕진동2가) 이현빌딩 4층 &nbsp; 대표전화 063-273-8171<br>
		Copyright ⓒ 2018 ONETOP. All rights reserved.
		</div>
		<div style="float:right;padding-top:18px;">
			<table cellpadding=0 cellspacing=0 class="info">
				<tr>
					<td>제명</td>
					<td>원탑홀덤</td>
					<td>상호</td>
					<td>원탑게임즈</td>
				</tr>
				<tr>
					<td>이용등급</td>
					<td>청소년이용불가</td>
					<td>등급 분류번호</td>
					<td>00-00-000000-000</td>
				</tr>
				<tr>
					<td>제작년월일</td>
					<td>2018-01-01</td>
					<td>신고(등록)번호</td>
					<td>2018-000000호</td>
				</tr>
			</table>
		</div>
	</div> -->

	<!---- footer ---------->
</div>


</body>
</html>