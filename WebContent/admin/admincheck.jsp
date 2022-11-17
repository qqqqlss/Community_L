<%-- 관리자 로그인을 위한 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/login.css">
<title>관리자 로그인</title>
</head>
<body>
	<div class="out">
      <div class="logo_form">
          <div class="logo" >
              <a href="../index.jsp"><img src="../file//logo.png" alt=""></a>
              <h1 style="margin:50px;">관리자 로그인</h1>
          </div>
          <div class="form">
			<form action="admincheckprocess.jsp">
				<div class="login" >
					<input type="text" name="admin_id" size="10" placeholder="아이디" autocomplete="off">
				</div>
				<div class="login" >
					<input type="password" name="admin_passwd" size="10" placeholder="비밀번호">
				</div>
				<div class="login" >
					<button type="submit">로그인</button><br>
				</div>
			</form>
            
          </div>
      </div>
   	</div>
</body>
</html>