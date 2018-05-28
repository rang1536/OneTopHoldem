<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	tr{margin-top:2px;margin-bottom:2px;}
	th{text-align:center;}
</style>
</head>
<body>
<!--본문시작  -->
<div class="modal" id="mmsList" role="dialog">
<div class="modal-dialog modal-lg">

<!-- Modal content-->
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 style="color:red;"><span class="glyphicon glyphicon-check"></span> 메세지보기</h4>
		</div>
		<div class="modal-body">
			<table style="width:100%;">
				<thead>
					<tr>
						<th style="width:20%;">보낸사람</th>
						<th style="width:15%;">날짜</th>
						<th style="width:15%;">시간</th>
						<th style="width:50%;">제목</th>
					</tr>
				</thead>
				<tbody id="mmsListTbody">
				
				</tbody>
			</table>
			<br/>
		</div>
		<div class="modal-footer">
			<button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
		</div>
	</div>
</div>
</div> 
</body>
</html>