<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Bbs.BbsDAO"%>
<%@ page import="Bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>JSP JSW 게시판 웹사이트</title>
<style type="text/css">
a, a:hover {
	color: #000000;
	text-decoration: none;
}
</style>
</head>
<body>
	<%
		String searchWord = null;
		if(request.getParameter("searchWord")!=null){
			searchWord = (String) request.getParameter("searchWord");
			System.out.println("searchword from parameter is :" + searchWord);
		}
		if(session.getAttribute("searchWord")!=null){
			searchWord = (String) session.getAttribute("searchWord");
			System.out.println("searchword from session is :" + searchWord);
		}
	%>
	
	<!-- 네비게이션  -->
	<%@ include file="nav.jsp"  %>
	
	<%
		BbsDAO bbsDAO = new BbsDAO();
		//System.out.println("here before getlist");
		ArrayList<Bbs> list = bbsDAO.getSearchedList(pageNumber,searchWord);
		//System.out.println("here after getlist" + list.get(0).getBbsDate().substring(0,11));
	%>
	
	<!-- 게시판  -->
	<%@ include file="board.jsp"  %>

		
	<% 
		if(pageNumber != 1) {
			session.setAttribute("searchWord",searchWord);
	%> 
			<a href="searchedBbs.jsp?pageNumber=<%=pageNumber-1%>" class="btn btn-success btn-arrow-left">이전</a> 
	<%		
		} if(bbsDAO.searchedNextPage(pageNumber,searchWord)) {
			session.setAttribute("searchWord",searchWord);
	%> 		
			<a href="searchedBbs.jsp?pageNumber=<%=pageNumber+1%>" class="btn btn-success btn-arrow-right">다음</a> 
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
						onclick="if(confirm('로그인 하세요'))location.href='../login.jsp';" type="button">글쓰기
			</button>

	<%

		}

	%>
<!-- board.jsp의 div 닫기 태그 -->		
	</div>
</div>
	
</body>
</html>