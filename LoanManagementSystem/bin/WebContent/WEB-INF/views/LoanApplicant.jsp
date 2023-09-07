<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Loan Application Form</title>
</head>
<body>
<center>
    <h2>Loan Application Form</h2>
    <form action="processLoanApplication.jsp" method="post">
        
        <label for="la_date">Application Date:</label>
        <input type="date" id="la_date" name="la_date" required><br><br>

        <label for="la_lnty_id">Loan Type ID:</label>
        <input type="text" id="la_lnty_id" name="la_lnty_id" required><br><br>

        <label for="la_amount">Loan Amount:</label>
        <input type="text" id="la_amount" name="la_amount" required><br><br>

        <label for="la_emirange_from">EMI Range (From):</label>
        <input type="text" id="la_emirange_from" name="la_emirange_from" required><br><br>

        <label for="la_emirange_to">EMI Range (To):</label>
        <input type="text" id="la_emirange_to" name="la_emirange_to" required><br><br>

        <label for="la_nom_req">No Of Months Required:</label>
        <input type="text" id="la_nom_req" name="la_nom_req" required><br><br>

        <label for="la_cibil_score">CIBIL Score:</label>
        <input type="text" id="la_cibil_score" name="la_cibil_score" required><br><br>

        <label for="la_status">Status:</label>
        <input type="text" id="la_status" name="la_status" required><br><br>

        <label for="la_conclusion_remarks">Conclusion Remarks:</label>
        <textarea id="la_conclusion_remarks" name="la_conclusion_remarks" rows="4" cols="50" required></textarea><br><br>

        <input type="submit" value="Submit">
    </form>
    </center>
</body>
</html>
