<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Home</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(to right, rgb(219, 66, 207), lightblue);
        }

        h1 {

            color: rgb(4, 14, 24);
            margin-bottom: 4rem;
            font-size: rem;
        }

        .link {
            margin: 5rem;
        }

        .button {
            background-color: rgb(11, 96, 224);
            margin-bottom: 2rem;
            width: 40%;

        }

        .button>a {
            color: rgb(52, 209, 118);
            text-decoration: none;
            font-size: 1.2rem;
        }
        .button:hover{
            color: aqua;
            background-color: rgb(48, 41, 41);
        }
    </style>
</head>

<body>

    <div class="container link">
        <div class="row text-center ">
            <div class="col-lg-12">
                <h1>Employee Referral Program</h1>
                    <button type="button" class="btn mx-auto rounded-pill button"><a href="make">Make a
                            referral</a>
                    </button>
                    <br>
                    <button type="button" class="btn rounded-pill mx-auto button">
                         <a href="show">show
                            referrals</a>
                    </button>
            </div>
        </div>
    </div>

</body>

</html>