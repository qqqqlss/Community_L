<!-- 챔피언 초상화 페이지 -->
<%@ page contentType="text/html; charset=UTF-8" %>

<style>
div div{
	display:inline-block;
}
.out{
  margin-left: 100px;/*위 오 아 왼*/
  margin-right: 100px;
  margin-top:30px;
  margin-bottom:50px;
  min-width: 700px;
  text-align:center;
}
.out:after{ content:'';display:block;clear:both; }
.img{
	width:70%;
}
</style>
    <div class="out">
		<div>
			<form action="informationpage.jsp">
				<input type="hidden" name="name" value="Akali">
				<input class="img" type="image" src="../file/champion/Akali/Akali.jpg">
			</form>
		</div>
		
		<div>
			<form action="informationpage.jsp">
				<input type="hidden" name="name" value="Zed">
				<input class="img" type="image" src="../file/champion/Zed/Zed.jpg">
			</form>
		</div>
		
		<div>
			<form action="informationpage.jsp">
				<input type="hidden" name="name" value="VelKoz">
				<input class="img" type="image" src="../file/champion/VelKoz/VelKoz.jpg">
			</form>
		</div>
		
		<div>
			<form action="informationpage.jsp">
				<input type="hidden" name="name" value="Amumu">
				<input class="img" type="image" src="../file/champion/Amumu/Amumu.jpg">
			</form>
		</div>
		
		<div>
			<form action="informationpage.jsp">
				<input type="hidden" name="name" value="Kayle">
				<input class="img" type="image" src="../file/champion/Kayle/Kayle.jpg">
			</form>
		</div>
	</div>