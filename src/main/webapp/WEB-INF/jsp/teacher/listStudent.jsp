<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style.css">
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</head>
<body>
	<div class="col-md-6 col-md-offset-3">
		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">NAME</th>
					<th scope="col">HOMEWORK</th>
					<th scope="col">MIDTERM</th>
					<th scope="col">FINAL</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${studentList}" var="student" varStatus="st">
					<tr>
						<td>${student.id}</td>
						<td>${student.name}</td>
						<td>${student.homework}</td>
						<td>${student.midterm}</td>
						<td>${student.finalexam}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>