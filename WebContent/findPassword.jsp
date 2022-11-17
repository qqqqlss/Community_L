<!-- 비밀번호 찾기 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="css/signUp.css">
</head>
<body>
<form action="findPasswordProcess.jsp" method="post">

	<div class="out">
		<div class="logo" >
              <a href="index.jsp"><img src="file//logo.png" alt=""></a>
          </div>
 		<div class="input" style="margin-bottom:80px;">
			<h1 style="margin-left:70px;">비밀번호 찾기 페이지</h1>
		</div>
		
		
		<div class="input">
			아이디&nbsp;&nbsp;&nbsp;
			<input type="text" name="id" >
		</div>
		
		<div class="input">
			이메일&nbsp;&nbsp;&nbsp;
			<input type="text" name="email" placeholder="naver@naver.com">
		</div>
		
	
		
		<input style="margin-top:50px;margin-left:90px;" type="submit" value="확인">
	</div>
 
		
</form>
</body>
</html>