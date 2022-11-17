<%-- 관리자가 신규 회원을 등록하기 위한 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 등록</title>
</head>
<body bgcolor="GRAY">
	<table width="75%" align="center" bgcolor="#81F79F">
		<tr>
			<td align="center" bgcolor="#81F79F">[<a href=MemberMgr.jsp>회원
					목록으로 돌아가기</a>]
				<P>
				<table width="50%" align="center" bgcolor="#58FAF4" border="1">
					<form name=form1 method=post action="MemberInsertProc.jsp">
						<input type=hidden name="action" value="insert">
						<tr align="center" bgcolor="#000000">
							<td colspan="3"><font color="#FFFFFF"><b> 신규 회원을추가합니다.</b></font></td>
						</tr>
						<tr>
							<th>아 이 디</th>
							<td align="center" bgcolor="#6E6E6E">
								<input type="text"name="id" maxlength="30">
							</td>
						</tr>
						<tr>
							<th>비 밀 번 호</th>
							<td align="center" bgcolor="#6E6E6E">
								<input type="text"name="password" maxlength="50">
							</td>
						</tr>
						<tr>
							<th>이 름</th>
							<td align="center" bgcolor="#6E6E6E">
								<input type="text" name="name" maxlength="50">
							</td>
						</tr>
						<tr>
							<th>email</th>
							<td align="center" bgcolor="#6E6E6E">
								<input type="email"name="email" maxlength="50">
							</td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td align="center" bgcolor="#6E6E6E">
								<input type="text" name="phone" maxlength="50">
							</td>
						</tr>
						<tr>
							<th>생 일</th>
							<td align="center" bgcolor="#6E6E6E">
								<input type="text" name="birth" maxlength="50">
							</td>
						</tr>
						<tr>
							<th>주 소</th>
							<td align="center" bgcolor="#6E6E6E">
								<input type="text" name="address" maxlength="50">
							</td>
						</tr>
						<tr>
							<td colspan=3 align=center><input type=submit value="저장">	
								<input type="reset" value="다시쓰기">
								<input type=reset value="취소">
							</td>
						</tr>
					</form>
				</table>
			</td>
		</tr>
	</table>
	<form action="adminindex.jsp" method="post" align="center">
		<input type="submit" value="관리자 메인으로">
	</form>
</body>
</html>