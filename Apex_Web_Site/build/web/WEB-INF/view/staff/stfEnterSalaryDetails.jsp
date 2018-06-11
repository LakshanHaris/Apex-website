<%-- 
    Document   : stfEnterSalaryDetails
    Created on : 07-May-2018, 02:31:21
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
        <link href="../resources/css/sweetalert.css" rel="stylesheet" />


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
                        <div class="col-md-6"><p id="Atd-collection-header"><h3><strong><u>Staff Payment Details Feeding Terminal</u></strong></h3></p> </div>
                        <div class="col-md-3"></div>


                    </div><br>  
                    <label><strong><u id="instruction-stu-atd">Instructions for using this terminal</u> : <br><br> * Enter required fields.<br> * Click submit details.<br> * <u>NOTE</u> : "&nbsp;you are responsible for the details so please make sure there are none of typing or anykind of errors&nbsp;".</strong></label>
                </div>

                <div class="row">
                    <div class="col-md-12" id="divider"> 
                        <hr class="divider-style" >         
                    </div>
                </div>
                <br><br><br>
                <form id="stfEnterSalaryForm">



                    <div class="form-group">
                        <label>Select Receiver type :</label>
                        <select class="form-control" name="receiverType">
                            <option value="admin">Admin</option>
                            <option value="tutor">Tutor</option>
                            <option value="staff">Staff</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Admin Registration number :</label>
                        <input class="form-control" placeholder="registor id" name="admIdSalary">
                    </div>

                    <div class="form-group">
                        <label>Tutor Registration number :</label>
                        <input class="form-control" placeholder="registor id" name="tuiIdSalary">
                    </div>

                    <div class="form-group">
                        <label>Staff Registration number :</label>
                        <input class="form-control" placeholder="registor id" name="stfIdSalary">
                    </div>

                    <div class="form-group">
                        <label>Amount :</label>
                        <input class="form-control" placeholder="amount" name="amount">
                    </div>

                    <div class="form-group">
                        <label>Date:</label>
                        <input class="form-control" placeholder="yyyy/mm/dd" name="date">
                    </div>

                    <input class="form-control"  name="status" value="paid" i="disable">   

                    <button type="button" class="btn btn-primary" id="stu-fees-submit-btn">Submit details</button>

                </form>

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
        <script src="../resources/js/StaffControl.js" type="text/javascript"></script>
        <script src="../resources/js/sweetalert.js"></script>
    </body>
</html>
