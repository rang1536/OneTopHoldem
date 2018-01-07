<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	tr{margin-top:2px;margin-bottom:2px;}
</style>
</head>
<body>
<!--본문시작  -->
<div class="modal fade" id="addBranch" role="dialog">
<div class="modal-dialog modal-lg">

<!-- Modal content-->
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 style="color:red;"><span class="glyphicon glyphicon-check"></span> 지점등록</h4>
		</div>
		<div class="modal-body">
			<form role="form" id="approvalForm">
				<table style="width:100%;">
					<tr>
						<td>ID</td>
						<td><input type="text" class="form-control" name="accountId"/></td>
						<td>비밀번호</td>
						<td><input type="text" class="form-control" name="loginPassword"/></td>
					</tr>
					<tr>
						<td>가입일</td>
						<td id="todayTd" style="text-align:left;">
							<script>
								var date = new Date();
								var now = date.getFullYear() +"-"+ (date.getMonth()+1)+"-"+date.getDate();
								$('#todayTd').text(now);
							</script>
						</td>
						<td>비번재입력</td>
						<td><input type="text" class="form-control" name="reLoginPassword"/></td>
					</tr>
					<tr>
						<td>커미션</td>
						<td><input type="text" class="form-control" name="commission" style="width:90%;"/></td>
						<td>추천인ID</td>
						<td><input type="text" class="form-control" name="recommendAccountId"/></td>
					</tr>
					<tr>
						<td>연락처</td>
						<td><input type="text" class="form-control" name="hp"/></td>
						<td>연락처</td>
						<td><input type="text" class="form-control" name="hp2"/></td>
					</tr>
					<tr>
						<td colspan="4">특이사항</td>						
					</tr>
					<tr>
						<td colspan="4">
							<textarea row="5" class="form-control"></textarea>
						</td>
					</tr>
				</table>
				<br/>
				<button type="button" class="btn btn-default btn-success btn-block" id="approvalBtn">
					<span class="glyphicon glyphicon-off"></span>
					 등록
				</button>
			</form>
		</div>
		<div class="modal-footer">
			<button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
		</div>
	</div>
</div>
</div> 
</body>
</html>