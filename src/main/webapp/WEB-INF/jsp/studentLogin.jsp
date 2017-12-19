<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
<script>
	function validateForm() {
		var x = document.forms["myForm"]["name"].value;
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
				<h3>Test account: ann(password:0000)</h3>
				<form name="myForm"
					action="<%=request.getContextPath()%>/studentLogin"
					onsubmit="return validateForm()" method="post">
					<div class="form-group">
						<span>User Name:</span> <input type="text" name="name">
					</div>
					<div class="form-group">
						<span>Password:</span> <input type="text" name="password">
					</div>
					<button type="submit" class="btn btn-primary">login</button>
					<a href="<%=request.getContextPath()%>/job"><button
							type="button" class="btn btn-warning col-md-offset-1">back</button></a> <input
						type='hidden' id='btnType' name='btnType' />
				</form>
			</div>
		</div>
	</div>
</body>
</html>