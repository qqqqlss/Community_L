<%-- 관리자가 선택한 회원의 정보를 업데이트하거나 삭제하기 위한 프로세스 --%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="memMgr" class="Bean.MemberMgr" />
<jsp:useBean id="regBean" class="Bean.MemberBean" />
<jsp:setProperty name="regBean" property="*" />
<%
    boolean flag = memMgr.updateDB(regBean);
	String action = request.getParameter("action");
	System.out.println(action);
	if(action.equals("수정")) {//회원 정보 수정 창에서 정보 수정버튼을 눌렀을 때
		if(flag){
%>
		<script>
		alert("성공적으로 수정하였습니다");
		location.href="MemberMgr.jsp";
		</script>
<%
		}else{
%>
		<script>
		alert("수정도중 에러가 발생하였습니다.");
		history.back();
		</script>

<%
	  	}
	}else if(action.equals("삭제")){//회원 정보 수정 창에서 삭제버튼을 눌렀을 때
		if(memMgr.deleteDB(regBean.getId())) {
%>
		<script>
		alert("성공적으로 삭제하였습니다");
		location.href="MemberMgr.jsp";
		</script>
		
<%
		}else{
%>
		<script>
		alert("회원 삭제 중 에러가 발생하였습니다.");
		history.back();
		</script>

<%
		}
	}
%>