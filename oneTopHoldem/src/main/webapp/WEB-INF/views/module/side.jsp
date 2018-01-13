<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <a class="navbar-brand topMenu" href="branchManagement" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''">지점관리</a>
                <a class="navbar-brand topMenu" href="userManagement" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''">회원정보관리</a>
                <a class="navbar-brand topMenu" href="gameManagement" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''">게임관리</a>
                <a class="navbar-brand topMenu" href="inOutManagement" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''">입출금관리</a>
                <a class="navbar-brand topMenu" href="#" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''">이벤트관리</a>
                <a class="navbar-brand topMenu" href="eventList.do" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''">수익관리</a>
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
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> 목록<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                            	<li>
                                    <a href="#">단과 <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                       <!--  <li>
                                            <a href="userList?relationType=1&relation1=공공인재학부">공공인재학부</a>
                                        </li>
                                        <li>
                                            <a href="userList?relationType=1&relation1=지미카터국제학부">지미카터국제학부</a>
                                        </li> -->
                                        
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                                <li>
                                    <a href="#">일반대학원 <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                    	<li>
                                            <a href="userList?relationType=2&relation1=0">농업개발대</a>
                                        </li>
                                    </ul>
                                </li>
                             	<li>
                                    <a href="#">특수대학원 <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                    	<li>
                                            <a href="userList?relationType=3&relation1=0">경영대학원</a>
                                        </li>
                                        <li>
                                            <a href="userList?relationType=3&relation1=1">교육대학원</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">전문대학원 <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                    	<li>
                                            <a href="userList?relationType=4&relation1=0">법학전문대학원</a>
                                        </li>
                                        <li>
                                            <a href="userList?relationType=4&relation1=1">의학전문대학원</a>
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
    <script src="resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/dist/js/sb-admin-2.js"></script>

</body>

</html>
