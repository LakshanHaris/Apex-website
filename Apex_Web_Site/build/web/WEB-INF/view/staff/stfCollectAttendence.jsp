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
            <div class="row" style="height: 70px;"></div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-6"><p id="Atd-collection-header"><h3><strong><u>Student Attendance Collection Process</u></strong></h3></p> </div>
                <div class="col-md-2"></div>
            </div>  
            <div class="row" style="height: 70px;"></div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8"><label><strong><u id="instruction-stu-atd">Instructions for using this functionality</u> : <br><br> * First select a subject to collect attendance<br>* To collect attendance scan student's card  / or enter the registration number manually. <br>  * Press collect attendance to submit details.</strong></label></div>
                <div class="col-md-2"></div>

            </div>

            <div class="row" style="height: 70px;"></div>

            <form id="stfSubmitSalaryDetailsForm">
                <div class="row">
                    <div class="col-md-2"></div>
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
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="col-form-label" for="inputDefault">Student Id</label>
                            <input type="text" class="form-control" placeholder="student-registration-number"  name="studentId">
                        </div>

                    </div>
                    <div class="col-md-2"></div>
                </div>

                <div class="row" style="height: 10px;"></div>
                <hr class="divider-style" >
                <div class="row" style="height: 50px;"></div>

                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-5">
                                <img id="atd-collection-stu-pic" src="../img/admin1.jpg" width="300" height="270">
                            </div>
                            <div class="col-md-1"></div>
                            <div class="col-md-6">
                                <table class="table table-hover" id="profileTable">

                                    <tbody>
                                        <tr class="table-success">
                                            <th scope="row">Student Id</th>
                                            <td>${studentResult.stuRegNumber}</td>

                                        </tr>
                                        <tr class="table-light">
                                            <th scope="row">Student Name</th>
                                            <td>${studentResult.firstName} &nbsp; ${studentResult.lastName}</td>
                                        </tr>
                                        <tr class="table-success">
                                            <th scope="row">Mobile Number</th>
                                            <td>${studentResult.mobileNumber}</td> 
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2"></div>
                </div>

                <div class="row" style="height: 70px;"></div>

                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2"></div>
                    <div class="col-md-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" id="stfCollectAtd">Collect Attendance !</button>
                    </div>
                    <div class="col-md-2"></div>
                    <div class="col-md-2"></div>
                </div>

                <div class="row" style="height: 70px;"></div>

                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2"></div>
                    <div class="col-md-4">
                        <button type="button" class="btn btn-primary btn-lg btn-block" id="stfCollectFees">Collect Fees !</button>
                    </div>
                    <div class="col-md-2"></div>
                    <div class="col-md-2"></div>
                </div>
            </form>
        </div>
        <div class="row" style="height: 70px;"></div>

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
