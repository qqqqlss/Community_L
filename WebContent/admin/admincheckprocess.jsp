<%-- 관리자가 맞는지 확인하기 위한 프로세스 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="admin_error.jsp" %>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="Bean.*" %>
<jsp:useBean class="Bean.MemberBean" id="memBean" scope="page" />
<jsp:useBean class="Bean.MemberMgr" id="memMgr" scope="page" />

<%
	request.setCharacterEncoding("UTF-8");
	String admin_id = request.getParameter("admin_id");
	String admin_passwd = request.getParameter("admin_passwd");
	boolean adminCheck = memMgr.adminCheck(admin_id, admin_passwd);
    if(adminCheck) {
	    session.setAttribute("adminKey", admin_id);
%>

   <script>
   location.href="adminindex.jsp";
   </script>

<%}else{%>

   <script>
   alert("입력한 정보가 정확하지 않습니다.");
   location.href="admincheck.jsp";
   </script>

<%}%>