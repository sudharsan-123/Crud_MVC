<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">Update Student Records</h1>

	<form action="update-student" method="post">
		<input type="hidden" name="id" value="${student.id}"> Name:<input
			type="text" name="studentName" value="${ student.studentName}"><br>
		<br> Mobile:<input type="number" name="studentMobile"
			value="${student.studentMobile}"><br> <br> Age:<input
			type="number" name="studentAge"><br> <br> Gender:<input
			type="radio" name="studentGender" value="male">Male <input
			type="radio" name="studentGender" value="female">Female<br>
		<br> Skills:<input type="checkbox" name="skills" value="frontend">Front-End
		<input type="checkbox" name="skills" value="backend">Back-End
		<input type="checkbox" name="skills" value="fullstack">Full-Stack<br>
		<br> Address:<input type="text" name="studentAddress"><br>
		<br>
		<button>Update</button>

	</form>
</body>
</html>