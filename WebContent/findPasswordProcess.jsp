<!-- 비밀번호 찾기 프로세스 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="Bean.*" %>
<jsp:useBean class="Bean.MemberMgr" id="memMgr" scope="page" />

<html>
<body>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String email = request.getParameter("email");
	String pass = memMgr.findPassword(id, email);
%>
		
	<script>
		//페이지 로드 후 자동 실행
		window.onload =	function(){
	  		var password = '<%= pass %>';
	  		if(password == 'return_false_not_found_password'){//못찾았을경우
				alert("잘못된 정보입니다.");
				document.location.href="findPassword.jsp" ; 
			}else{//index에서 요청했을경우
				alert("비밀번호는 [" + password + "] 입니다.");
				document.location.href="login.jsp" ; 
			}
  		
  	}
  	</script>



</body>