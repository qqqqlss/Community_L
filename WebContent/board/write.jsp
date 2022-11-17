<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- 스타일시트 참조  -->
<link rel="stylesheet" href="../css/bootstrap.css">
<title>jsp 게시판 웹사이트</title>
</head>
<body>
	<!-- 네비게이션  -->
	<%@ include file="nav.jsp"%>

	<!-- 게시판 -->
	<div class="container">
		<div class="row">
			<form method="post" action="writeAction.jsp">
				<table class="table table-striped"
						style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">
								게시판 글쓰기 양식
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td align="left">카테고리 
								<select name="bbsCategory">
									<option value="0">자유</option>
									<option value="1">공략</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" class="form-control"
									placeholder="글 제목" name="bbsTitle" maxlength="50" />
							</td>
						</tr>
						<tr>
							<td>
								<textarea class="form-control" placeholder="글 내용"
											name="bbsContent" maxlength="2048" style="height: 350px;">
								</textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기" />
			</form>
		</div>
	</div>

</body>
</html>
