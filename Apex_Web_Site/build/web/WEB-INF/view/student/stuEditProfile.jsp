<%-- 
    Document   : stuEditProfile
    Created on : 06-May-2018, 23:42:54
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
        <link href="../resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>

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
        <div style="height: 87px;"></div>

        <!-- Main container starts -->
        <div class="container" id="mainContainer">

            <div class="row" style="height: 100px;"></div>

            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <form id="stuEditStudentForm">
                        <fieldset>
                            <legend>
                                <u>You can update your profile details here</u>
                            </legend>
                            <br>
                            <div class="form-group">
                                <label class="col-form-label" for="inputDefault">First name</label>
                                <input type="text" class="form-control" placeholder="first name"  name="firstName">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label" for="inputDefault">Last name</label>
                                <input type="text" class="form-control" placeholder="last name"  name="lastName">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label" for="inputDefault">Date of birth</label>
                                <input type="text" class="form-control" placeholder="yyyy/mm/dd"  name="dob" id="dateinput">
                            </div>
                            <fieldset class="form-group">
                                <label class="col-form-label" for="inputDefault">Gender</label>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="radio" class="form-check-input"  id="optionsRadios1" value="male" name="gender" checked="">Male
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="radio" class="form-check-input" id="optionsRadios2" value="female" name="gender">Female
                                    </label>
                                </div>
                            </fieldset>
                            <div class="form-group">
                                <label class="col-form-label" for="inputDefault">Grade</label>
                                <input type="number" class="form-control" placeholder="grade"  name="grade">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label" for="inputDefault">Address</label>
                                <input type="text" class="form-control" placeholder="address"  name="address">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label" for="inputDefault">Mobile number</label>
                                <input type="number" class="form-control" placeholder="10 digits"  name="mobileNumber">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label" for="inputDefault">Email</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="email">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label class="col-form-label" for="inputDefault">Change password</label>
                                <input type="password" class="form-control" placeholder="password"  name="password">
                            </div>
                            <br>
                            
                            <br>
                            <br>
                            <button type="button" class="btn btn-primary" id="stuEditStuBtn">Submit</button>
                        </fieldset>  
                    </form>

                </div>
                <div class="col-md-3"></div>
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
        <script src="../resources/js/jquery-ui.js" type="text/javascript"></script>
        <script src="../resources/js/StudentControl.js"></script>
        <script src="../resources/js/sweetalert.js"></script>

    </body>
</html>
