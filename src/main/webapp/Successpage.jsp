<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
div {
    height: 200px;
    width: 600px;
   

    position: fixed;
    top: 40%;
    left: 40%;
    margin-top: -100px;
    margin-left: -200px;
}</style>
<title>Success!!</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
  <center>
  <div style="color: blue"  >
  <h3>  Hello ${empbean.empname}!! Thank you for referring ${empbean.candname}  </h3><br><br>
   <a href="home">Home</a>
   </div>
  </center>
</body>
</html>