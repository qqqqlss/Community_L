<%-- 관리자 로그인후 나오는 관리자 메인 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="Bean.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>관리자 페이지</title>
</head>
<body bgcolor="#544C9B">
	
	<%@ include file="menu.jsp"%><%-- 메인사이트의 메뉴바 --%>
	
	<%@ include file="adminmenu.jsp"%><%-- 관리자 페이지에서 할 수 있는 것을 보여주는 메뉴바 --%>
	<div style="min-width: 1140px; margin-left: 200px; margin-right: 200px; 
				background-color: white; height: 200px; padding-top:200px">
		<div style="text-align:center;">
		회원 관리 및 게시물 관리를 할 수 있는 관리자의 메인  페이지 입니다.
		</div>
	</div>
</body>
</html>