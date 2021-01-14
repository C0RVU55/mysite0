<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- 
<%@ page import= "com.javaex.vo.UserVo" %>

<%
	request.setCharacterEncoding("UTF-8");

	UserVo authUser = (UserVo)session.getAttribute("authUser");
	
	//로그인 실패 문구 추가를 위한 꼬리표
	String result = request.getParameter("result"); 
%>
--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/mysite0/assets/css/mysite.css" rel="stylesheet" type="text/css">
<link href="/mysite0/assets/css/user.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div id="wrap">

	<!-- header + footer -->
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>

		<div id="aside">
			<h2>회원</h2>
			<ul>
				<li>회원정보</li>
				<li>로그인</li>
				<li>회원가입</li>
			</ul>
		</div>
		<!-- //aside -->

		<div id="content">
			
			<div id="content-head">
            	<h3>로그인</h3>
            	<div id="location">
            		<ul>
            			<li>홈</li>
            			<li>회원</li>
            			<li class="last">로그인</li>
            		</ul>
            	</div>
                <div class="clear"></div>
            </div>
             <!-- //content-head -->

			<div id="user">
				<div id="loginForm">
					<form action="/mysite0/user" method="get"> <!-- 유저컨트롤러로 보냄. 나중에 post로 바꿔보기 -->

						<!-- 아이디 -->
						<div class="form-group">
							<label class="form-text" for="input-uid">아이디</label> 
							<input type="text" id="input-uid" name="id" value="" placeholder="아이디를 입력하세요">
						</div>

						<!-- 비밀번호 -->
						<div class="form-group">
							<label class="form-text" for="input-pass">비밀번호</label> 
							<input type="text" id="input-pass" name="pw" value="" placeholder="비밀번호를 입력하세요"	>
						</div>

						<!-- result 꼬리표 추가 -->
						<c:if test="${param.result eq 'fail'}"> <%--여기 문자열 비교 주의 --%>
						<p>
							로그인에 실패했습니다. 다시 로그인해주세요.
						</p>
						</c:if>
						
						<!-- 버튼영역 -->
		                <div class="button-area">
		                    <button type="submit" id="btn-submit">로그인</button>
		                </div>
		                
		                <!-- action 주소 -->
		                <input type="text" name="action" value="login"> 
						
					</form>
				</div>
				<!-- //loginForm -->
			</div>
			<!-- //user -->
		</div>
		<!-- //content  -->
		<div class="clear"></div>

		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<!-- //footer -->

	</div>
	<!-- //wrap -->

</body>

</html>