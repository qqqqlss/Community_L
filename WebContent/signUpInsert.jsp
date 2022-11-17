<!-- 회원가입 프로세스 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,Bean.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="regBean" class="Bean.MemberBean" scope="session" />
<jsp:setProperty name="regBean" property="*" />
<jsp:useBean id="regMgr" class="Bean.MemberMgr" scope="session" />
<html>
<head>
<title>회원가입 완료</title>
</head>
<body>
	<%
		regMgr.insertMember(regBean);
	%>
	<script>
		alert(" 가입되었습니다.");
		document.location.href = "index.jsp";
	</script>

</body>
</html>