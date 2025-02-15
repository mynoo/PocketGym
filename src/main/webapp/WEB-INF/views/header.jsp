<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./common.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style type="text/css">
body {
    background:#f0f0f0;
}
img.logoimg {
    vertical-align: middle;
    width: 96px;
    margin-bottom: -26px;
    margin-top: -20px;
}
.nav {
    left:50%;
    margin-left:-150px;
    top:50px;
    position:absolute;
}
.nav>li>a:hover, .nav>li>a:focus, .nav .open>a, .nav .open>a:hover, .nav .open>a:focus {
    background:#fff;
}
.dropdown {
    background:#fff;
    border:1px solid #ccc;
    border-radius:4px;
    width:300px;    
}
.dropdown-menu>li>a {
    color:#428bca;
}
.dropdown ul.dropdown-menu {
    border-radius:4px;
    box-shadow:none;
    margin-top:20px;
    width:181px;
}
.dropdown ul.dropdown-menu:before {
    content: "";
    border-bottom: 0;
    border-right: 10px solid transparent;
    border-left: 10px solid transparent;
    position: absolute;
    top: -10px;
    right: 16px;
    z-index: 10;
}
.dropdown ul.dropdown-menu:after {
    content: "";
    border-bottom: 0;
    border-right: 12px solid transparent;
    border-left: 12px solid transparent;
    position: absolute;
    top: -12px;
    right: 14px;
    z-index: 9;
}
ul {
    margin-top: 45px;
    margin-right: 150px;
}
li.dropdown {
    margin-top: -28px;
    margin-left: 600px;
    width: 134px;
}
.nav-menu .mainmenu ul li a {
    font-size: 20px;
}
ul.nav.navbar-nav {
    width: 675px;
    height: 0px;
}
</style>

<script type="text/javascript">
	function check() {
		location.href='<%=request.getContextPath()%>/prcartlist.pr'
		
		if (${sessionScope.msg != null}) {
			alert('${sessionScope.msg}')	
		}
	}
</script>

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="container">
			<div class="logo">
				<a href="<%=contextPath%>/main.ma">
					<img class="logoimg" src="<%=contextPath%>/resources/img/logo_new.png" alt="">
				</a>
			</div>
			<div class="nav-menu">
				<nav class="mainmenu mobile-menu">
					<ul>
						<li><a href="<%=contextPath%>/main.ma">Home</a></li>
						<c:if test="${whologin ==0 }">
							<li><a href="<%=contextPath%>/login.me">식단</a></li>
							<li><a href="<%=contextPath%>/login.me">운동</a></li>
							
							<li><a href="<%=contextPath%>/login.me">메일</a></li>
						</c:if>
						<c:if test="${whologin !=0 }">
							<li><a
								href="<%=contextPath%>/mydietlist.di?id=${sessionScope.loginfo.id}" >식단</a></li>
							<li><a href="<%=contextPath%>/myroutine.ro">운동</a></li>
							<li><a href="<%=contextPath%>/maillist.ml?id=${sessionScope.loginfo.id}">메일</a></li>
						</c:if>
						<li><a href="<%=contextPath%>/brlist.br">커뮤니티</a></li>
						<li><a href="<%=contextPath%>/prlist.pr">쇼핑몰</a></li>
					</ul>
				</nav>

				<c:choose>
					<c:when test="${whologin==0 }">
						<a href="<%=contextPath%>/login.me" class="primary-btn signup-btn">로그인</a>
						<a href="<%=contextPath%>/insert.me"
							class="primary-btn signup-btn">회원가입</a>
					</c:when>
					<c:when test="${whologin !=0 }">






						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">${sessionScope.loginfo.nickname}님 <span
									class="glyphicon glyphicon-user pull-right"></span></a>
								<ul class="dropdown-menu">
								
								<c:if test="${whologin == 2}">
								
									<li><a href="<%=contextPath%>/list.me">회원 리스트<span
											class="glyphicon glyphicon-cog pull-right"></span></a></li>
									<li><a href="<%=contextPath%>/insert.pr">상품 등록<span
											class="glyphicon glyphicon-cog pull-right"></span></a></li>
									<li><a href="<%=contextPath%>/list.ex">운동 관리<span
											class="glyphicon glyphicon-cog pull-right"></span></a></li>
									<li><a href="<%=contextPath%>/list.ro">루틴 관리<span
											class="glyphicon glyphicon-cog pull-right"></span></a></li>
									<li><a href="<%=contextPath%>/logout.me">로그아웃<span
											class="glyphicon glyphicon-cog pull-right"></span></a></li>
								
								</c:if>
								
								
								
								
								
								
								<c:if test="${whologin != 2}">
									<li><a href="<%=contextPath%>/detail.me">나의 상세정보<span
											class="glyphicon glyphicon-cog pull-right"></span></a></li>
									<li><a href="<%=contextPath%>/plan.me">나의 몸무게 변화<span
											class="glyphicon glyphicon-cog pull-right"></span></a></li>
									<li><a href="<%=contextPath%>/myroutine.ro">나의 운동 루틴<span
											class="glyphicon glyphicon-cog pull-right"></span></a></li>
									<li><a href="<%=contextPath%>/mybolist.br?mode='작성자 아이디'&keyword=${sessionScope.loginfo.id}">나의 게시판<span
                                 class="glyphicon glyphicon-cog pull-right"></span></a></li>
									<li><a href="#" onclick="check();">나의 장바구니 보기<span
											class="glyphicon glyphicon-cog pull-right"></span></a></li>
											
									<li><a href="#" onclick="window.open('<%=contextPath%>/myweightinsert.me','window팝업','width=600, height=500');">
									나의 몸무게 기록<span class="glyphicon glyphicon-cog pull-right"></span></a></li>
											
									<li><a href="<%=contextPath%>/delete.me?id=${sessionScope.loginfo.id}" 
									onclick="return confirm('정말 탈퇴하시겠습니까?');">회원탈퇴<span
											class="glyphicon glyphicon-cog pull-right"></span></a></li>
									<li><a href="<%=contextPath%>/logout.me">로그아웃<span
											class="glyphicon glyphicon-cog pull-right"></span></a></li>
								</c:if>
											
											
								</ul></li>
						</ul>



					</c:when>
				</c:choose>

			</div>
			<div id="mobile-menu-wrap"></div>
		</div>
		<script type="text/javascript">
			$('.dropdown-toggle').dropdown()
		</script>
	</header>
	<!-- Header End -->
</body>

</html>