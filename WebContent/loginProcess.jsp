<!-- 로그인 프로세스  -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="Bean.*" %>
<jsp:useBean class="Bean.MemberMgr" id="memMgr" scope="page" />

<html>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	
	if(pw.equals(memMgr.login(id)) && !(id.equals("admin"))){//아이디 비밀번호 일치할때 & 사용자 id가 admin이 아닐때
		session.setAttribute("memLogin", "ok");
		session.setAttribute("userName", memMgr.userName(id));
		session.setAttribute("id", id);
		if(request.getParameter("idSave")==null){
			session.removeAttribute("MEMBERSAVE");
		} else {
			session.setAttribute("MEMBERSAVE", "check");
		}
		session.setAttribute("MEMBERID", id);
		session.setAttribute("MEMBERPWD", pw);
		response.sendRedirect("index.jsp");
	}
	else{
		out.println("<script>alert('아이디/비밀번호를 확인하세요');history.back();</script>");

	}
%>	


</body>