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
        <div style="height: 87px;"></div>

        <!-- Main container starts -->
        <div class="container" id="mainContainer">

            <div class="row" style="height: 100px;"></div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-5">
                    <div class="container">
                        <img src="<%=session.getAttribute("picture")%>" class="img-responsive" style="width: 300px; height: 300px;" id="stuPic">
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>

            <div style="height: 87px;"></div>

            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="container">
                        <div class="form-group">
                            <div class="input-group mb-3">

                                <div class="custom-file">
                                    <form id="profilePicUpload" action="../student/stuEditPic" method="POST"  enctype="multipart/form-data" >
                                        <input type="file" class="custom-file-input" id="inputGroupFile02" name="picture">
                                        <label class="custom-file-label" for="inputGroupFile02">Choose file</label>
                                        <button id="updateBtnPic" type="submit" class="btn btn-primary btn-lg" >Upload photo</button>
                                    </form>
                                </div>



                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>

            <div style="height: 130px;"></div>

            <div class="row">
                <div class="col-md-3"></div><br>
                <div class="col-md-6 col-xs-8 col-sm-8">
                    <table class="table table-hover" id="profileTable">

                        <tbody>
                            <tr class="table-success">
                                <th scope="row">Student Registration Number</th>
                                <td>${studentResult.stuRegNumber}</td>

                            </tr>
                            <tr class="table-light">
                                <th scope="row">Student Name</th>
                                <td>${studentResult.firstName} &nbsp; ${studentResult.lastName}</td>

                            </tr>
                            <tr class="table-success">
                                <th scope="row">Date of Birth</th>
                                <td>${studentResult.dob}</td>

                            </tr>
                            <tr class="table-light">
                                <th scope="row">Gender</th>
                                <td>${studentResult.gender}</td>

                            </tr>
                            <tr class="table-success">
                                <th scope="row">Grade</th>
                                <td>${studentResult.grade}</td>

                            </tr>
                            <tr class="table-light">
                                <th scope="row">Address</th>
                                <td>${studentResult.address}</td> 

                            </tr>
                            <tr class="table-success">
                                <th scope="row">Mobile Number</th>
                                <td>${studentResult.mobileNumber}</td> 

                            </tr>
                            <tr class="table-light">
                                <th scope="row">Email</th>
                                <td>${studentResult.email}</td> 

                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-3"></div>
            </div>

            <div style="height: 30px;"></div>          

            <div class="row">
                <div class="col-md-5"></div>
                <div class="col-md-5">
                    <a href="<c:url value="../student/stuEditProfile"/>"> <button type="button" class="btn btn-primary">Edit Profile Details</button></a>
                </div>
                <div class="col-md-2"></div>
            </div>

            <div style="height: 60px;"></div> 

            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <button type="button" class="btn btn-primary btn-lg btn-block" id="getSubjects">Click to see your subjects</button>
                </div>
                <div class="col-md-3"></div>
            </div>

            <div style="height: 30px;"></div> 

            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6" >
                    <ul class="list-group" id="subjectPanelBody">
                        
                    </ul>
                </div>
                <div class="col-md-3"></div>
            </div>

            <div style="height: 100px;"></div> 

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
        <script src="../resources/js/StudentControl.js"></script>
        <script src="../resources/js/sweetalert.js"></script>

    </body>
</html>
