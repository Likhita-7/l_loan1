<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.entities.*"
    pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Details of Applicant</h1>
<%LoanApplicants lp=(LoanApplicants)request.getAttribute("editdetails");%>
<label>loan id:</label>
<%=lp.getLapp_id() %><br><br>
<label>customer id:</label>
<%=lp.getLapp_cust_id() %><br><br>
<label>nominee id:</label>
<%=lp.getLapp_lnom_id() %><br><br>
<label>applied date</label>
<%=lp.getLapp_date() %><br><br>
<label>loan type id:</label>
<%=lp.getLapp_ltype_id() %><br><br>
<label>loan amount:</label>
<%=lp.getLapp_amount() %><br><br>
<label>emi range from:</label>
<%=lp.getLapp_emirange_from() %><br><br>
<label>emi range to:</label>
<%=lp.getLapp_emirange_to() %><br><br>
<label>emi months</label>
<%=lp.getLapp_months_req() %><br><br>
<label>cibil score</label>
<%=lp.getLapp_cibil_score() %><br><br>
<label>annual income</label>
<%=lp.getLapp_annual_income() %><br><br>
<label>disposed income</label>
<%=lp.getLapp_dispos_income() %><br><br>
<form action="save" method="get">
<input type="hidden" name="lapp_id" value="<%=lp.getLapp_id() %>">
<label>loan status:</label>
<select name="lapp_status">
<option value="proc">processing</option>
<option value="aprv">approved</option>
<option value="rejt">rejected</option>
</select><br><br>
<label>remarks:</label>
<input type="text" name="lapp_conclusion_remarks">
<input type="submit" value="save">
</form>
</body>
</html>