<%-- 관리자가 선택한 게시물을 확인하기 위한 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Bbs.Bbs"%>
<%@ page import="Bbs.BbsDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>관리자 게시물 확인 페이지</title>
</head>
<body>
<%
	int bbsID = 0;
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if (bbsID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글 입니다.')");
		script.println("location.href = 'adminbbs.jsp'");
		script.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
%>
<div class="container">
	<div class="row">
		<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="3" style="background-color: #eeeeee; text-align: center;">게시물 내용 </th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width: 20%;"> 글 제목 </td>
					<td colspan="2"><%= bbs.getBbsTitle() %></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td colspan="2"><%= bbs.getId() %></td>
				</tr>
				<tr>
					<td>작성일</td>
					<td colspan="2"><%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시"
										+ bbs.getBbsDate().substring(14, 16) + "분"%></td>
				</tr>
				<tr>
					<td>내용</td>	
					<td colspan="2" style="min-height: 200px; text-align: left;"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br/>") %></td>
				</tr>
			</tbody>
		</table>	
		<a href = "adminbbs.jsp" class="btn btn-primary">목록</a>
		<a href="update.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">수정</a>
		<a onclick="return confirm('정말로 삭제하시겠습니까?')" 
				href="deleteAction.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">삭제</a>
				
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>
</body>
</html>
