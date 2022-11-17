<%-- 관리자가 게시물들을 관리하기 위해 게시물들을 보여주는 페이지 --%>
<%@page import="javax.security.auth.callback.ConfirmationCallback"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Bbs.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>관리자 게시물 관리 페이지</title>
<style type="text/css">
a, a:hover {
	color: #000000;
	text-decoration: none;
}
</style>
</head>
<body bgcolor="#544C9B" ">

	<%@ include file="menu.jsp"%>
	<%@ include file="adminmenu.jsp"%>
	<%
		String id = null;
		if (session.getAttribute("adminKey") != null) {//관리자인지 확인
			id = (String) session.getAttribute("adminKey");
		}
		int pageNumber = 1; //기본 페이지 넘버
		//페이지넘버값이 있을때
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	<div style="min-width:1140px;margin-left: 200px;margin-right: 200px;">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
						<th style="background-color: #eeeeee; text-align: center;">카테고리</th>
						<th style="background-color: #eeeeee; text-align: center;">삭제</th>
					</tr>
				</thead>
				
				<%@ include file="bbstop.jsp"%>
				
				<tbody>
					<%
						BbsDAO bbsDAO = new BbsDAO();
						ArrayList<Bbs> list = bbsDAO.getAllList(pageNumber);
						for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%=list.get(i).getBbsID()%></td>
						<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle()%></a></td>
						<td><%=list.get(i).getId()%></td>
						<td><%=list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시"
		+ list.get(i).getBbsDate().substring(14, 16) + "분"%></td>
						<td>
							<%
							if(list.get(i).getBbsCategory()==1){
							%>
								공략
							<% 
								} else if(list.get(i).getBbsCategory()==0){
							%>
								자유
							<% 
								} else{
							%>	
								공지
							<%	} %>
						</td>
						<td>
							<%
							if(list.get(i).getBbsAvailable()==1){
							%>
								X
							<% 
								} else{
							%>	
								O
							<%	} %>
						</td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<%
				if (pageNumber != 1) {
			%>
			<a href="adminbbs.jsp?pageNumber=<%=pageNumber - 1%>"
				class="btn btn-success btn-arrow-left">이전</a>
			<%
				}
			if (bbsDAO.nextPage(pageNumber + 1)) {
			%>
			<a href="adminbbs.jsp?pageNumber=<%=pageNumber + 1%>"
				class="btn btn-success btn-arrow-left">다음</a>
			<%
				}
			%>
			<%
				//관리자 로그인인 경우
			if (session.getAttribute("adminKey") != null) {
			%>
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
			<%
				}
			%>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>
</body>
</html>