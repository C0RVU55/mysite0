<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- <jsp:include><jsp:include> 공통되는 코드를 묶어서 jsp파일로 따로 뺌
<%@ page import="com.javaex.vo.UserVo" %>

<%
	UserVo authUser = (UserVo)session.getAttribute("authUser");
%>
 --%>
 
		<div id="header">
			<h1><a href="/mysite0/main">MySite</a></h1>
			
			<!-- 로그인 (리스폰스에 자바코드 포함한 아래 코드가 다 같이 가는 게 아니라 http밖에 없어서 조건 충족되는 부분만 가는 거) -->
			<c:choose>
				<c:when test="${empty authUser }">
					<ul>
						<li><a href="/mysite0/user?action=loginForm">로그인</a></li>
						<li><a href="/mysite0/user?action=joinForm">회원가입</a></li>
					</ul>
				</c:when>
				<c:otherwise>
					<!--로그인 성공시-->
					<ul>
						<li>${authUser.name} 님 안녕하세요^^</li>
						<li><a href="/mysite0/user?action=logout">로그아웃</a></li>
						<li><a href="/mysite0/user?action=mform">회원정보수정</a></li>
					</ul>
				</c:otherwise>
			</c:choose>
		</div>
		<!-- //header -->

		<div id="nav">
			<ul>
				<li><a href="/mysite0/gbc?action=addList">방명록</a></li>
				<li><a href="">갤러리</a></li>
				<li><a href="">게시판</a></li>
				<li><a href="">입사지원서</a></li>
			</ul>
			<div class="clear"></div>
		</div>
		<!-- //nav -->