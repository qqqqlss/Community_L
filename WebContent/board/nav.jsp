<%@ page contentType="text/html; charset=UTF-8" %>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js?asdf"></script>
<% 
int pageNumber = 1; //기본 페이지 넘버

//페이지넘버값이 있을때

if (request.getParameter("pageNumber") != null) {

	pageNumber = Integer.parseInt(request.getParameter("pageNumber"));

}


//로그인한사람이라면	 userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값

String id = null;

if (session.getAttribute("id") != null) {

	id = (String) session.getAttribute("id");



}
%>
<nav class="navbar navbar-default">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="bs-example-navbar-collapse-1"
			aria-expaned="false">

			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>

		<a href="../index.jsp"><img src="../file//icon.png" width='40'></a>

	</div>

	<div class="collapse navbar-collapse"
		id="#bs-example-navbar-collapse-1">

		<ul class="nav navbar-nav">
			<li class="active"><a href="bbs.jsp">게시판</a></li>

		</ul>

		<%
			//로그인 안된경우
			if (id == null) {
		%>

			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../login.jsp">로그인</a></li>
						<li><a href="../signUp.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>

		<%
			} else {
		%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li>
							<a href="../logoutprocess.jsp">로그아웃</a>
						</li>
					</ul>
				</li>
			</ul>

		<%
			}
		%>

	</div>

</nav>
