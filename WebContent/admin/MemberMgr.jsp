<%-- 관리자가 현재 회원들의 명단을 관리할 수 있게 보여주는 페이지 --%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, Bean.*"%>
<jsp:useBean id="memMgr" class="Bean.MemberMgr" />


<html>
<head>
<title>관리자 회원 관리 페이지</title>
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="#544C9B">

<%@ include file="menu.jsp" %>
<%@ include file="adminmenu.jsp" %>
	<%Vector vResult= memMgr.getMemberList();%>

	<div style="min-width:1140px; margin-left: 200px; margin-right: 200px; background-color:#00BFFF" align="center" >
		<div align="center">
			<div style="margin-bottom:30px;">
				<a href="MemberInsert.jsp" style="font-size: 20px;font-weight:bold;">회원 등록</a>
			</div>
			<table width="95%" align="center" bgcolor="#82FA58" border="1" bordercolor="#000000">
				<tbody><tr bgcolor="#000000"> 
					<td align="center"><font color="#FFFFFF">회원 이름</font></td>
					<td align="center"><font color="#FFFFFF">회원 아이디</font></td>
					<td align="center"><font color="#FFFFFF">패스워드</font></td>
					<td align="center"><font color="#FFFFFF">전화번호</font></td>
					<td align="center"><font color="#FFFFFF">생일</font></td>
					<td align="center"><font color="#FFFFFF">이메일</font></td>
					<td align="center"><font color="#FFFFFF">주소</font></td>
					<td align="center"><font color="#FFFFFF">수정</font></td>
				</tr>
				<%
					for(int i=0; i<vResult.size(); i++){
					MemberBean regBean = (MemberBean)vResult.get(i);
				%>
				<tr> 
					<td align="center"><%=regBean.getName()%></a></td>
					<td align="center"><%=regBean.getId()%></td>
					<td align="center"><%=regBean.getPassword()%></td>
					<td align="center"><%=regBean.getPhone()%></td>
					<td align="center"><%=regBean.getBirth()%></td>
					<td align="center"><%=regBean.getEmail()%></td>
					<td align="center"><%=regBean.getAddress()%></td>
					<td align="center" bgcolor="#FFFF00"><a href="javascript:Update('<%=regBean.getId()%>')">수정</a></td>
				</tr>
				<%}%>
			</table>
		</div>
	</div>
	<form name="update" method="post" action="MemberUpdate.jsp">
	<input type=hidden name="id">
	</form>
</body>
</html>
