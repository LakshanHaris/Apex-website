<%-- 
    Document   : stuFindClass
    Created on : 06-May-2018, 23:48:29
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

            <form id="stuSearchClassForm">
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
                        <button type="button" class="btn btn-success" id="search-btnClass">Search</button>
                    </div>
                </div>
            </form>

            <!-- Dont remove this div to avoid structure faliure -->
            <div class="row" style="height: 100px;"></div>


            <div class="row" id="classLoaded">
                <!--                ajax load content here-->

            </div>
            
            <div class="row" style="height: 80px;"></div>

            <div class="row" id="classSugguest">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <div class="row" id="sub">

                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="card mb-3">
                                    <h3 class="card-header">Combined Mathematics</h3>
                                    <div class="card-body">
                                        <h5 class="card-title">Saturday | 12-2 p.m</h5>
                                        <h6 class="card-subtitle text-muted">Grade 12 : hall 3</h6>
                                    </div>
                                    <img style="height: 200px; width: 100%; display: block;" src="../resources/img/apex.png"
                                         alt="Card image">
                                    <div class="card-body">
                                        <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="card mb-3">
                                    <h3 class="card-header">Physics</h3>
                                    <div class="card-body">
                                        <h5 class="card-title">Saturday | 4-6 p.m</h5>
                                        <h6 class="card-subtitle text-muted">Grade 13 : hall 4</h6>
                                    </div>
                                    <img style="height: 200px; width: 100%; display: block;" src="../resources/img/apex.png"
                                         alt="Card image">
                                    <div class="card-body">
                                        <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="card mb-3">
                                        <h3 class="card-header">ICT</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Thursday | 4-6 p.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 8 : hall 2</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="../resources/img/apex.png"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                            </div>

                            <div class="item">
                                <div class="card mb-3">
                                        <h3 class="card-header">English</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Saturday | 2-4 p.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 10 : hall 1</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="../resources/img/apex.png"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                            </div>

                            <div class="item">
                                <div class="card mb-3">
                                        <h3 class="card-header">Business Studies</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Saturday | 10-12 a.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 12 : hall 4</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="../resources/img/apex.png"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                            </div>

                            <div class="item">
                                <div class="card mb-3">
                                        <h3 class="card-header">Science</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Friday | 4-6 p.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 8 : hall 1</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="../resources/img/apex.png"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                            </div>

                            <div class="item">
                                <div class="card mb-3">
                                        <h3 class="card-header">Commerce O/L</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Saturday | 10-12 a.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 11 : hall 3</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="../resources/img/apex.png"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>






            <!--            <div id="classSuguest">
                            <div class="row">
                                <div class="col-md-2"></div>
                                <div class="col-md-4">
                                    <div class="card mb-3">
                                        <h3 class="card-header">Combined Mathematics</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Saturday | 12-2 p.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 12 : hall 3</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card mb-3">
                                        <h3 class="card-header">Physics</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Saturday | 4-6 p.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 13 : hall 4</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2"></div>
                            </div>
            
                            <div class="row">
                                <div class="col-md-2"></div>
                                <div class="col-md-4">
                                    <div class="card mb-3">
                                        <h3 class="card-header">ICT</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Thursday | 4-6 p.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 8 : hall 2</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card mb-3">
                                        <h3 class="card-header">English</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Saturday | 2-4 p.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 10 : hall 1</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2"></div>
                            </div>
                        </div>-->
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
