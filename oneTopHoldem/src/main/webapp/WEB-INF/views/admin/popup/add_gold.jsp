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
<div class="modal" id="addGold" role="dialog">
<div class="modal-dialog">

<!-- Modal content-->
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 style="color:red;"><span class="glyphicon glyphicon-check"></span> 골드증여</h4>
		</div>
		<div class="modal-body">
			<form role="form" id="addGoldForm">
				<input type="hidden" id="accountId"/>
				<table style="width:100%;">
					<tr>
						<td style="text-align:center;" id="targetTd"></td>
					</tr>
					<tr>
						<td><br/><input type="text" class="form-control" name="addGoldText" id="addGoldText" onkeyup="isNumGold(this.value, 'addGoldText');" placeholder="보내실 골드 입력" /><br/></td>
					</tr>
				</table>
				<br/>
				<button type="button" class="btn btn-default btn-success btn-block" onclick="addGoldSubmit();">
					<span class="glyphicon glyphicon-off"></span>
					증여
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