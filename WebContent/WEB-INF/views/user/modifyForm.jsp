<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- 
<%@ page import= "com.javaex.vo.UserVo" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	//UserVo authUser = (UserVo)session.getAttribute("authUser"); 
	//로그인 로그아웃은 세션으로 썼으니까 일관적으로 하는 게 좋음 
	//--> 원래 아래 attribute 변수명이랑 세션 변수명이랑 겹쳐서 바꿔야 했는데 헤더+내비 부분을 include로 묶어서 세션도 같이 따라가서 그대로 둠.
	
	UserVo authUser = (UserVo)request.getAttribute("uVo");
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
            	<h3>회원정보</h3>
            	<div id="location">
            		<ul>
            			<li>홈</li>
            			<li>회원</li>
            			<li class="last">회원정보</li>
            		</ul>
            	</div>
                <div class="clear"></div>
            </div>
             <!-- //content-head -->

			<div id="user">
				<div id="modifyForm">
					<form action="/mysite0/user" method="get">

						<!-- 아이디 -->
						<div class="form-group">
							<label class="form-text" for="input-uid">아이디</label> 
							<span class="text-large bold">${uVo.id}</span> <!-- 아이디 수정 못하게 고정 -->
						</div>

						<!-- 비밀번호 -->
						<div class="form-group">
							<label class="form-text" for="input-pass">패스워드</label> 
							<input type="text" id="input-pass" name="pw" value="${uVo.password}" placeholder="비밀번호를 입력하세요"	>
						</div>

						<!-- 이메일 -->
						<div class="form-group">
							<label class="form-text" for="input-name">이름</label> 
							<input type="text" id="input-name" name="name" value="${uVo.name}" placeholder="이름을 입력하세요">
						</div>

						<!-- //나이 -->
						<div class="form-group">
							<span class="form-text">성별</span> 
							
							<!-- gender가 "F"면 "여"에 체크돼 있고 "M"면 "남"에 체크되도록 -->
							<c:choose>
								<c:when test="${uVo.gender eq 'F'}">
									<label for="rdo-male">남</label> 
									<input type="radio" id="rdo-male" name="gender" value="M" > 
									
									<label for="rdo-female">여</label> 
									<input type="radio" id="rdo-female" name="gender" value="F" checked="checked" > 
								</c:when>
								
								<c:otherwise>	
									<label for="rdo-male">남</label> 
									<input type="radio" id="rdo-male" name="gender" value="M" checked="checked" > 
									
									<label for="rdo-female">여</label> 
									<input type="radio" id="rdo-female" name="gender" value="F" > 
								</c:otherwise>
							</c:choose>
						</div>

						<!-- 버튼영역 -->
		                <div class="button-area">
		                    <button type="submit" id="btn-submit">회원정보수정</button>
		                </div>
		                <!-- no -->
		                <input type="text" name="no" value="${uVo.no}">
						<!-- action -->
						<input type="text" name="action" value="modify">
					</form>
				
				
				</div>
				<!-- //modifyForm -->
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