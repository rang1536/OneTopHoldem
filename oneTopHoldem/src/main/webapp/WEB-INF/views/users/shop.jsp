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

<script>
function win(url){

	var popupX = (window.screen.width / 2) - (450 / 2);
	var popupY= (window.screen.height /2) - (600 / 2);

	window.open(url, '상품구매안내', 'status=no, height=600, width=450, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
}
</script>
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
				<div class="tt"><span class="big">머니샵</span><br>MONEY SHOP</div>
			</div>
			<div class="sub_menu">
				<ul>
					<li class="over"><a href="moneyShop">· 머니샵</a></li>
				</ul>
			</div>
			<div><a href="https://s3.ap-northeast-2.amazonaws.com/onetop/HoldemSetup.exe"><img src="resources/img/sub_down_btn.jpg"></a></div>
		</div>
		<div id="container">
			<div style="padding-bottom:10px;">
				<span id="container_title">머니샵</span>
				<div class="sub_nav"><img src="resources/img/home_icon.jpg"> HOME&nbsp;&nbsp;>&nbsp;&nbsp;머니샵&nbsp;&nbsp;>&nbsp;&nbsp;<b>머니샵</b></div>
			</div>
			

			<div id="money_list">
				<ul>
					<li>
						<a href=""><img src="resources/img/shop_img1.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 10억칩<br>
						<span class="blue">100,000 원</span>
						<div class="buy_btn"><a href="javascript:win('shopBuy')">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img2.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 10억칩<br>
						<span class="blue">100,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img3.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 10억칩<br>
						<span class="blue">100,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img4.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 10억칩<br>
						<span class="blue">100,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img5.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 10억칩<br>
						<span class="blue">100,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img6.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 5억칩<br>
						<span class="blue">50,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img7.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 5억칩<br>
						<span class="blue">50,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img8.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 5억칩<br>
						<span class="blue">50,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img9.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 5억칩<br>
						<span class="blue">50,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img10.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 5억칩<br>
						<span class="blue">50,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img11.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 3억칩<br>
						<span class="blue">30,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img12.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 3억칩<br>
						<span class="blue">30,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img13.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 3억칩<br>
						<span class="blue">30,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img14.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 3억칩<br>
						<span class="blue">30,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img15.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 3억칩<br>
						<span class="blue">30,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img16.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 1억칩<br>
						<span class="blue">10,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img17.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 1억칩<br>
						<span class="blue">10,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img18.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 1억칩<br>
						<span class="blue">10,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img19.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 1억칩<br>
						<span class="blue">10,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
					<li>
						<a href=""><img src="resources/img/shop_img20.jpg"></a><br><img src="resources/img/shop_icon.jpg"> 1억칩<br>
						<span class="blue">10,000 원</span>
						<div class="buy_btn"><a href="">구매하기</a></div>
					</li>
				</ul>
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