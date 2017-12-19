<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript">

</script>
</head>
<body>
	<div class="row">
		<div class="col-md-4 col-md-offset-4 text-center">
			<a href="<%=request.getContextPath()%>/studentLogin"><button type="button" class="btn btn-primary">student</button></a>
			<a href="<%=request.getContextPath()%>/teacherLogin"><button type="button" class="btn btn-primary">teacher</button></a>
		</div>
	</div>
</body>
</html>