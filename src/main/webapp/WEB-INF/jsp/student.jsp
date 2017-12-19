<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="studentTop.jsp" />
	<div class="row">
		<div class="col-md-4 col-md-offset-4  text-center">
			<div class="well">
			<form action="<%=request.getContextPath()%>/student/studentRecord" method="post">
				
						<button type="submit" class="btn btn-primary">My Record</button>
						<a href="<%=request.getContextPath()%>/logout"><button type="button" class="btn btn-primary">log out</button>
					
			</form>
		</div>
	</div>
	</div>
</body>
</html>