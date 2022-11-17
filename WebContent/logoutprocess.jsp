<!-- 로그아웃 프로세스 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	session.removeAttribute("userName");
	session.removeAttribute("id");
	response.sendRedirect("index.jsp");
%>