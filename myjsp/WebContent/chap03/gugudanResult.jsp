<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js'></script>
<title>구구단 출력</title>
</head>
<body>
<div class="container">
		<div class="row">
			<div class="col">
				<h2><%=request.getParameter("dan")%>단
				</h2>
				<ul class="list-group list-group-first">
					<li class="list-group-item">
						<%
						int gugudan = Integer.parseInt(request.getParameter("dan"));
						for (int j = 1; j < 10; j++) {
						%> 
						<%=gugudan%>
						<i class="fas fa-times"></i>
						<%=j%>
						<i class="fas fa-equals"></i>
						<%=gugudan * j%> <br />
						<%
							}
						%>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>