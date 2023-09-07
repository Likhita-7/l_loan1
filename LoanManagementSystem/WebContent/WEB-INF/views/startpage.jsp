<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* styles.css */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    text-align: center; /* Center align the content horizontally */
    padding-top: 20px; /* Add some top padding for vertical centering */
}
h1 {
    font-size: 36px; /* Adjust the font size as needed */
    color: "black";
    margin-bottom: 20px; /* Add margin below the <h1> element */
}

.button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #0077cc;
    color: #ffffff;
    text-decoration: none;
    margin: 10px; /* Add some margin to separate the buttons */
    border-radius: 5px;
    transition: background-color 0.3s;
}

.button:hover {
    background-color: #ff5500;
}
</style>
</head>
<body>

<h1>LRC LOANS</h1>
<center>
<a class="button" href="home">customer page</a><br><br>
<a class="button" href="admin">admin page</a><br><br>
<a  class="button" href="checkloan">check your luck</a>
</center>
</body>

</html>