<%-- 
    Document   : stuFindTutor
    Created on : 06-May-2018, 23:35:56
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
        <link href="../resources/css/owl.carousel.css" rel="stylesheet" type="text/css"/>
        <link href="../resources/css/owl.theme.default.css" rel="stylesheet" type="text/css"/>
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
        <div style="height: 87px;"></div>

        <!-- Main container starts -->
        <div class="container" id="mainContainer">
            <!-- Dont remove this div to avoid structure faliure -->
            <div class="row" style="height: 100px;"></div>

            <form id="stuSearchTuiForm">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="col-form-label" for="inputDefault">Select a grade</label>
                            <select class="form-control" name="grade">
                                <option value="6" selected>6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="col-form-label" for="inputDefault">Select a subject</label>
                            <select class="form-control" name="subject">
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
                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-2">
                        <button type="button" class="btn btn-success" id="searchBtn-tuitor">Search</button>
                    </div>
                </div>
            </form>

            <!-- Dont remove this div to avoid structure faliure -->
            <div class="row" style="height: 100px;"></div>


            <div class="row" id="tutorLoaded">
                <!--                ajax load content here-->

            </div>

            <div class="row" id="tutorSugguest">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <div class="row" id="sub">

                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="card mb-3">
                                    <h3 class="card-header">Asela Ranasinghe</h3>
                                    <div class="card-body">
                                        <h5 class="card-title">Physics</h5>
                                        <h6 class="card-subtitle text-muted">University of Peradeniya</h6>
                                    </div>
                                    <img style="height: 200px; width: 100%; display: block;" src="../resources/customPics/aselaSir.jpg"
                                         alt="Card image">
                                    <div class="card-body">
                                        <p class="card-text">We gurantee that our tutors are well educated and skilled in teaching</p>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="card mb-3">
                                    <h3 class="card-header">Prasanna Baddewithana</h3>
                                    <div class="card-body">
                                        <h5 class="card-title">Chemistry</h5>
                                        <h6 class="card-subtitle text-muted">University of Sri Jayawardanepura</h6>
                                    </div>
                                    <img style="height: 200px; width: 100%; display: block;" src="../resources/customPics/baddewithana.jpg"
                                         alt="Card image">
                                    <div class="card-body">
                                        <p class="card-text">We gurantee that our tutors are well educated and skilled in teaching</p>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="card mb-3">
                                    <h3 class="card-header">Niluka Senanayaka</h3>
                                    <div class="card-body">
                                        <h5 class="card-title">English</h5>
                                        <h6 class="card-subtitle text-muted">An experienced school teacher</h6>
                                    </div>
                                    <img style="height: 200px; width: 100%; display: block;" src="../resources/customPics/niluka.jpg"
                                         alt="Card image">
                                    <div class="card-body">
                                        <p class="card-text">We gurantee that our tutors are well educated and skilled in teaching</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="item">
                                <div class="card mb-3">
                                    <h3 class="card-header">Prasad  Siriwardana</h3>
                                    <div class="card-body">
                                        <h5 class="card-title">Science</h5>
                                        <h6 class="card-subtitle text-muted">An experienced school teacher</h6>
                                    </div>
                                    <img style="height: 200px; width: 100%; display: block;" src="../resources/customPics/prasad.jpg"
                                         alt="Card image">
                                    <div class="card-body">
                                        <p class="card-text">We gurantee that our tutors are well educated and skilled in teaching</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="item">
                                <div class="card mb-3">
                                    <h3 class="card-header">Romesh Kitthangoda</h3>
                                    <div class="card-body">
                                        <h5 class="card-title">Sinhala</h5>
                                        <h6 class="card-subtitle text-muted">University of Kelaniya</h6>
                                    </div>
                                    <img style="height: 200px; width: 100%; display: block;" src="../resources/customPics/romesh.jpg"
                                         alt="Card image">
                                    <div class="card-body">
                                        <p class="card-text">We gurantee that our tutors are well educated and skilled in teaching</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="item">
                                <div class="card mb-3">
                                    <h3 class="card-header">Chandrasiri Withana</h3>
                                    <div class="card-body">
                                        <h5 class="card-title">ICT</h5>
                                        <h6 class="card-subtitle text-muted">An experienced school teacher</h6>
                                    </div>
                                    <img style="height: 200px; width: 100%; display: block;" src="../resources/customPics/chandrasiri.jpg"
                                         alt="Card image">
                                    <div class="card-body">
                                        <p class="card-text">We gurantee that our tutors are well educated and skilled in teaching</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="item">
                                <div class="card mb-3">
                                    <h3 class="card-header">Nirosh Chaminda</h3>
                                    <div class="card-body">
                                        <h5 class="card-title">Combined Maths</h5>
                                        <h6 class="card-subtitle text-muted">University of Moratuwa</h6>
                                    </div>
                                    <img style="height: 200px; width: 100%; display: block;" src="../resources/customPics/nirosh.jpg"
                                         alt="Card image">
                                    <div class="card-body">
                                        <p class="card-text">We gurantee that our tutors are well educated and skilled in teaching</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="item">
                                <div class="card mb-3">
                                    <h3 class="card-header">Bandara Dissanayake</h3>
                                    <div class="card-body">
                                        <h5 class="card-title">Business Studies</h5>
                                        <h6 class="card-subtitle text-muted">University of Sri Jayawardanapura</h6>
                                    </div>
                                    <img style="height: 200px; width: 100%; display: block;" src="../resources/customPics/bandara.jpg"
                                         alt="Card image">
                                    <div class="card-body">
                                        <p class="card-text">We gurantee that our tutors are well educated and skilled in teaching</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="item">
                                <div class="card mb-3">
                                    <h3 class="card-header">Suneth Edirisinghe</h3>
                                    <div class="card-body">
                                        <h5 class="card-title">Logic</h5>
                                        <h6 class="card-subtitle text-muted">University of Colombo</h6>
                                    </div>
                                    <img style="height: 200px; width: 100%; display: block;" src="../resources/customPics/suneth.jpg"
                                         alt="Card image">
                                    <div class="card-body">
                                        <p class="card-text">We gurantee that our tutors are well educated and skilled in teaching</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="item">
                                <div class="card mb-3">
                                    <h3 class="card-header">Sujeewa Peris</h3>
                                    <div class="card-body">
                                        <h5 class="card-title">Biology</h5>
                                        <h6 class="card-subtitle text-muted">University of Peradeniya</h6>
                                    </div>
                                    <img style="height: 200px; width: 100%; display: block;" src="../resources/customPics/sujeewa.jpg"
                                         alt="Card image">
                                    <div class="card-body">
                                        <p class="card-text">We gurantee that our tutors are well educated and skilled in teaching</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="item">
                                <div class="card mb-3">
                                    <h3 class="card-header">Hasika Nilushan</h3>
                                    <div class="card-body">
                                        <h5 class="card-title">Commerce-O/L</h5>
                                        <h6 class="card-subtitle text-muted">An experienced school teacher</h6>
                                    </div>
                                    <img style="height: 200px; width: 100%; display: block;" src="../resources/customPics/hasika.jpg"
                                         alt="Card image">
                                    <div class="card-body">
                                        <p class="card-text">We gurantee that our tutors are well educated and skilled in teaching</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-1"></div>
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
        <script src="../resources/js/owl.carousel.js" type="text/javascript"></script>
    </body>
</html>
