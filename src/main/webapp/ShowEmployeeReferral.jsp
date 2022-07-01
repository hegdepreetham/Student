<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
div {
    height: 200px;
    width: 600px;
   

    position: fixed;
    top: 40%;
    left: 40%;
    margin-top: -100px;
    margin-left: -50px;
}</style>
<meta charset="ISO-8859-1">
<title>All Referred Employees</title>
</head>
<body>

<h1 align="center">Candidate Details</h1>
<div>
<table  border="2">
<tr>
      <td><b>EmpName</b></td>
      <td><b>CandidateName</b></td>
      <td><b>CandidateSkill</b></td>
      <td><b>ReferralBonus</b></td>
</tr>


<c:forEach var="emp" items="${e}">
<tr>
    <td>${emp.empname}</td>
    <td>${emp.candname}</td>
    <td>${emp.candskill}</td>
    <td>15000.00</td>
</tr>
</c:forEach>

</table>

</div>
</body>
</html>