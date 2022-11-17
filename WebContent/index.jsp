<!-- 메인페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
video {
 position: fixed;
   top: 0px;
   left: 0px;
   min-width: 100%;
   min-height: 100%;
   width: auto;
   height: auto;
   z-index: -1000;
   overflow: hidden;
}
</style>
<title>메인페이지</title>
</head>

<body>
	<jsp:include page="menu.jsp"/>
	<div class = "background">
		<video autoplay muted loop>
			<source src = "file//main.mp4">
		</video>
	</div>
</body>
</html>