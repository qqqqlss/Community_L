<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Bbs.Bbs"%>
<%@ page import="Bbs.BbsDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- 스타일시트 참조  -->
<link rel="stylesheet" href="../css/bootstrap.css">
<title>jsp 게시판 웹사이트</title>
</head>
<body>
	<!-- 네비게이션  -->
	<%@ include file="nav.jsp"%>
	<%
		//로그인 안한 경우
	if (id == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요.')");
		script.println("location.href = '../login.jsp'");
		script.println("</script>");
	}
	int bbsID = 0;
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if (bbsID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글 입니다.')");
		script.println("location.href = 'bbs.jsp'");
		script.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
	if (!id.equals(bbs.getId())) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다.')");
		script.println("location.href = 'bbs.jsp'");
		script.println("</script>");
	}
	%>



	<!-- 게시판 -->
	<div class="container">
		<div class="row">
			<form method="post" action="updateAction.jsp?bbsID=<%=bbsID%> ">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2" style="background-color: #eeeeee; text-align: center;">글 수정
							</th>
						</tr>
					</thead>
					
					<tbody>
						<tr>
							<td>
								<input type="text" class="form-control" placeholder="글 제목" 
											name="bbsTitle" maxlength="50" value="<%=bbs.getBbsTitle()%>">	
							</td>
						</tr>
						<tr>
							<td>
								<textarea class="form-control" placeholder="글 내용"
									name="bbsContent" maxlength="2048" style="height: 350px;"><%=bbs.getBbsContent()%>
								</textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<button type="submit" class="btn btn-primary pull-right">글수정</button>
			</form>
		</div>
	</div>
</body>
</html>
