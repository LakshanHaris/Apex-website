
<%-- 
    Document   : addAdmin
    Created on : Oct 14, 2017, 1:09:26 PM
    Author     : Lakshan Harischandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin</title>
        <!-- Core CSS - Include with every page -->
        <link href="../resources/css/bootstrap.css" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Freckle+Face|Rock+Salt" rel="stylesheet"> 
        <link href="../resources/css/font-awesome.css" rel="stylesheet" />
        <link href="../resources/css/jquery-ui.css" rel="stylesheet" type="text/css" />
        <link href="../resources/css/admin-style.css" rel="stylesheet" />
        <link href="../resources/css/admin-main-style.css" rel="stylesheet" />
        <link href="../resources/css/sweetalert.css" rel="stylesheet" />

    </head>

    <body>
        <!--  wrapper -->
        <div id="wrapper">
            <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="adjust-nav">
                    <div class="navbar-header">


                        <h2 id="main-title">Apex Institutuion</h2>



                    </div>






                    <div class="social-media">

                        <a href="#"><i class="fa fa-facebook-square fa-3x" ></i></a>    
                        <a href="#"><i class="fa fa-twitter-square fa-3x" ></i></a>    
                        <a href="#"><i class="fa fa-linkedin-square fa-3x" ></i></a>    
                        <a href="#"><i class="fa fa-google-plus fa-3x" ></i></a>    

                    </div>

                    <!--                    <form action="/logInPage" method="GET">-->
                    <a href="../login/userLogOut"><button class="btn btn-block btn-success btn-lg" id="admin-logout" type="button">Log Out</button></a>
                    <!--                    </form>-->

                </div>

            </div>

            <!-- navbar side -->
            <nav class="navbar-default navbar-static-side" id="navigation" role="navigation">
                <!-- sidebar-collapse -->
                <div class="sidebar-collapse">
                    <!-- side-menu -->
                    <ul class="nav" id="side-menu">
                        <li>
                            <!-- user image section-->
                            <div class="user-section">
                                <div class="user-section-inner">
                                    <img  src="../resources/img/img2.jpg" alt="pic">
                                </div>
                                <div class="user-info">
                                    <div>Admin : <strong><%=session.getAttribute("firstName")%></strong></div>
                                    <div class="user-text-online">
                                        <span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;<small>Online</small>
                                    </div>
                                </div>
                            </div>
                            <!--end user image section-->
                        </li>
                        <li class="sidebar-search">
                            <!-- search section-->
                            <div class="input-group custom-search-form">
                                <form action="../student/admViewStudent" method="POST">
                                    <input type="search" class="form-control" placeholder="Search Student" name="stuRegNumber">
                                </form>

                            </div>

                            <br>

                            <div class="input-group custom-search-form">
                                <form action="../tutor/admViewTutor" method="POST">
                                    <input type="search" class="form-control" placeholder="Search Tuitor" name="tuiRegNumber">
                                </form>
                            </div>

                            <!--end search section-->
                        </li>







                        <li class="">

                            <a href="<c:url value="../admin/admViewDashboard"/>"   ><i class="fa fa-dashboard fa-lg"></i> &nbsp;Dashboard</a>

                        </li>

                        <li class="">
                            <a href="<c:url value="../admin/admViewAdmin"/>"><i class="fa fa-user fa-lg" aria-hidden="true"></i> &nbsp;&nbsp;My Profile</a>
                        </li>
                        <li>
                            <a href="admin-search-student.html"><i class="fa fa-male fa-lg" aria-hidden="true" ></i> &nbsp;&nbsp;Student<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">

                                <li>
                                    <a href="<c:url value="../admin/admAddStudent"/>"><i class="fa fa-bars " aria-hidden="true"></i>  Registor Student</a>
                                </li>

                                <li>
                                    <a href="<c:url value="../admin/admDeleteStudent"/>"><i class="fa fa-bars " aria-hidden="true"></i>  Delete Student</a>
                                </li>

                                <li>
                                    <a href="<c:url value="../admin/admScanStudentAttendence"/>"><i class="fa fa-bars " aria-hidden="true"></i>  View Attendence</a>
                                </li>
                                <li>
                                    <a href="<c:url value="../admin/admScanStudentFees"/>"><i class="fa fa-bars" aria-hidden="true"></i>  View Payments</a>
                                </li>
                            </ul>
                            <!-- second-level-items -->
                        </li>
                        <li>
                            <a ><i class="fa fa-hand-o-up fa-lg" aria-hidden="true"></i>   &nbsp;Tuitor<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">

                                <li>
                                    <a href="<c:url value="../admin/admAddTutor"/>"><i class="fa fa-bars" aria-hidden="true"></i>  Registor Tuitor</a>
                                </li>

                                <li>
                                    <a href="<c:url value="../admin/admDeleteTutor"/>"> <i class="fa fa-bars" aria-hidden="true"></i> Delete Tuitor</a>
                                </li>


                                <li>
                                    <a href="<c:url value="../admin/admViewTutorPayments"/>"> <i class="fa fa-bars" aria-hidden="true"></i> View Payments</a>
                                </li>
                            </ul>
                            <!-- second-level-items -->
                        </li>
                        <li>
                            <a><i class="fa fa-users fa-lg" aria-hidden="true"></i>  &nbsp;Staff<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">

                                <li>
                                    <a href="<c:url value="../admin/admAddStaff"/>"> <i class="fa fa-bars" aria-hidden="true"></i> Registor Staff</a>
                                </li>

                                <li>
                                    <a href="<c:url value="../admin/admDeleteStaff"/>"><i class="fa fa-bars" aria-hidden="true"></i>  Delete Staff</a>
                                </li>

                                <li>
                                    <a href="<c:url value="../admin/admViewStaffPayments"/>"> <i class="fa fa-bars" aria-hidden="true"></i> View Payments</a>
                                </li>
                            </ul>
                            <!-- second-level-items -->
                        </li>
                        <li>
                            <a href="<c:url value="../admin/admScanStudentAttendence"/>"><i class="fa fa-indent fa-lg" aria-hidden="true"></i> &nbsp;Scan Attendence</a>
                        </li>
                        <li>
                            <a href="<c:url value="../admin/admScanStudentFees"/>"><i class="fa fa-usd fa-lg"  aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;Scan Fees</a>
                        </li>
                        <li>
                            <a href="<c:url value="../admin/admViewTimetable"/>"><i class="fa fa-calendar fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;Time table</a>
                        </li>
                        <li>
                            <a href="<c:url value="../admin/admBanUser"/>"><i class="fa fa-exclamation-circle fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;Ban user</a>
                        </li>
                        <li>
                            <a href="<c:url value="../admin/admSendMail"/>"><i class="fa fa-envelope-o fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;Send Mail</a>
                        </li>
                        <li>
                            <a href="<c:url value="../admin/admViewInbox"/>"><i class="fa fa-envelope-o fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;Inbox</a>
                        </li>



                    </ul>
                    <!-- end side-menu -->
                </div>
                <!-- end sidebar-collapse -->




            </nav>
            <!-- end navbar side -->
            <!--  page-wrapper -->
            <div id="page-wrapper">

                <div class="container" id="welcomeDetails">

                    <br><br><br>
                    <p><h3><strong><u>Register a new Admin here</u></strong></h3></p> 
                    <div class="row">
                        <div class="col-md-6" >

                            <label> <strong>Welcome Admin</strong></label>
                            <label>Please enter details here ....</label>

                        </div>   


                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12" id="divider"> 
                        <hr class="divider-style" >         
                    </div>
                </div>

                <br><br><br>

                <div class="row">

                    <div class="col-md-1">

                    </div>


                    <!-- center colm begins -->

                    <div class="col-md-8" id="stu-edit-profile">




                        <form id="admAddAdminForm">






                            <div class="row">

                                <div class="col-lg-1">

                                </div>

                                <div class="col-lg-10">


                                    <div class="form-group">
                                        <label>First name :</label>
                                        <input class="form-control" placeholder="first name" name="firstName" id="firstName" type="text" required>
                                    </div>


                                </div>







                                <div class="col-lg-1">

                                </div>


                            </div>

                            <div class="row">

                                <div class="col-lg-1">

                                </div>

                                <div class="col-lg-10">


                                    <div class="form-group">
                                        <label>Last name :</label>
                                        <input class="form-control" placeholder="last name" name="lastName" type="text" required>
                                    </div>


                                </div>







                                <div class="col-lg-1">

                                </div>


                            </div>

                            <div class="row">

                                <div class="col-lg-1">

                                </div>

                                <div class="col-lg-10">

                                    <div class="form-group">
                                        <label>Date of birth :</label>
                                        <input class="form-control" placeholder="dd/mm/yyyy" id = "datepicker-5" name="dob" required>
                                    </div>


                                </div>






                                <div class="col-lg-1">

                                </div>


                            </div>



                            <div class="row">

                                <div class="col-lg-1">

                                </div>

                                <div class="col-lg-10">

                                    <div class="form-group">
                                        <label>Address :</label>
                                        <input class="form-control" placeholder="enter address" name="address" required>
                                    </div>


                                </div>






                                <div class="col-lg-1">

                                </div>


                            </div>

                            <div class="row">

                                <div class="col-lg-1">

                                </div>

                                <div class="col-lg-10">

                                    <div class="form-group">
                                        <label>Gender :</label><br>
                                        <label class="radio-inline">
                                            <input type="radio"  id="optionsRadiosInline1" value="male" checked name="gender">Male
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio"  id="optionsRadiosInline2" value="female" name="gender">Female
                                        </label>
                                    </div>


                                </div>






                                <div class="col-lg-1">

                                </div>


                            </div>

                            <div class="row">

                                <div class="col-lg-1">

                                </div>

                                <div class="col-lg-10">

                                    <div class="form-group">
                                        <label>Mobile number :</label>
                                        <input class="form-control" placeholder="mobile number" name="mobileNumber" type="number" required>
                                    </div>


                                </div>






                                <div class="col-lg-1">

                                </div>


                            </div>

                            <div class="row">

                                <div class="col-lg-1">

                                </div>

                                <div class="col-lg-10">

                                    <div class="form-group">
                                        <label>Email :</label>
                                        <input class="form-control" placeholder="enter email" name="email" type="email">
                                    </div>


                                </div>






                                <div class="col-lg-1">

                                </div>


                            </div>









                            <div class="row">

                                <div class="col-lg-1">

                                </div>

                                <div class="col-lg-10">

                                    <div class="form-group">
                                        <label>Bank :</label>
                                        <input class="form-control" placeholder="bank name" name="bank" type="text" required>
                                    </div>


                                </div>






                                <div class="col-lg-1">

                                </div>


                            </div>

                            <div class="row">

                                <div class="col-lg-1">

                                </div>

                                <div class="col-lg-10">

                                    <div class="form-group">
                                        <label>Bank Branch :</label>
                                        <input class="form-control" placeholder="name of the branch" name="branch" type="text" required>
                                    </div>


                                </div>






                                <div class="col-lg-1">

                                </div>


                            </div>

                            <div class="row">

                                <div class="col-lg-1">

                                </div>

                                <div class="col-lg-10">

                                    <div class="form-group">
                                        <label>Bank Account Number :</label>
                                        <input class="form-control" placeholder="account number" name="bankAcc" type="number" required>
                                    </div>


                                </div>






                                <div class="col-lg-1">

                                </div>


                            </div>

                            <div class="row">

                                <div class="col-lg-1">

                                </div>

                                <div class="col-lg-10">

                                    <div class="form-group">
                                        <label>Change password :</label>
                                        <input class="form-control" type="password" placeholder="change password" name="password" required>
                                    </div>


                                </div>






                                <div class="col-lg-1">

                                </div>


                            </div>



                            <br>
                            <div class="row">

                                <div class="col-lg-1">

                                </div>

                                <div class="col-lg-10">

                                    <div class="form-group">
                                        <label>Upload a new photo</label>
                                        <input type="file" name="picture">
                                    </div>
                                </div>






                                <div class="col-lg-1">

                                </div>


                            </div>




                            <br>

                            <div class="row">

                                <div class="col-lg-1">

                                </div>

                                <div class="col-lg-10">
                                    <hr id="stu-reg-divider">
                                    <div class="col-lg-4">
                                        <button type="button" class="btn btn-primary" id="admAddAdminBtn">Submit details</button>
                                    </div>
                                </div>






                                <div class="col-lg-1">

                                </div>


                            </div>

                        </form>

                    </div>



                </div>

                <div class="col-md-1">

                </div>

            </div>
            <!-- end wrapper -->

            <div class="footer" id="admin-footer">


                <div class="row">
                    <div class="col-lg-12" id="foot-note-admin">
                        &copy;  2017 Apex Institution,Kalutara. &nbsp;| &nbsp;Designed by :&nbsp; <a href="#" style="color:#E6E6FA;" target="_blank">Lakshan Harischandra</a>
                    </div>
                </div>
            </div>


            <!-- Core Scripts - Include with every page -->
            <script src="../resources/js/jquery-1.10.2.js"></script>
            <script src="../resources/js/bootstrap.min.js"></script>
            <script src="../resources/js/jquery.metisMenu.js"></script>
            <script src="../resources/js/pace.js"></script>
            <script src="../resources/js/siminta.js"></script>
            <script src="../resources/js/jquery-ui.js"></script>
            <script src="../resources/js/AdminControl.js" type="text/javascript"></script>
            <script src="../resources/js/sweetalert.js"></script>
    </body>

</html>
