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
					<li><a href="faq">· FAQ</a></li>
					<li><a href="noticeList">· 공지사항</a></li>
					<li class="over"><a href="qnaWrite">· 1:1문의</a></li>
				</ul>
			</div>
			<div><a href="https://s3.ap-northeast-2.amazonaws.com/onetop/HoldemSetup.exe"><img src="resources/img/sub_down_btn.jpg"></a></div>
		</div>
		<div id="container">
			<div style="padding-bottom:10px;">
				<span id="container_title">1:1문의</span>
				<div class="sub_nav"><img src="resources/img/home_icon.jpg"> HOME&nbsp;&nbsp;>&nbsp;&nbsp;고객센터&nbsp;&nbsp;>&nbsp;&nbsp;<b>1:1문의</b></div>
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

			<div id="notice_list">
				<table width=100% cellpadding=0 cellspacing=0>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>날짜</th>
						<th>작성자</th>
					</tr>
					<tr>
						<td class="num">10</td>
						<td class="subject"><a href="qna_view.html">[점검완료] 1/04 (목) "홀덤" 서버 점검 완료(9:00 ~11:00)</a></td>
						<td class="date">2018-01-01</td>
						<td class="name">홍길동</td>
					</tr>
					<tr>
						<td class="num">9</td>
						<td class="subject"><a href="qna_view.html">[점검완료] 1/04 (목) "홀덤" 서버 점검 완료(9:00 ~11:00)</a></td>
						<td class="date">2018-01-01</td>
						<td class="name">홍길동</td>
					</tr>
					<tr>
						<td class="num">8</td>
						<td class="subject"><a href="qna_view.html">[점검완료] 1/04 (목) "홀덤" 서버 점검 완료(9:00 ~11:00)</a></td>
						<td class="date">2018-01-01</td>
						<td class="name">홍길동</td>
					</tr>
					<tr>
						<td class="num">7</td>
						<td class="subject"><a href="qna_view.html">[점검완료] 1/04 (목) "홀덤" 서버 점검 완료(9:00 ~11:00)</a></td>
						<td class="date">2018-01-01</td>
						<td class="name">홍길동</td>
					</tr>
					<tr>
						<td class="num">6</td>
						<td class="subject"><a href="qna_view.html">[점검완료] 1/04 (목) "홀덤" 서버 점검 완료(9:00 ~11:00)</a></td>
						<td class="date">2018-01-01</td>
						<td class="name">홍길동</td>
					</tr>
					<tr>
						<td class="num">5</td>
						<td class="subject"><a href="qna_view.html">[점검완료] 1/04 (목) "홀덤" 서버 점검 완료(9:00 ~11:00)</a></td>
						<td class="date">2018-01-01</td>
						<td class="name">홍길동</td>
					</tr>
					<tr>
						<td class="num">4</td>
						<td class="subject"><a href="qna_view.html">[점검완료] 1/04 (목) "홀덤" 서버 점검 완료(9:00 ~11:00)</a></td>
						<td class="date">2018-01-01</td>
						<td class="name">홍길동</td>
					</tr>
					<tr>
						<td class="num">3</td>
						<td class="subject"><a href="qna_view.html">[점검완료] 1/04 (목) "홀덤" 서버 점검 완료(9:00 ~11:00)</a></td>
						<td class="date">2018-01-01</td>
						<td class="name">홍길동</td>
					</tr>
					<tr>
						<td class="num">2</td>
						<td class="subject"><a href="qna_view.html">[점검완료] 1/04 (목) "홀덤" 서버 점검 완료(9:00 ~11:00)</a></td>
						<td class="date">2018-01-01</td>
						<td class="name">홍길동</td>
					</tr>
					<tr>
						<td class="num">1</td>
						<td class="subject"><a href="qna_view.html">[점검완료] 1/04 (목) "홀덤" 서버 점검 완료(9:00 ~11:00)</a></td>
						<td class="date">2018-01-01</td>
						<td class="name">홍길동</td>
					</tr>
				</table>
			</div>
			<div>
				<nav class="pg_wrap"><span class="pg">
				<a href="" class="pg_page pg_start">처음</a>
				<a href="" class="pg_page pg_prev"><</a>
				<a href="" class="pg_page">1</a>
				<strong class="pg_current">2</strong>
				<a href="" class="pg_page">3</a>
				<a href="" class="pg_page">4</a>
				<a href="" class="pg_page">5</a>
				<a href="" class="pg_page">6</a>
				<a href="" class="pg_page">7</a>
				<a href="" class="pg_page">8</a>
				<a href="" class="pg_page">9</a>
				<a href="" class="pg_page">10</a>
				<a href="" class="pg_page pg_next">></a>
				<a href="" class="pg_page pg_end">맨끝</a>
				</span></nav>
			</div>
		</div>
	</div>

	<!---- content ---------->



	<!---- footer ---------->
	<c:import url="../module/footer.jsp"></c:import>

	<!---- footer ---------->
</div>

</body>
</html>