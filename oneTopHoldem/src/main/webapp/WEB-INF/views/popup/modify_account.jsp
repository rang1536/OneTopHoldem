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
<div class="modal fade" id="modifyAccount" role="dialog">
<div class="modal-dialog modal-lg">

<!-- Modal content-->
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 style="color:red;"><span class="glyphicon glyphicon-check"></span> 정보수정</h4>
		</div>
		<div class="modal-body">
			<form role="form" id="modifyAccountForm" method="post">
				<input type="hidden" name="accountId" id="accountId"/>
				<table style="width:100%;">
					<tr>
						<td>ID</td>
						<td><input type="text" class="form-control" name="loginId" id="loginId" readonly/></td>
						<td>비밀번호</td>
						<td><input type="text" class="form-control" name="loginPassword"/></td>
					</tr>
					<tr>
						<td>가입일</td>
						<td id="todayTd" style="text-align:left;">
							
						</td>
						<td>비번재입력</td>
						<td><input type="text" class="form-control" name="reLoginPassword"/></td>
					</tr>
					<tr>
						<td>커미션</td>
						<td><input type="text" class="form-control" name="commission" style="width:90%;" id="commission" onkeyup="isNum();"/></td>
						<td>추천인ID</td>
						<td><input type="text" class="form-control" name="recommendAccountId" id="recommendAccountId" readonly /></td>
					</tr>
					<tr>
						<td>연락처</td>
						<td><input type="text" class="form-control" name="telephone" id="telephone" onkeyup="isNum();"/></td>
						<td>연락처</td>
						<td><input type="text" class="form-control" name="hp2" id="hp2" onkeyup="isNum();" /></td>
					</tr>
					<tr>
						<td colspan="4" style="text-align:left;"><br/>&nbsp;&nbsp;&nbsp;특이사항</td>						
					</tr>
					<tr>
						<td colspan="4">
							<textarea row="5" class="form-control" name="accountText" id="accountText" ></textarea>
						</td>
					</tr>
				</table>
				<br/>
				<button type="button" class="btn btn-default btn-success btn-block" onclick="modifyBranch();">
					<span class="glyphicon glyphicon-off"></span>
					 수정
				</button>
				<br/>
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