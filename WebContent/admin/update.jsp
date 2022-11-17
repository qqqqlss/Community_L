<%-- 관리자가 선택한 게시물을 수정하기 위한 페이지 --%>
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
<title>관리자 게시물 수정 페이지</title>
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
		<form method="post" action="updateAction.jsp?bbsID=<%= bbsID %> ">
		<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
		<thead>
		<tr>
		<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시물 수정 </th>
		</tr>
		</thead>
		<tbody>
		<tr>
		<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50" value="<%= bbs.getBbsTitle() %>" ></td>
		</tr>
		<tr>
		<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px;" ><%= bbs.getBbsContent() %></textarea></td>
		</tr>
		</tbody>
		</table>
		<button type="submit" class="btn btn-primary pull-right" >글수정</button>
		</form>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>
</body>
</html>