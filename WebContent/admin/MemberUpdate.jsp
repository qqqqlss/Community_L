<%-- 관리자가 선택한 회원의 정보를 수정하거나 삭제할 수 있는 페이지 --%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*, Bean.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="memMgr" class="Bean.MemberMgr" />

<html>
<head>
<title>회원수정</title>
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="GRAY">
	<br>
	<%
		String id = request.getParameter("id");
	MemberBean regBean = memMgr.getDB(id);
	%>

	<table width="80%" align="center" bgcolor="#81F79F">
		<tr>
			<td align="center" bgcolor="#81F79F">

				<table width="95%" align="center" bgcolor="#58FAF4" border="1">
					<form name="regForm" method="post" action="MemberUpdateProc.jsp">
						<tr align="center" bgcolor="#000000">
							<td colspan="3"><font color="#FFFFFF"><b> <%=regBean.getName()%>
										회원의 정보를 수정합니다.
								</b></font></td>
						</tr>
						<tr>
							<th>아 이 디</th>
							<td><%=regBean.getId()%></td>
						</tr>
						<tr>
							<th>패 스 워 드</th>
							<td bgcolor="#6E6E6E"><input type="text" name="password"
								size="50" value="<%=regBean.getPassword()%>"></td>
						</tr>
						<tr>
							<th>이름</th>
							<td bgcolor="#6E6E6E"><input type="text" name="name"
								size="50" value="<%=regBean.getName()%>"></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td bgcolor="#6E6E6E"><input type="text" name="email"
								size="50" value="<%=regBean.getEmail()%>"></td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td bgcolor="#6E6E6E"><input type="text" name="phone"
								size="50" value="<%=regBean.getPhone()%>"></td>
						</tr>
						<tr>
							<th>생일</th>
							<td bgcolor="#6E6E6E"><input type="text" name="birth"
								size="50" value="<%=regBean.getBirth()%>"></td>
						</tr>
						<tr>
							<th>주소</th>
							<td bgcolor="#6E6E6E">
							<input type="text" name="address"
								size="50" value="<%=regBean.getAddress()%>">
							</td>
						</tr>
						<tr>
							<td colspan="3" align="center">
							<input type="submit"
								name="action" value="수정"> &nbsp; &nbsp; &nbsp; &nbsp;
								&nbsp; &nbsp; 
							<input type="reset" value="다시쓰기"> &nbsp;
								&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
							<input type="submit" name="action" value="삭제">
							</td>
						</tr>
						<input type="hidden" name="id" value="<%=id%>">
					</form>
				</table>
			</td>
		</tr>
	</table>
	<form action="MemberMgr.jsp" method="post" align="center">
		<input type="submit" value="회원 관리창으로 돌아가기">
	</form>
</body>
</html>
