<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	tr{margin-top:2px;margin-bottom:2px;}
</style>

<!--본문시작  -->
<div class="modal" id="mms" role="dialog">
<div class="modal-dialog">

<!-- Modal content-->
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 style="color:red;"><span class="glyphicon glyphicon-check"></span> 단체문자발송</h4>
		</div>
		<div class="modal-body">
			<form role="form" id="mmsForm">
				<table style="width:100%;">
					<tr>
						<td><input type="text" class="form-control" name="title" id="title" placeholder="제목" /></td>
					</tr>
					
					<tr>
						<td style="text-align:left;"><br/>&nbsp;&nbsp;&nbsp;내용</td>						
					</tr>
					<tr>
						<td>
							<textarea row="5" class="form-control" name="msg" id="msg" placeholder="메세지 입력(0/500)"></textarea>
						</td>
					</tr>
				</table>
				<br/>
				<button type="button" class="btn btn-default btn-success btn-block">
					<span class="glyphicon glyphicon-off"></span>
					 전송
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
