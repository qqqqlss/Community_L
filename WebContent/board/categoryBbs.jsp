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
		int bbsCategory=1;
		if(request.getParameter("bbsCategory")!=null){
			bbsCategory = Integer.parseInt(request.getParameter("bbsCategory"));
		}
	%>
	
	<%@ include file="nav.jsp"  %>
	<%
		BbsDAO bbsDAO = new BbsDAO();
		ArrayList<Bbs> list = bbsDAO.getCategoryList(pageNumber,bbsCategory);
	%>
	<%@ include file="board.jsp"  %>

					
					
					
	<% 
		if(pageNumber != 1) {
			session.setAttribute("bbsCategory",bbsCategory);
	%> <a href="categoryBbs.jsp?pageNumber=<%=pageNumber-1%>"
				class="btn btn-success btn-arrow-left">이전</a> <%		
		} if(bbsDAO.categoryNextPage(pageNumber,bbsCategory)) {
			session.setAttribute("bbsCategory",bbsCategory);
	%> <a href="categoryBbs.jsp?pageNumber=<%=pageNumber+1%>"
				class="btn btn-success btn-arrow-right">다음</a> <% 
		}
	%>
		
	<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		
<!-- board.jsp의 div 닫기 태그 -->			
	</div>
</div>
</body>
</html>