<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript">

	//查找用户
	function searchStudent() {
	    var form1 = document.forms['form1'];
	    form1.action = "<%=request.getContextPath()%>/teacher/studentRecord";
	    form1.method = "post";
	    form1.submit();
	}
    //添加用户
    function addStudent() {
        var form2 = document.forms['form2'];
        form2.action = "<%=request.getContextPath()%>/teacher/addStudent";
        form2.method = "post";
        form2.submit();
    }
</script>
</head>

<body>
	<jsp:include page="teacherTop.jsp" />
	<div class="row">
		<div class="col-md-4 col-md-offset-4  text-center">
			<div class="well">
				<form name="form1">
					<div class="form-group">
						<span>Student Name:</span> <input type="text" name="name">
					</div>
					<button type="submit" class="btn btn-primary"
						onclick="searchStudent()">search</button>
					<a href="job.html"><button type="button"
							class="btn btn-warning">log out</button></a>
				</form>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-md-offset-4 text-center">
			<div class="well">
				<form name="form2">
					<div class="form-group">
						<h3>Add new student</h3>
						<span>NAME:</span>
						<input type="text" name="name">
					</div>
					<div class="form-group">
						<span>HOMEWORK:</span> <input type="number" name="homework">
					</div>
					<div class="form-group">
						<span>MIDTERM:</span> <input type="number" name="midterm">
					</div>
					<div class="form-group">
						<span>FINALEXAM:</span>
						<td><input type="number" name="finalexam">
					</div>

					<button type="submit" class="btn btn-primary"
						onclick="addStudent()">Add</button>
				</form>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-md-offset-4  text-center">
			<div class="well">
				<a href="<%=request.getContextPath()%>/teacher/listStudent"><button
						class="btn btn-primary">Show All Students</button></a>
			</div>
		</div>
	</div>
</body>
</html>