<!-- 로그인 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>로그인 페이지</title>
<link rel="stylesheet" href="css/login.css">
</head>
  <body>
    <div class="out">
      <div class="logo_form">
          <div class="logo" >
              <a href="index.jsp"><img src="file//logo.png" alt=""></a>
          </div>
          <div class="form">
          <%
			String id = (String)session.getAttribute("MEMBERID");
			String pwd = (String)session.getAttribute("MEMBERPWD");
			String check = (String)session.getAttribute("MEMBERSAVE");
			String idStr=null, pwdStr=null, checkStr=null;
	
			if (check==null){
				idStr = ""; pwdStr = ""; checkStr = "";
			} else {//체크되어있을때
				idStr = id; pwdStr = pwd; checkStr="checked";
			}
	
		   %>
			<form action="loginProcess.jsp">
				<div class="login" >
					<input type="text" name="id" size="10" placeholder="아이디" autocomplete="off" value= <%=idStr %> >
				</div>
				<div class="login" >
					<input type="password" name="password" size="10" placeholder="비밀번호" value= <%=pwdStr %> >
				</div>
				<div class="login" >
					<button type="submit">로그인</button><br>
				</div>
				<input type="checkbox" name="idSave" value="c1" <%=checkStr %> > 아이디/비번 저장
			</form>
            
          </div>
       
        <div class="join">
          <a href="findId.jsp">아이디찾기</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
          <a href="findPassword.jsp">비밀번호찾기</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
          <a href="signUp.jsp">회원가입</a>
        </div> 
      </div>
     </div>

  </body>
</html>
