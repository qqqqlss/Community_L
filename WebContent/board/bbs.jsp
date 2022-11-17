<%@page import="javax.security.auth.callback.ConfirmationCallback"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Bbs.BbsDAO"%>
<%@ page import="Bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- 스타일시트 참조  -->
<link rel="stylesheet" href="../css/bootstrap.css">
<title>jsp 게시판 웹사이트</title>
<style type="text/css">
a, a:hover {
	color: #000000;
	text-decoration: none;
}
</style>
</head>
<body>
	<!-- 네비게이션  -->
	<%@ include file="nav.jsp"%>
	<%
		BbsDAO bbsDAO = new BbsDAO();
		ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
	%>
	
	<!-- 게시판  -->
	<%@ include file="board.jsp"%>
	
	<!-- 페이지 넘기기 -->
	<%
		if (pageNumber != 1) {
	%>
	<a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>"
		class="btn btn-success btn-arrow-left">이전</a>
	<%
		}
		if (bbsDAO.nextPage(pageNumber+1)) {
	%>
	<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>"
		class="btn btn-success btn-arrow-left">다음</a>
	<%
		}
	%>
	<!-- 회원만넘어가도록 -->
	<%
		//if logined userID라는 변수에 해당 아이디가 담기고 if not null
		if (session.getAttribute("id") != null) {
	%>
	<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
	<%
		} else {
	%>
	<button class="btn btn-primary pull-right"
		onclick="if(confirm('로그인 하세요'))location.href='../login.jsp';"
		type="button">글쓰기</button>
	<%
		}
	%>

<!-- board.jsp의 div 닫기 태그 -->
	</div>
</div>
</body>
</html>
