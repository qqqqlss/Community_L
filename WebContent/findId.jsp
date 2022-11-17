<!-- 아이디찾기 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<title>아이디찾기</title>
<link rel="stylesheet" href="css/signUp.css">
</head>
<body>
<form action="findIdProcess.jsp" method="post">

	<div class="out">
		<div class="logo" >
              <a href="index.jsp"><img src="file//logo.png" alt=""></a>
          </div>
 		<div class="input" style="margin-bottom:80px;">
			<h1 style="margin-left:90px;">ID 찾기 페이지</h1>
		</div>
		
		
		<div class="input">
			이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" name="name" placeholder="홍길동">
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