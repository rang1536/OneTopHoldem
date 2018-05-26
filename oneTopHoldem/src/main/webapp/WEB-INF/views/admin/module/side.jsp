<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>ONE TOP HOLD'EM</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="resources/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

	
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<style>
		.topMenu{font-weight:bold;color:#black;margin-left:20px;margin-right:20px;}
	</style>
	
	<script>
		function mmsList(){
			var id = '${id}';
			$.ajax({
				url : 'mmsList',
				data : {'loginId':id},
				dataType : 'json',
				type:'post',
				success : function(data){
					// 무슨 메세지를 본다는건지 확인요망. 보낸 문자인지 나한테 온 공지를 본다는건지?
				}
			})
			$('#mmsList').modal();
		}
		
		function modifyMyInfo(){
			var accountId = '${accountId}';
			$.ajax({
				url : 'readAccount',
				data : {'accountId':accountId},
				dataType:'json',
				type:'post',
				success:function(data){
					$('#modifyAccount').find('#accountId').val(data.accountId);
					$('#modifyAccount').find('#loginId').val(data.loginId);
					$('#modifyAccount').find('#createdDate').text(data.createdDate);
					$('#modifyAccount').find('#commission').val(data.commission);
					$('#modifyAccount').find('#recommendAccountId').val(data.recommendAccountId);
					$('#modifyAccount').find('#telephone').val(data.telephone);
					$('#modifyAccount').find('#accountText').val(data.accountText);
					
					$('#modifyMyInfo').modal();
				}
			})
		}
		
		
		//지점수정
		function modifyBranch(){
			var loginPassword = $('#modifyMyInfoForm').find('#loginPassword').val();
			var reLoginPassword = $('#modifyMyInfoForm').find('#reLoginPassword').val();
			
			if(loginPassword != null && loginPassword != ''){ //비밀번호를 입력했다면 재입력 비번과 확인하여 다르면 같게 입력하게함.
				if(loginPassword != reLoginPassword){
					alert('비밀번호가 다릅니다 다시 입력하세요');
					$('#modifyAccountForm').find('#reLoginPassword').val('');
					$('#modifyAccountForm').find('#reLoginPassword').focus();
					return;
				}
			}
			
			$('#modifyAccountForm').attr('action','modifyAccount').submit();
		}
	</script>
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">One-Top Hold'em 관리자</a>
               <%--  <c:if test="${grade eq 1 }"> --%>
                	<a class="navbar-brand topMenu" href="branchManagement" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''">지점관리</a>
	                <a class="navbar-brand topMenu" href="userManagement" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''">회원정보관리</a>
	                <a class="navbar-brand topMenu" href="gameManagement" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''">게임관리</a>
	                <a class="navbar-brand topMenu" href="inOutManagement" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''">입출금관리</a>
	                <a class="navbar-brand topMenu" href="event" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''">이벤트관리</a>
	                <a class="navbar-brand topMenu" href="importManagement" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''">수익관리</a>
               <%--  </c:if>
                <c:if test="${grade ne 1 }">
                	<a class="navbar-brand topMenu" href="branchManagement" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''">지점관리</a>
	                <a class="navbar-brand topMenu" href="userManagement" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''">회원정보관리</a>
                </c:if> --%>
                
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
               <!--  <li class="dropdown">
                    <a  href="#">
                        <i class="fa fa-envelope fa-fw"></i>메세지보기
                    </a>
                </li>
               
                <li class="dropdown">
                    <a href="#">
                        <i class="fa fa-user fa-fw"></i>정보수정
                    </a>
                </li> -->
               
                <li class="dropdown">
                    <a href="#">
                        <i class="fa fa-sign-out fa-fw"></i>Logout
                    </a>
                    <!-- /.dropdown-alerts -->
                </li>             
            </ul>
            <!-- 상단네비바 종료 -->

			<!-- 왼쪽 사이드 메뉴 -->
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                    	<li>
                    		<a href="#" onclick="mmsList();"><i class="fa fa-envelope fa-fw"></i>  메세지보기</a>
                    		<a href="#" onclick="modifyMyInfo();"><i class="fa fa-user fa-fw"></i>  개인정보수정</a>							
                    	</li>
                    	
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="미구현">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> 본사<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                            	<li>
                                    <a href="#">지점1 <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                       	<li>
                                            <a href="#">PC방1</a>
                                        </li>
                                        <li>
                                             <a href="#">PC방2</a>
                                        </li> 
                                        
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                                <li>
                                    <a href="#">지점2 <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                   		<li>
                                           <a href="#">PC방1</a>
                                        </li>
                                        <li>
                                             <a href="#">PC방2</a>
                                        </li> 
                                    </ul>
                                </li>
                             	<li>
                                    <a href="#">지점3 <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                    	<li>
                                           <a href="#">PC방1</a>
                                        </li>
                                        <li>
                                             <a href="#">PC방2</a>
                                        </li>
                                    </ul>
                                </li>
                               
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
<!--사이드메뉴 종료  -->

       
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <!-- <script src="resources/vendor/jquery/jquery.min.js"></script> -->
	<script src="resources/js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/dist/js/sb-admin-2.js"></script>

	
</body>

</html>
