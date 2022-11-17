<%-- 관리자가 신규 회원을 등록하는 것에 대한 프로세스 --%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="memMgr" class="Bean.MemberMgr" />
<jsp:useBean id="regBean" class="Bean.MemberBean" />
<jsp:setProperty name="regBean" property="*" />
<%
	String action = request.getParameter("action");
	if(action.equals("insert")) {
		if(memMgr.insertMember(regBean)) {
%>
		<script>
		alert("성공적으로 추가하였습니다");
		location.href="MemberMgr.jsp";
		</script>
<%
		}else{
%>
		<script>
		alert("추가도중 에러가 발생하였습니다.");
		history.back();
		</script>

<%
		}
	}
%>