<%-- 
    Document   : stuViewExamResults
    Created on : 06-May-2018, 23:48:02
    Author     : Lakshan Harischandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
    <head>
        <title>Student</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../resources/custom/bootswatch.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
              crossorigin="anonymous">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jua|Philosopher">
        <link rel="stylesheet" href="../resources/custom/UserCustomStyles.css">
        <link href="../resources/css/sweetalert.css" rel="stylesheet" />
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
            <a class="navbar-brand" href="#" id="mainLogo">Apex Institution</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01"
                    aria-expanded="true" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarColor01">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="<c:url value=" ../student/stuViewStudent "/>">My Profile |
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value=" ../student/stuViewPayments "/>">Payments |</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value=" ../student/stuViewExamResults "/>">Exam Results |</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value=" ../student/stuViewAttendence "/>">Attendence |</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value=" ../student/stuViewMailbox "/>">Mail box |</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value=" ../student/stuFindTutor "/>">Find a Tutor |</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value=" ../student/stuFindClass "/>">Find a Class |</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value=" ../login/userLogOut "/>">Log out |</a>
                    </li>
                </ul>
                <div id="welcomeDetailsNavBar">
                    <div class="row">
                        <div class="col-md-10">
                            <label>
                                <strong id="userRole">
                                    <i class="fa fa-circle text-success"></i>&nbsp;Online |
                                    <%=session.getAttribute("role")%>
                                </strong>
                            </label>
                            <strong id="userName"><%=session.getAttribute("firstName")%></strong>
                        </div>
                        <div class="col-md-1"></div>
                    </div>
                </div>
                <img alt="Pic" src="<%=session.getAttribute("picture")%>"  style=" width: 50px; height:50px; border-radius: 50%;">
            </div>
        </nav>
        <div style="height: 210px;"></div>

        <!-- Main container starts -->
        <div class="container" id="mainContainer">
            <div class="row">
                <div class="col-sm-6 col-md-4 form-box">

                    <div class="card border-dark mb-3" style="max-width: 20rem;">
                        <div class="card-header">Payment Details</div>
                        <div class="card-body">
                            <form>
                                <fieldset>
                                    <legend><img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png"></legend>

                                    <div class="form-group">
                                        <label class="col-form-label" for="inputDefault">Select a subject</label>
                                        <select class="custom-select" name="subject">

                                            <option value="1" selected>Mathematics</option>
                                            <option value="2">Science</option>
                                            <option value="3">Sinhala</option>
                                            <option value="4">English</option>
                                            <option value="5">ICT</option>
                                            <option value="6">History</option>
                                            <option value="7">Commerce-O/L</option>
                                            <option value="8">Combined-Maths</option>
                                            <option value="9">Physics</option>
                                            <option value="10">Chemistry</option>
                                            <option value="11">Biology</option>
                                            <option value="12">Accounting</option>
                                            <option value="13">Business-Studies</option>
                                            <option value="14">Logic</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-form-label" for="inputDefault">CARD NUMBER</label>
                                        <input type="text" class="form-control" placeholder="valid card number" id="inputDefault">
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-form-label" for="inputDefault">EXPIRATION DATE</label>
                                                <input type="text" class="form-control" placeholder="MM/YY" id="inputDefault">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-form-label" for="inputDefault">CV CODE</label>
                                                <input type="text" class="form-control" placeholder="CVC" id="inputDefault">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-4">
                                            <p class="text-warning">Payment :</p>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <fieldset>
                                                    <label class="control-label" for="readOnlyInput"><input class="form-control" id="readOnlyInput" type="text" placeholder="" readonly=""></label>

                                                </fieldset>
                                            </div>
                                        </div>
                                    </div>


                                    <button type="submit" class="btn btn-primary">Confirm Payment</button>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                    <br>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-6">
                    <div class="jumbotron">

                        <h3>Are you a person upgraded <i class="fab fa-cc-amazon-pay fa-2x"></i></i></i></h3>
                        <h2><strong>So why pay being on the queues!</strong></h2>
                        <br>
                        <h5><small>To proceed submit your card details<br><strong>Please consider that none of the transactions are refunded!<br>Call us on : +9434 22 21902 | Pay section</strong></small></h5>

                    </div>
                </div>
            </div>
        </div>

        <!-- Dont remove this footer expanding div -->
        <div class="clear"></div>

        <!-- Footer -->
        <footer id="footer">
            <!-- Footer Links -->
            <div class="container-fluid text-center">
            </div>
            <!-- Footer Links -->
            <!-- Copyright -->
            <div class="footer-copyright text-center py-3">© 2018 Copyright:
                <a href="#">&nbsp;Apex Institution | Lakshan Harischandra</a>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->

        <script src="../resources/js/jQuery-2.1.3.min.js"></script>
        <script src="../resources/js/bootstrap.js"></script>
        <script src="../resources/js/StudentControl.js"></script>
        <script src="../resources/js/sweetalert.js"></script>
    </body>
</html>
