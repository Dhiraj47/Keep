<?php
/**
 * Created by PhpStorm.
 * User: Dhiraj
 */

?>

<html>
<head>
    <title>Google Keep</title>
    <link rel="shortcut icon" type="image/ico" href="icons/favicon.ico">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
        body{
            background-image: url("icons/Google-Keep.jpg");
            background-size:cover;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-dark bg-dark justify-content-between">
    <a class="navbar-brand" style="color: white; font-size: xx-large"><b>Google Keep</b></a>
    <div class="form-inline">
        <button type="button" class="btn btn-primary mr-3" name="login" data-toggle="modal" data-target="#exampleModal">Login</button>
        <button class="btn btn-success my-2 my-sm-0" type="button" onclick="window.location.href='signup.php'">Signup</button>
    </div>
</nav>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">LOGIN</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="php_functions.php">
                    <input type="text" placeholder="Enter Username" name="user_id" required class="form-control"
                           autocomplete="off">
                    <br>
                    <input type="password" placeholder="Enter Password" name="pass" required class="form-control"
                           autocomplete="off"><br>
                    <button type="submit" class="btn btn-primary" name="login">Login</button>
                </form>
            </div>
        </div>
    </div>
</div>


</body>
</html>
