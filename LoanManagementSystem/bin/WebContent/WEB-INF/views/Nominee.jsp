<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Loan Nominee Information</title>
</head>
<body>
<center>
    <h2>Loan Nominee Information</h2>
    <form action="processLoanNominee.jsp" method="post">
        <label for="ln_nominee">Nominee Name:</label>
        <input type="text" id="ln_nominee" name="ln_nominee" required><br><br>

        <label for="ln_relation">Relation:</label>
        <input type="text" id="ln_relation" name="ln_relation" required><br><br>

        <input type="submit" value="Submit">
    </form>
    </center>
</body>
</html>
    