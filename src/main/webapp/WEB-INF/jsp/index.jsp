<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">

</head>

<body>
<div class="middle-div">
	<div class="row">
		<div class="col-sm-8 col-sm-offset-2">
			<div class="jumbotron text-center ">
				<div class="well">
					<h1>Welcome to Hao's Project!</h1>
					<h2>Student Records System</h2>
					<p>
						This system allows students to login into their account and search
						their records, and register new student account.<br /> And this
						system allows teacher to login into their account and search,
						update student records. And show all students records. For now,
						there is only one teacher account in system.<br /> Welcome to use
						this system!
					</p>
					<div align="center">
						<a href="<%=request.getContextPath()%>/job"><button
								type="button" class="btn btn-primary">Try it!</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>