<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
    <head>
        <title>Staff</title>
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
                        <a class="nav-link" href="<c:url value="../staff/stfViewStaff"/>">My Profile |
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="../staff/stfViewSalary"/>">My Salary |</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="../staff/stfCollectStuAttendence"/>">Collect Attendance |</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="../staff/stfCollectExamResults"/>">Enter Exam Results |</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="../staff/stfEnterSalaryDetails"/>">Enter Salary Details |</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="../staff/stfViewMailbox"/>">Inbox |</a>
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
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="jumbotron">
                        <h1 class="display-3">We are Sorry! &nbsp; <i class="fas fa-frown"></i></h1>
                        <p class="lead">The page you are requested is still under construction.</p>
                        <hr class="my-4">
                        <label>Enquery call on : <strong>(+94342221902)</strong>&nbsp;&nbsp;Technical division | Apex institution.</label>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>

        </div>

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
        <script src="../resources/js/staffControl.js"></script>
        <script src="../resources/js/sweetalert.js"></script>

    </body>
</html>
