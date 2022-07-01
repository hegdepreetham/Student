<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Referral</title>
</head>
<body>
<center>
<h1> Show Referrals</h1>
<form action="showreferral">
<table>

<tr>
<td>FromDate<b style="color: blue"> [dd-MMM-yyyy]:</b></td>
<td><input type="text" name="FromDate"></td>
<tr>
<td>ToDate<b style="color: blue"> [dd-MMM-yyyy]:</b></td>
<td><input type="text" name="ToDate"></td>
</tr>
<tr>
<td><a href="home">Home</a></td>    
<td><input type="submit"></td>
</tr>
</table>
</form>
</center>
</body>
</html>