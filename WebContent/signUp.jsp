<!-- 회원가입 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<title>회원가입 페이지</title>
<link rel="stylesheet" href="css/signUp.css">
</head>
<body>
<form action="signUpInsert.jsp" method="post">

	<div class="out">
		<div class="logo" >
              <a href="index.jsp"><img src="file//logo.png" alt=""></a>
          </div>
 		<div class="input">
			아이디&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" name="id">
		</div>
		
		<div class="input">
			암호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="password" name="password">
		</div>
		
		<div class="input">
			이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" name="name" >
		</div>
		
		<div class="input">
			이메일&nbsp;&nbsp;&nbsp;
			<input type="text" name="email" >
		</div>
		
		<div class="input">
			생년월일
			<input type="text" name="birth" >
		</div>
		
		<div class="input">
			전화&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" name="phone" >
		</div>
		
		<div class="input">
			주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" name="address" >
		</div>
	
		<input type="submit" value="회원가입">
		<input type=reset value="취소">
	</div>
 
		
</form>
</body>
</html>