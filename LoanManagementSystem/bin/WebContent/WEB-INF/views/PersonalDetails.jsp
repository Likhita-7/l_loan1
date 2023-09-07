<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Registration</title>
</head>
<body>
<center>
    <h2>Customer Registration Form</h2>
    <form action="processCustomer.jsp" method="post">
        <label for="cust_fname">First Name:</label>
        <input type="text" id="cust_fname" name="cust_fname" required><br><br>

        <label for="cust_lname">Last Name:</label>
        <input type="text" id="cust_lname" name="cust_lname" required><br><br>

        <label for="cust_dob">Date of Birth:</label>
        <input type="date" id="cust_dob" name="cust_dob" required><br><br>

        <label for="cust_panno">PAN Number:</label>
        <input type="text" id="cust_panno" name="cust_panno" maxlength="10" required><br><br>

        <label for="cust_mobile">Mobile Number:</label>
        <input type="text" id="cust_mobile" name="cust_mobile" pattern="\d{10}" required><br><br>

        <label for="cust_address">Address:</label>
        <textarea id="cust_address" name="cust_address" rows="4" cols="50" required></textarea><br><br>

        <label for="cust_gname">Guardian Name:</label>
        <input type="text" id="cust_gname" name="cust_gname" required><br><br>

        <input type="submit" value="Submit">
    </form>
    </center>
</body>
</html>
