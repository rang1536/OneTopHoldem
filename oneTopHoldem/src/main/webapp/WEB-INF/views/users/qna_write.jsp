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
					<li><a href="faqMenu">· FAQ</a></li>
					<li><a href="noticeList">· 공지사항</a></li>
					<li class="over"><a href="qna_write.html">· 1:1문의</a></li>
				</ul>
			</div>
			<div><img src="resources/img/sub_down_btn.jpg"></div>
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
			
			<div id="write_form">
				<form name="fwrite" method="post" action="ok.html" enctype="multipart/form-data" onSubmit="return chkForm(this)"> 
				<table width=100% cellpadding=0 cellspacing=0>
					<tr>
						<th>제목</th>
						<td><input type="text" name="" class="frm_input" style="width:100%;"></td>
					</tr>
					<tr>
						<td colspan=2><textarea name="ir1" id="ir1" style="width:100%; height:400px"></textarea></td>
					</tr>
<!-- 					<tr>
						<th>첨부파일</th>
						<td><input type="file" name="" class="frm_file frm_input"></td>
					</tr>
 -->				</table>
				</form>
			</div>
			<div style="padding:10px 0 15px 0;text-align:center;"><input type="submit" value="작성완료" id="btn_submit" accesskey="s" class="btn_submit"> <a href="qna_list.html" class="btn01">취소</a></div>
		</div>
	</div>

	<script type="text/javascript">
	var oEditors = [];
	$(function(){
	  nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "ir1", //textarea에서 지정한 id와 일치해야 합니다.
		//SmartEditor2Skin.html 파일이 존재하는 경로
		sSkinURI:"/plugin/smarteditor2/SmartEditor2Skin.html",
		htParams : {
		  // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		  bUseToolbar : true,
		  // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		  bUseVerticalResizer : true,
		  // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		  bUseModeChanger : true,
		  fOnBeforeUnload : function(){
			//예제 코드
			//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
		  }
		},
		fCreator: "createSEditor2"
	  });
	 
	});
	 


	 
	$("#btn_submit").click(function(){


	  oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
	  var ir1 = $("#ir1").val();
	  if( ir1 == ""  || ir1 == null || ir1 == '&nbsp;' || ir1 == '<p>&nbsp;</p>')  {
		alert("내용을 입력하세요.");
		oEditors.getById["ir1"].exec("FOCUS"); //포커싱
		return false;
	  }
	 
	})
	 
	</script>


	<!---- content ---------->



	<!---- footer ---------->
	<c:import url="../module/footer.jsp"></c:import>
	<!---- footer ---------->
</div>

</body>
</html>