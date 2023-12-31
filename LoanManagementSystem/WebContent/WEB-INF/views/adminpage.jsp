<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,com.entities.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    <style>
        /* Custom CSS */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 20px;
        }

        h2 {
            color: #0077cc;
        }

        select {
            width: 150px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #0077cc;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e0e0e0;
        }

        input[type="submit"] {
            background-color: #0077cc;
            color: #fff;
            border: none;
            cursor: pointer;
            padding: 5px 10px;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            background-color: #0077cc;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
        }

        a:hover {
            background-color: #ff5500;
        }
    </style>
</head>
<body>
<%
	ArrayList<LoanApplicants> lapp=(ArrayList<LoanApplicants>)request.getAttribute("lapp");
%>
<center><h2>Admin Page</h2><br><br></center>
<form action="filter" method="get">
<select name="sel">
<option value="all">all</option>
<option value="lapp_cust_id">customer id</option>
<option value="lapp_date">date</option>
<option value="lapp_amount_d">amount desc</option>
<option value="lapp_amount_a">amount asc</option>
</select>
<input type="submit" value="filter">
</form>
<table border=1>
<tr>
<th>loan applicant id</th>
<th>customer id</th>
<th>nominee id</th>
<th>applied date</th>
<th>loan type id</th>
<th>loan amount</th>
<th>emi range from</th>
<th>emi range to</th>
<th>emi months</th>
<th>cibil score</th>
<th>annual income</th>
<th>dispose income</th>
<th>status</th>
<th>conclusion remarks</th>
<th>edit</th>
</tr>
<%
	for(LoanApplicants lp:lapp){
%>
<form action="editdetails" method="get">
<tr>
<td><%=lp.getLapp_id() %></td>
<td><%=lp.getLapp_cust_id() %></td>
<td><%=lp.getLapp_lnom_id() %></td>
<td><%=lp.getLapp_date() %></td>
<td><%=lp.getLapp_ltype_id() %></td>
<td><%=lp.getLapp_amount() %></td>
<td><%=lp.getLapp_emirange_from() %></td>
<td><%=lp.getLapp_emirange_to() %></td>
<td><%=lp.getLapp_months_req() %></td>
<td><%=lp.getLapp_cibil_score() %></td>
<td><%=lp.getLapp_annual_income() %></td>
<td><%=lp.getLapp_dispos_income() %></td>
<td><%=lp.getLapp_status() %></td>
<td><%=lp.getLapp_conclusion_remarks() %></td>
<input type="hidden" name="lapp_id" value="<%=lp.getLapp_id()%>">
<td><input type="submit" value="edit"></td>
</tr>
</form>
<%} %>
</table>
<a href="/LoanManagementSystem/downloadExcel">Download Excel</a>

</body>
</html>