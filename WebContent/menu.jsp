<!-- 메뉴 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" type="text/css" href="css/menu.css?afftfer">
<%
	String userName = (String)session.getAttribute("userName");//로그인 안되어있을때
	if(userName == null){

	%>
      <div class="login" >
        <a href="login.jsp" style="color:white" >로그인</a>
      </div>
      <div class="admin">
        <a href="admin/admincheck.jsp"  style="color:white" >관리자 로그인</a>
      </div>

    <%
    }else{//로그인 되어있을때
    %>
    <div class="login" style="color:white" >
    	<span ><%=userName %>님</span> | <a href="logoutprocess.jsp" style="color:white;font-size: 20px;" >로그아웃</a>
    </div>
    <%} //else 종료%>
    
  	<header>
    <div class="header" style="background-color:white">
      <div class="logo">
        <a href="index.jsp"><img class="logo" src="file//icon.png"></a>
      </div>

      <div class="nav">
          <ul class="nav_ul">
              <div class="navdiv"><li><a href="../board/bbs.jsp">게시판</a></li></div>
              <div class="navdiv"><li><a href="../board/categoryBbs.jsp?bbsCategory=1">공략</a></li></div>
              <div class="navdiv">
	              <li>
	              	<a href="/information/informationpage.jsp?requestname=Akali">챔피언</a>
	              </li>
              </div>
              <!-- informationpage에 값 전달(기본값 Akali) -->
          </ul>
      </div>

	  <div>
	      <form method="post" action="../board/searchedBbs.jsp">
			  <div>
			      <div class="search">
			        <span id="search">
			          <input type="text" id="input_text" name="searchWord"/>
			        </span>
			         <input type="image" id="div_search" src="file/search.png" name="search_submit" type="submit">
			
			      </div>
			  </div>
	  </form>
	  </div>
	 
    </div>
  </header>