<%-- 
    Document   : adminLogin
    Created on : Dec 20, 2017, 1:07:48 PM
    Author     : Lakshan Harischandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
        <title>Login | Apex</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="../resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="../resources/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="../resources/custom/form-elements.css">
        <link rel="stylesheet" href="../resources/custom/style.css">



    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">

            <div class="inner-bg">
                <div class="container">
                    <div class="row">
<!--                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1>
                                <strong>Apex Institution</strong> Sri Lanka's most trusted tt</h1>
                            
                        </div>-->
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-md-4 form-box">
                            <div class="form-top">
                                <div class="form-top-left">
                                    <h3>Login to your account</h3>
                                    <p>Welcome Again!</p>
                                </div>
                                <div class="form-top-right">
                                    <i class="fa fa-lock"></i>
                                </div>
                            </div>
                            <div class="form-bottom">
                                <form role="form" action="../login/checkUserNamePassword" method="POST" id="loginForm" class="login-form">

                                    <div class="form-group" id="selectorRole">

                                        <select class="form-control" id="optionRole" name="role">
                                            <option value="admin">Administrator</option>
                                            <option value="student">Student</option>
                                            <option value="tutor">Tutor</option>
                                            <option value="staff">Staff Member</option>

                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label class="sr-only" for="form-username">Registration number</label>
                                        <input type="text" name="regNumber" placeholder="user id" class="form-username form-control" id="form-username" required>
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="form-password">Password</label>
                                        <input type="password" name="password" placeholder="password" class="form-password form-control" id="form-password">
                                    </div>
                                    <button type="submit" class="btn">Log in</button>
                                </form>
                            </div>
                        </div>
                    </div>
<!--                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">

                            <div class="social-login-buttons">
                                <a class="btn btn-link-2" href="#">
                                    <i class="fa fa-facebook"></i> Facebook
                                </a>
                                <a class="btn btn-link-2" href="#">
                                    <i class="fa fa-twitter"></i> Twitter
                                </a>
                                <a class="btn btn-link-2" href="#">
                                    <i class="fa fa-google-plus"></i> Google Plus
                                </a>
                            </div>
                        </div>
                    </div>-->
                </div>
            </div>

        </div>


        <!-- Javascript -->
        
        <script src="../resources/js/jQuery-2.1.3.min.js" type="text/javascript"></script>
        <script src="../resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="../resources/js/jquery.backstretch.js" type="text/javascript"></script>
        <script src="../resources/js/scripts.js"></script>



    </body>
</html>
