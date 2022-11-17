<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Bbs.BbsDAO"%>
<!-- bbsdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter"%>
<!-- 자바 클래스 사용 -->
<%
	request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8"); 
%>

<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
<jsp:useBean id="bbs" class="Bbs.Bbs" scope="page" />
<!-- // Bbs bbs = new Bbs(); -->
<jsp:setProperty name="bbs" property="bbsTitle" /><!-- bbs.setBbsTitle(requrst) -->
<jsp:setProperty name="bbs" property="bbsContent" />
<jsp:setProperty name="bbs" property="bbsCategory" />
<%
	System.out.println(bbs);
%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp 게시판 웹사이트</title>
</head>
<body>
	<%
	String id = null;
	if (session.getAttribute("id") != null) { 
		id = (String) session.getAttribute("id");
	}
	if (id == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요.')");
		script.println("location.href = '../login.jsp'");
		script.println("</script>");
	} else {

		if (bbs.getBbsTitle() == null || bbs.getBbsContent() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안된 사항이 있습니다')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			BbsDAO BbsDAO = new BbsDAO();
			int result = BbsDAO.write(bbs.getBbsTitle(), id, bbs.getBbsContent(), bbs.getBbsCategory());
			if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글쓰기에 실패했습니다')");
				script.println("history.back()");
				script.println("</script>");
			} else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href='bbs.jsp'");
				script.println("</script>");
			}
		}
	}
	%>
</body>
</html>
