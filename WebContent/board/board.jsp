<%@ page contentType="text/html; charset=UTF-8" %>

<div class="container">
	<div class="row">
		<form method="post" action="searchedBbs.jsp" style="margin-bottom:20px; min-width:1170px;">
				<div class="col-lg-4" >
					<input type="text" class="form-control pull-right" placeholder="Search" name="searchWord" />
				</div>
				<button class="btn btn-primary" type="submit" >
					<span class="glyphicon glyphicon-search"></span>
				</button>
		</form>
		<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th align=left colspan='5'>
						<a href=bbs.jsp>전체</a> | <a href=categoryBbs.jsp?bbsCategory=2>공지</a> | <a href=categoryBbs.jsp?bbsCategory=0>자유</a> | <a href=categoryBbs.jsp?bbsCategory=1>공략</a>
					</th>
				<tr>
					<th style="background-color: #eeeeee; text-align: center;">번호</th>
					<th style="background-color: #eeeeee; text-align: center;">제목</th>
					<th style="background-color: #eeeeee; text-align: center;">작성자</th>
					<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					<th style="background-color: #eeeeee; text-align: center;">카테고리</th>
				</tr>
			</thead>
			<jsp:include page="../admin/bbstop.jsp">
				<jsp:param value="board" name="requestpage"/>
			</jsp:include>
			<tbody>
				<%
					for(int i=0;i<list.size();i++){
							if(list.get(i).getBbsCategory()==2){//공지사항은 생략
								continue;
							}
				%>
				<tr>
					<td><%=list.get(i).getBbsID()%></td>
					<td>
						<a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>">
							<%=list.get(i).getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll("<","&gt;").replaceAll("\n","<br>")%>
						</a>
					</td>
					<td><%= list.get(i).getId()%></td>
					<td>
						<%=	list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11,13) 
																+ "시" + list.get(i).getBbsDate().substring(14,16) + "분"%>
					</td>
					<td>
						<%
							if(list.get(i).getBbsCategory()==1){
						%>
							공략
						<% 
							} else if(list.get(i).getBbsCategory()==0){
						%>
							자유
						<% 
							} else{
						%>	
							공지
						<%	} %>
					</td>
				</tr>
				<% 
				
					}
				
				%>

			</tbody>
		</table>
				
	