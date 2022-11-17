<%-- 관리자의 로그아웃을 위한 프로세스 --%>
<%@ page contentType="text/html;charset=EUC-KR"%>
<%
	session.removeAttribute("adminKey");
%>

<script>
	alert("로그아웃 되었습니다.");
	location.href = "../index.jsp";
</script>