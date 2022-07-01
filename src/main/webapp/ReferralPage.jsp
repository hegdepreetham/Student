<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
 <!DOCTYPE html>
<html>

<head>
        <meta charset="ISO-8859-1">
        <title>Employee Referral</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
                crossorigin="anonymous">
        <style>
                body {
                        background: linear-gradient(to right, rgb(219, 66, 207), lightblue);
                }

                h1 {

                        color: rgb(4, 14, 24);
                        margin-bottom: 4rem;
                        font-size: rem;
                        margin-top : 3rem;
                        padding-top : 3rem;
                }

                .table {
                        border: solid 0.2rem black;
                        width: 60%;
                }

                .table>tr {
                        padding: 2rem;
                        height: 20px;
                }

                .table td {
                        height: 20px;
                        padding: 0.5rem;
                        text-align: start;
                        padding-left: 2rem;
                        margin-right: solid black 0.1rem;
                       
                }

                .error {
                        color: #ff0000;
                        font-style: italic;
                }

                .for {
                        background-color: aqua;
                }
                .btn{
                        background-color: cyan;
                }
                .btn:hover{
                                background-color: rgb(130, 130, 131);
                        }
                .submit{
                        background-color:cyan;
                          text-decoration: none;
                        border: none;
                        font-size: large;
                }
                .submit:hover{
                        background-color: rgb(161, 180, 180);
                }
                a{
                        text-decoration: none;
                        font-size: large;
                        color: black;
                }
                
        </style>
</head>

<body>

        <div class="container">
                <div class="row text-center mt-15">
                        <h1>Make a Referral</h1>

                        <form:form action="success" modelAttribute="empbean">
                                <table class="table mx-auto">
                                        <tr>
                                                <td>EmpName: </td>
                                                <td>
                                                        <form:input path="empname" />
                                                </td>
                                                <td class="for">
                                                        <form:errors path="empname" cssClass="error" />
                                                </td>
                                        </tr>
                                        <tr>
                                                <td> EmpDor <b style="color: blue"> [dd-MMM-yyyy]: </b> </td>
                                                <td>
                                                        <form:input path="dor" />
                                                </td>
                                                <td>
                                                        <form:errors path="dor" cssClass="error" />
                                                </td>
                                        </tr>
                                        <tr>
                                                <td> CandName: </td>
                                                <td>
                                                        <form:input path="candname" />
                                                <td>
                                                        <form:errors path="candname" cssClass="error" />
                                                </td>
                                        </tr>
                                        <tr>
                                                <td> CandSkill: </td>
                                                <td>
                                                        <form:select path="candskill">
                                                                <form:option value="" label="select" />
                                                                <form:option value="J2EE" label="J2EE" />
                                                                <form:option value="SAP ABAP" label="SAP ABAP" />
                                                                <form:option value="Sales Force" label="Sales Force" />
                                                        </form:select>
                                                <td>
                                                        <form:errors path="candskill" cssClass="error" />
                                                </td>
                                        </tr>
                                        <tr>
                                                <td> CandLevel: </td>
                                                <td>
                                                        <form:input path="candlevel" />
                                                </td>
                                                <td>
                                                        <form:errors path="candlevel" cssClass="error" />
                                                </td>
                                        </tr>
                                        <tr>
                                                <td> <button type="button" class="btn"><a href="home">Home</a></button></td>
                                                <td><button type="button" class="btn "><input
                                                                                class="submit"
                                                                        type="submit"></button> </td>
                                        </tr>
                                </table>
                                <spring:hasBindErrors name="empbean">
                                        <h3>All Errors</h3>
                                        <form:errors path="*" cssClass="error" />
                                </spring:hasBindErrors>
                        </form:form>
                </div>
        </div>


</body>

</html>