<%-- 관리자가 쓴 공지사항을 보여주기 위한 파트 --%>
<%@page import="javax.security.auth.callback.ConfirmationCallback"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Bbs.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.*, Bean.*"%>

<tbody>
<%
	String id1 = "admin";
	BbsDAO bbsDAO1 = new BbsDAO();
	ArrayList<Bbs> list1 = bbsDAO1.getNotice(id1);
	for (int i = 0; i < list1.size(); i++) {
%>
	<tr> <%-- 일반 게시물과 공지사항에 차별을 주기 위해 th를 사용함 --%>
		<th style="text-align: center;"><%=list1.get(i).getBbsID()%></th>
		<th style="text-align: center;"><a href="view.jsp?bbsID=<%=list1.get(i).getBbsID()%>"><%=list1.get(i).getBbsTitle()%></a></th>
		<th style="text-align: center;"><%=list1.get(i).getId()%></th>
		<th style="text-align: center;"><%=list1.get(i).getBbsDate().substring(0, 11) + list1.get(i).getBbsDate().substring(11, 13) + "시"
				+ list1.get(i).getBbsDate().substring(14, 16) + "분"%></th>
		<th style="text-align: center;">
			<%
				if(list1.get(i).getBbsCategory()==1){
			%>
				공략
			<% 
				} else if(list1.get(i).getBbsCategory()==0){
			%>
				자유
			<% 
				} else{
			%>	
				공지
			<%	} %>
			
		</th>
		<% 
			String reqpage = request.getParameter("requestpage");
			System.out.println(reqpage);
			if(!"board".equals(reqpage)){
		%>		
		<th style="text-align: center;">
			<%
			if(list1.get(i).getBbsAvailable()==1){
			%>
				X
			<% 
				} else{
			%>	
				O
			<%	} %>
		</th>
		<% } %>
	</tr>
<%
	}
%>
</tbody>