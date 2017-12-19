<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/mystyle.css">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
	function validateForm() {
		var x = document.forms["myForm"]["username"].value;
		var y = document.forms["myForm"]["password"].value;
		if (x == null || x == "") {
			alert("Input username");
			return false;
		} else {
			if (y == null || y == "") {
				alert("Input password");
				return false;
			}
		}
	}
</script>
</head>
<body>
	<div class="row">
		<div class="col-md-4 col-md-offset-4  text-center">
			<div class="well">
			<p>For now, there is only one account:teacher(password:teacher).</p>
			<form name="myForm" action="<%=request.getContextPath()%>/teacherLogin"
				onsubmit="return validateForm()" method="post">
				<div class="form-group">
						<span>Username:</span>
						<input type="text" name="name" />
				</div>
				<div class="form-group">
						<span>Password:</span>
						<input type="text" name="password" />
				</div>
						<button type="submit" class="btn btn-primary">login</button>
						<a href="job.html"><button type="button" class="btn btn-warning col-md-offset-1">back</button></a>
			</form>
			<%String error = (String) request.getAttribute("error");
			if (error != null) {%>
			<h3><%=error%></h3>
			<%}%>
		</div>
		</div>
	</div>
</body>
</html>