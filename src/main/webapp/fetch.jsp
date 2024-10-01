<%@ page isELIgnored="false"%>
<%@ page import="java.util.Arrays"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fetch</title>
</head>
<body>

	<div align="center">
	
	<h1 align="center" style="color: hotpink;">All Student Data</h1>
	
	<h2 style="color: yellow;">${sucecss}</h2>

		<table border="1">

			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Mobile</th>
				<th>Age</th>
				<th>Skill</th>
				<th>Gender</th>
				<th>Address</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>

			<c:forEach var="s" items="${students}">
				<tr>
					<td>${s.id}</td>
					<td>${s.studentName}</td>
					<td>${s.studentMobile}</td>
					<td>${s. studentAge}</td>
					<td>${Arrays.toString(s.skills)}</td>
					<td>${s.studentGender}</td>
					<td>${s.studentAddress}</td>
					<td><a href="edit?id=${s.id}"><button>Edit</button></a></td>
					<td><a href="delete?id=${s.id}"><button>Delete</button></a></td>
				</tr>
			</c:forEach>

		</table>

	</div>

</body>
</html>
