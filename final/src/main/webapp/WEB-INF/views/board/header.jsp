<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
	<!-- <link href="http://img.cgv.co.kr/R2014/css/reset.css" rel="stylesheet"> -->
	<link href="/resources/css/cgv.css" rel="stylesheet">
	<link href="/resources/css/simplex.css" rel="stylesheet">

</head>

<body>
		
	

        
    <div class="display-5">
        
        
        
        <ul>
        <sec:authorize access="isAnonymous()">
			<li><a href="/customLogin">로그인</a></li>
		</sec:authorize>
        <sec:authorize access="isAuthenticated()">
            	
       			<sec:authentication property="principal.member.userName" var="userName"/>
       			<sec:authentication property="principal.member.userEmail" var="userEmail"/>
            <li>${userName}님, 반갑습니다.</li>
           </sec:authorize>
           
           <sec:authorize access="hasRole('ROLE_USER')">
            <li><a href="/myInfo">마이페이지</a></li>
            </sec:authorize>
              
             <sec:authorize access="hasRole('ROLE_ADMIN')">
            <li><a href="/admin_mem">관리자페이지</a></li>
            </sec:authorize>
            
			<sec:authorize access="isAnonymous()">
            <li><a href="/customSignup">회원가입</a></li>
            </sec:authorize>
            
            <sec:authorize access="isAuthenticated()">
    		<li><a href="#" onclick="document.getElementById('logout-form').submit();">로그아웃</a></li>
				<form id="logout-form" action='<c:url value='/customLogout'/>' method="POST">
   					<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
				</form>
			</sec:authorize>
           
        </ul>
    </div>

    <div class="jumbotron">
        <h1 class="display-3"><a href="/main">HONG-CINEMA</a></h1>
    </div>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="/main">메인으로</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarColor02">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" href="#">영화 <span class="sr-only">(current)</span></a>
                <ul class="sub-menu" style="padding:0px;">
                    <li><a href="/movieChart">무비 차트</a></li>
                    <li><a href="#">무비 파인더</a></li>
                </ul>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">예매 <span class="sr-only">(current)</span></a>
                  <ul class="sub-menu" style="padding:0px;">
                      <li><a href="/movieList">빠른예매</a></li>
                      <li><a href="/movieList">상영시간표</a></li>
                  </ul>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/board/boardList/total/1">게시판<span class="sr-only">(current)</span></a>
                    <ul class="sub-menu" style="padding:0px;">
                        <li><a href="/board/boardList/review/1" class="reviewBoardBtn">리뷰</a></li>
                        <li><a href="/board/boardList/recommand/1" class="recommandBoardBtn">추천</a></li>
                        <li><a href="/board/boardList/talk/1" class="talkBoardBtn">잡담</a></li>
                    </ul>
            </li>
          </ul>
          <form class="form-inline my-2 my-lg-0" action="/board/result" method='get'>
            <input class="form-control mr-sm-2" type="text" name="sear" placeholder="영화 검색">
            <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>     
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script type="text/javascript">
        $(document).ready(function(){
        	$('.reviewBoardBtn').on('click',function(){
        		window.location.href ='http://192.168.0.154:8080/board/boardList/review/1';
        	})
        	$('.recommandBoardBtn').on('click',function(){
        		window.location.href ='http://192.168.0.154:8080/board/boardList/recommand/1';
        	})
        	$('.talkBoardBtn').on('click',function(){
        		window.location.href ='http://192.168.0.154:8080/board/boardList/talk/1';
        	})
        })
        
        </script>
        
</html>        