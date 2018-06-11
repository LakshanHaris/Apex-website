<%-- 
    Document   : stfCollectAttendence
    Created on : 07-May-2018, 02:32:42
    Author     : Lakshan Harischandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Staff Management</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <link href="../resources/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <link href="../resources/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <link href="../resources/css/_all-skins.min.css" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Freckle+Face|Rock+Salt" rel="stylesheet">
        <!--link custom style css--> 
        <link href="../resources/custom/custom-styles.css" rel="stylesheet" type="text/css">
        <link href="../resources/custom/staff-style.css" rel="stylesheet" type="text/css">
        <link href="../resources/css/main-style.css" rel="stylesheet" type="text/css">
        <link href="../resources/css/style.css" rel="stylesheet" type="text/css">


    </head>
    <body class="skin-blue">
        <div class="wrapper">

            <header class="custom-main-header">

                <!-- <p id="sub-heading">We make you the best</p> -->



                <div class="row">
                    <div class="col-md-6">
                        <div id="cust-logo"><strong>Apex Institution</strong></div>
                    </div>



                    <div class="col-md-4" >
                        <div class="social-media">



                            <a href="#"><i class="fa fa-facebook-square fa-3x" ></i></a>    
                            <a href="#"><i class="fa fa-twitter-square fa-3x" ></i></a>    
                            <a href="#"><i class="fa fa-linkedin-square fa-3x" ></i></a>    
                            <a href="#"><i class="fa fa-google-plus fa-3x" ></i></a>    

                        </div>
                    </div>

                    <div class="col-md-1" >
                        <a href="../login/userLogOut" class="btn btn-block btn-success " id="stu-logout-btn" role="button">Log Out</a>

                    </div>

                </div>






            </header>
            <aside class="main-sidebar" id="mainSider">
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="../resources/img/staff2.jpg" class="img-circle" alt="User Image" >
                    </div>
                    <div class="pull-left info">
                        <p style="padding-left: 15px;">&nbsp;<strong><%=session.getAttribute("firstName")%></strong></p>

                        <a href="#"><i class="fa fa-circle text-success"></i> <strong>Online&nbsp;&nbsp;|&nbsp;Staff</strong></a>
                    </div>
                </div>
                <section class="sidebar">
                    <div class=""></div>
                    <ul class="sidebar-menu">

                        <li class="active treeview">
                            <a href="<c:url value="../staff/stfViewStaff"/>" id="student-a">
                                <i class="fa fa-user"></i> <span>&nbsp;My profile</span>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="../staff/stfViewSalary" id="lectures-a">
                                <i class="fa fa-money"></i>
                                <span>&nbsp;My Salary</span>

                            </a>
                        </li>
                        <li>
                            <a href="<c:url value="../staff/stfCollectStuAttendence"/>" id="classes-a">
                                <i class="fa fa-check-square" aria-hidden="true"></i><span>&nbsp;Collect Attendence</span>
                            </a>
                        </li>


                        <li>
                            <a href="<c:url value="../staff/stfCollectExamResults"/>" id="classes-a">
                                <i class="fa fa-cog" aria-hidden="true"></i><span>&nbsp;Enter Exam Results</span>
                            </a>
                        </li>

                        <li>
                            <a href="<c:url value="../staff/stfEnterSalaryDetails"/>" id="classes-a">
                                <i class="fa fa-cog" aria-hidden="true"></i><span>&nbsp;Enter Salary Details</span>
                            </a>
                        </li>



                        <li class="treeview">
                            <a href="../staff/stfViewMailbox" id="other-a">
                                <i class="fa fa-envelope-o" aria-hidden="true"></i>
                                <span>&nbsp;Mail box</span>

                            </a>
                        </li>


                    </ul>
                </section>

            </aside>
            <div class="content-wrapper" >
                <div class="container" id="welcomeDetails">




                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6"><p id="Atd-collection-header"><h3><strong><u>Student Attendence Collecting Terminal</u></strong></h3></p> </div>
                        <div class="col-md-3"></div>


                    </div><br>  
                    <label><strong><u id="instruction-stu-atd">Instructions for using this terminal</u> : <br><br> * First select a subject to collect attendance<br>* To collect attendence get student's fingerprint scanned / or enter the registration number manualy. <br> * Otherwise Student registration number will be auto generated by the fingerprint scanning process.<br> * Press collect attendance to submit details.</strong></label>
                </div>

                <div class="row">
                    <div class="col-md-12" id="divider"> 
                        <hr class="divider-style" >         
                    </div>
                </div>


                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Subject :</label>
                            <select class="form-control">
                                <option>Mathematics</option>
                                <option>Science</option>
                                <option>Sinhala</option>
                                <option>English</option>
                                <option>ICT</option>
                            </select>
                        </div>


                    </div>

                    <div class="col-md-2" id="atd-collection-go-btn">
                        <button type="submit" class="btn btn-primary" id="scan-attendence-validate-btn">Go !</button>
                    </div>


                </div>

                <br><br><br>


                <div class="row">




                    <div class="col-md-1">

                    </div>

                    <div class="col-md-10">
                        <div id="stu-atd-collection-center-div">
                            <div class="row">

                                <div class="col-md-3">

                                </div>

                                <div class="col-md-6">
                                    <br><br>
                                    <div class="form-group">
                                        <label id="stu-reg-id-input">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Student registration number </label>
                                        <br><br>
                                        <input type="text" class="form-control" placeholder="student id" id="stuRegInput">

                                    </div>

                                    <hr class="divider-style" > 
                                </div>

                                <div class="col-md-3">

                                </div>


                            </div>
                            <hr class="divider-style" > 

                            <div class="row" id="showStuAttendanceDiv">
                                <div class="col-md-4">

                                    <div class="col-lg-3">
                                        <img id="atd-collection-stu-pic" src="../img/admin1.jpg" width="300" height="270">
                                    </div>
                                </div>

                                <div class="col-md-1">

                                </div>

                                <div class="col-md-6">
                                    <br><br>
                                    <table class="table table-striped ">
                                        <tr>

                                            <td>Student registration number</td>
                                            <td>0001</td>

                                        </tr>

                                        <tr>

                                            <td>Date</td>
                                            <td>2017/07/21</td>

                                        </tr>

                                        <tr>

                                            <td>Subject</td>
                                            <td>Mathematics</td>

                                        </tr>
                                        <tr>

                                            <td>Status</td>
                                            <td>Attended</td>

                                        </tr>


                                    </table>

                                    <br><br>
                                    <button type="submit" class="btn btn-primary" id="scan-attendence-submit-btn">Collect Attendeance !</button>
                                    <br><a href="CollectStudentFees.html"><button type="submit" class="btn btn-primary" id="scan-attendence-submit-btn" >Pay Fees ! </button></a>
                                </div>



                                <div class="col-md-1">

                                </div>



                            </div >




                        </div>


                    </div>

                    <div class="col-md-1"></div>

                </div>





            </div><!-- /.content-wrapper -->

            <div class="copy-rights">
                <div class="container">
                    <div class="row">

                        <div class="col-md-4">
                            Copyright&nbsp;&copy; 2017 Apex Institution , Kalutara.<br>
                            Web-Site designed by : <u><a href="#">Lakshan Harischandra</a></u> 
                        </div>

                        <div class="col-md-4">
                            <!-- free space -->
                        </div>

                    </div>
                </div>
            </div>
        </div><!-- ./wrapper -->




        <script src="../resources/js/jQuery-2.1.3.min.js"></script>
        <script src="../resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../resources/js/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
        <script src="../resources/dist/js/demo.js" type="text/javascript"></script>
    </body>
</html>
