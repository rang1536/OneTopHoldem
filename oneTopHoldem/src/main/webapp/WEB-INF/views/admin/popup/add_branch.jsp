<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	tr{margin-top:2px;margin-bottom:2px;}
</style>

<!--본문시작  -->
<div class="modal" id="addBranch" role="dialog">
<div class="modal-dialog modal-lg">

<!-- Modal content-->
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 style="color:red;"><span class="glyphicon glyphicon-check"></span> 지점등록</h4>
		</div>
		<div class="modal-body">
			<h4 style="font-size:14px;">(* 표시된 항목은 필수입력 사항입니다.)</h4>
			<form role="form" id="addBranchForm" method="post">
				<table style="width:100%;">
					<tr>
						<td><span style="color:red;">*</span>ID</td>
						<td><input type="text" class="form-control" name="loginId" id="loginId" onblur="overlapCheck(this.value);"/></td>
						<td><span style="color:red;">*</span>비밀번호</td>
						<td><input type="password" class="form-control" name="loginPassword" id="loginPassword" placeholder="4자리이상 입력"/></td>
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
						<td><span style="color:red;">*</span>비번재입력</td>
						<td><input type="password" class="form-control" name="reLoginPassword" id="reLoginPassword"/></td>
					</tr>
					<tr>
						<td><span style="color:red;">*</span>커미션</td>
						<td><input type="text" class="form-control" name="commission" style="width:90%;" id="commission" onkeyup="isNum(this.value, 'commission');" placeholder="숫자만 입력"/></td>
						<td><span style="color:red;">*</span>추천인ID</td>
						<td><input type="text" class="form-control" name="recommendAccountId" id="recommendAccountId"/></td>
					</tr>
					<tr>
						<td><span style="color:red;">*</span>연락처</td>
						<td><input type="text" class="form-control" name="telephone" id="telephone" onkeyup="isNum(this.value, 'telephone');" placeholder="숫자만 입력"/></td>
						<td>연락처2</td>
						<td><input type="text" class="form-control" name="hp2" id="hp2" onkeyup="isNum(this.value, 'hp2');" placeholder="숫자만 입력"/></td>
					</tr>
					<tr>
						<td colspan="4" style="text-align:left;"><br/>&nbsp;&nbsp;특이사항</td>						
					</tr>
					<tr>
						<td colspan="4">
							<textarea row="5" class="form-control" name="accountText" id="accountText"></textarea>
						</td>
					</tr>
				</table>
				<br/>
				<button type="button" class="btn btn-default btn-success btn-block" onclick="addBranch();">
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
