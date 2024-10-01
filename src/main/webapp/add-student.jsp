<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif; /* Set a clean font */
	background-color: #f9f9f9; /* Light background */
	margin: 0;
	padding: 5px;
}

h1 {
	text-align: center; /* Center the title */
	color: #333; /* Darker text color */
}

form {
	max-width: 500px; /* Set a max width for the form */
	margin: 0 auto; /* Center the form */
	padding: 10px; /* Add padding */
	background-color: white; /* White background for the form */
	border-radius: 5px; /* Rounded corners */
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
}

input[type="text"], input[type="number"] {
	width: 100%; /* Full width */
	padding: 5px; /* Spacing inside input */
	margin: 10px 0; /* Space above and below inputs */
	border: 1px solid #ccc; /* Light border */
	border-radius: 5px; /* Rounded corners */
}

input[type="radio"], input[type="checkbox"] {
	margin-right: 5px; /* Space between radio/checkbox and label */
}

button {
	background-color: #4CAF50; /* Green background */
	color: white; /* White text */
	padding: 10px 15px; /* Padding around the button */
	border: none; /* Remove default border */
	border-radius: 5px; /* Rounded corners */
	cursor: pointer; /* Pointer on hover */
	display: block; /* Block display for full width */
	width: 100%; /* Full width button */
	margin-top: 10px; /* Space above the button */
	transition: background-color 0.3s; /* Smooth background color change */
}

button:hover {
	background-color: #45a049; /* Darker green on hover */
}
</style>


</head>
<body>

	<h1 align="center">Add Student Records</h1>

	<form action="add-student" method="post">
		Name:<input type="text" name="studentName"><br> <br>
		Mobile:<input type="number" name="studentMobile"><br> <br>
		Age:<input type="number" name="studentAge"><br> <br>
		Gender:<input type="radio" name="studentGender" value="male">Male
		<input type="radio" name="studentGender" value="female">Female<br>
		<br> Skills:<input type="checkbox" name="skills" value="frontend">Front-End
		<input type="checkbox" name="skills" value="backend">Back-End
		<input type="checkbox" name="skills" value="fullstack">Full-Stack<br>
		<br> Address:<input type="text" name="studentAddress"><br>
		<br>
		<button>Save</button>
	</form>

</body>
</html>