<!-- 챔피언 페이지 -->
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="Champion.Skin"%>
<%@page import="java.util.Vector"%>
<jsp:useBean class="Champion.ChampionMgr" id="championMgr" scope="page" />
<jsp:useBean class="Champion.Champion" id="champ" scope="page"/>
<jsp:useBean class="Champion.Stat" id="stat" scope="page"/>
<jsp:useBean class="Champion.Skill" id="skill" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/informationpage.css">

<%
	request.setCharacterEncoding("UTF-8");
	String reqname = request.getParameter("name");
	System.out.println(reqname);
	if(reqname == null){%> <!-- index.jps에서 챔피언 클릭해 넘어온 경우 -->
		<title>Akali</title>
	<%}else{%>				<!-- 챔피언 메뉴에서 클릭한 경우 -->
		<title><%= reqname %></title>
	<%}%>



</head>
<body>
	<%@ include file="menu.jsp"  %> <!-- 로그인 & 메뉴 -->
	<%@ include file="information_top.jsp"  %> <!-- 챔피언 초상화 -->
	<%
		
		String requestname = (String)request.getParameter("requestname");
		if(requestname == null){//informationpage내부에서 요청했을경우
			championMgr.setChampion(reqname);
		}else{//index에서 요청했을경우
			championMgr.setChampion(requestname);
		}
		String name = championMgr.getName();
		champ = championMgr.getCahmpion();
		skill = championMgr.getSkill();
		stat = championMgr.getStat();
		Vector<Skin> skin = championMgr.getSkin();	
	%>
	
	<div class="out2" >
		<div class="lap"><!-- 왼쪽 최소여백을 주기 위한 div -->
			<div class="champ_name">
				<div class="champ">
					<img src="../file/champion/<%=champ.getName_en() %>/<%=champ.getName_en() %>.jpg">
				</div>
				<span class="name"><%= champ.getName_kr() %></span>
			</div>
			<div class="exp" style="margin-top:20px;">
				<%= champ.getExp() %>	
			</div>
			<div class="stat_video" style="margin-top:20px; margin-bottom:20px;">
				<div class="stat">
			  		<table style="text-align:center">
				      <tr>
				        <td>구분</td>
				        <td>1레벨</td>
				      </tr>
				      
				      <tr>
				        <td>체력</td>
				        <td><%= stat.getHp() %></td>
				      </tr>
				      
				      <tr>
				        <td>마나</td>
				        <td><%= stat.getMp() %></td>
				      </tr>
				      
				      <tr>
				        <td>공격력</td>
				        <td><%= stat.getAttack() %></td>
				      </tr>
				      
				      <tr>
				        <td>공격속도</td>
				        <td><%= stat.getAttack_speed() %></td>
				      </tr>
				      
				      <tr>
				        <td>방어력</td>
				        <td><%= stat.getArmor() %></td>
				      </tr>
				      
				      <tr>
				        <td>마법 저항력</td>
				        <td><%= stat.getMagic_resistance() %></td>
				      </tr>
				      
				      <tr>
				        <td>이동 속도</td>
				        <td><%= stat.getSpeed() %></td>
				      </tr>
				      
				      <tr>
				        <td>사정 거리</td>
				        <td><%= stat.getAttack_range() %></td>
				      </tr>
				      
				    </table>
			  	</div>
			  	<div class="video">
			  		<iframe width="676" height="380" src=<%= champ.getLink() %> frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			  	</div>
		  	</div>
		  	<div style="margin-top:50px;">
			
					<table>
				    <tr>
				      <td style="text-align:left" colspan=2>Q - <%= skill.getQ_name() %></td>
				    </tr>
				    
				    <tr>
				      <td style="width:20px; text-align:left"><img src="<%= skill.getQ_img() %>"></td>
				      <td style="text-align:left"><%= skill.getQ_exp() %></td>
				    </tr>
				   	
				    <tr>
				      <td style="text-align:left" colspan=2>W - <%= skill.getW_name() %></td>
				    </tr>
				    <tr>
				      <td style="width:20px; text-align:left"><img src="<%= skill.getW_img() %>"></td>
				      <td style="text-align:left"><%= skill.getW_exp() %></td>
				    </tr>
				    
				    <tr>
				      <td style="text-align:left" colspan=2>E - <%= skill.getE_name() %></td>
				    </tr>
				    <tr>
				      <td style="width:20px; text-align:left"><img src="<%= skill.getE_img() %>"></td>
				      <td style="text-align:left"><%= skill.getE_exp() %></td>
				    </tr>
				    
				    <tr>
				      <td style="text-align:left" colspan=2>R - <%= skill.getR_name() %></td>
				    </tr>
				    <tr>
				      <td style="width:20px; text-align:left"><img src="<%= skill.getR_img() %>"></td>
				      <td style="text-align:left"><%= skill.getR_exp() %></td>
				    </tr>
				  </table>
			
		  </div>
		  <div class="skin">
		  	<div class="skin_list">
			  	<table style="text-align:center">
			  		<%
			  			Iterator<Skin> it = skin.iterator();
			  			Skin temp;
			  			int i=1;
			  			while(it.hasNext()){
			  				temp=it.next();
			  				out.print("<tr><td id='" +  i + "' onclick='selectImg(this.id)'>");
			  				out.print(temp.getSkinName());
			  				out.println("</td></tr>");
			  				i++;
			  			}
			  		%>
			  	</table>
		  	</div>
		  	<div class="skin_img">
		  	<% if(requestname == null){//informationpage내부에서 요청했을경우%>
					<img id="skinImg" src="../file/champion/<%= name %>/skin/1.jpg">
			<% }else{//index에서 요청했을경우%>
					<img id="skinImg" src="/file/champion/<%= name %>/skin/1.jpg">
			<% }%>
				
			
		  	</div>
		  </div>
		  <div class="story" style="margin-top:50px; ">
		  	<%= champ.getStory() %>
		  </div>
	  </div>
  </div>
  <script>
  	function selectImg(id){
  		var name = '<%= name %>';
  		var img =document.getElementById("skinImg");
  		if('<%=requestname%>' == null){//informationpage내부에서 요청했을경우
			img.setAttribute("src", "../file/champion/" +  name + "/skin/" + id + ".jpg");
		}else{//index에서 요청했을경우
			img.setAttribute("src", "/file/champion/" +  name + "/skin/" + id + ".jpg");
		}
  		
  	}
  </script>
</body>
</html>