<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>
</head>
<body>
    <form:form method="post" action="userForm" modelAttribute="userForm">
        <form:input path="username" placeholder="Username" /><br />
        <form:input path="email" placeholder="Email" /><br />
        <input type="submit" value="Submit" />
    </form:form>
    <p>${message}</p><p>${message1}</p> <!-- Display a message from the controller -->
</body>
</html>
