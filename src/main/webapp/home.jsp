<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>.center-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh; /* Center vertically in full height */
    background-color: #f9f9f9; /* Light background */
}

h1 {
    color: green; /* Success message color */
    margin-bottom: 20px; /* Space below the heading */
    font-size: 2rem; /* Adjust size as needed */
}

button {
    background-color: #4CAF50; /* Green background */
    border: none; /* Remove default border */
    color: white; /* White text */
    padding: 10px 20px; /* Spacing around text */
    text-align: center; /* Center text */
    text-decoration: none; /* No underline */
    display: inline-block; /* Align buttons inline */
    font-size: 1rem; /* Adjust font size */
    margin: 5px; /* Space between buttons */
    cursor: pointer; /* Pointer on hover */
    border-radius: 5px; /* Rounded corners */
    transition: background-color 0.3s; /* Smooth background color change */
}

button:hover {
    background-color: #45a049; /* Darker green on hover */
}

a {
    text-decoration: none; /* Remove underline from links */
}
</style>


</head>

<body>


	<div class="center-container">
	<h1 align="center" style="color: red; ">${success}</h1>
		<a href="add-student"><button>Add Record</button></a> <a href="fetch-students"><button>Fetch
				Record</button></a>
	</div>

</body>
</html>