<%-- 
    Document   : admViewTimetable
    Created on : Oct 21, 2017, 10:22:04 AM
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
        <link href="../resources/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <link href="../resources/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
        <link href="../resources/css/jquery-ui.css" rel="stylesheet" type="text/css" />
        <link href="../resources/css/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
        <link href="../resources/css/admin-style.css" rel="stylesheet" />
        <link href="../resources/css/admin-main-style.css" rel="stylesheet" />

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


                <br><br>
                <div class="row">
                    <div class="col-lg-3 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-aqua">
                            <div class="inner">
                                <h3>
                                    13
                                </h3>
                                <p>
                                    Subjects
                                </p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <a href="#" class="small-box-footer">
                                More info <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-3 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-green">
                            <div class="inner">
                                <h3>
                                    48
                                </h3>
                                <p>
                                    Classes
                                </p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">
                                More info <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div>


                    <div class="col-lg-3 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-yellow">
                            <div class="inner">
                                <h3>
                                    967
                                </h3>
                                <p>
                                    Students
                                </p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-person-add"></i>
                            </div>
                            <a href="#" class="small-box-footer">
                                More info <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div><!-- ./col -->


                    <div class="col-lg-3 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-red">
                            <div class="inner">
                                <h3>
                                    13
                                </h3>
                                <p>
                                    Tuitors
                                </p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-pie-graph"></i>
                            </div>
                            <a href="#" class="small-box-footer">
                                More info <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div>



                </div>



                <br>
                <div class="row">


                    <br><br>
                    <div class="col-lg-6">
                        <br>
                        Calender <div id = "datepicker-2"></div>

                    </div>

                    <div class="col-lg-6">

                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">Recently made changes</h3>
                                <div class="box-tools pull-right">
                                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                </div>
                            </div><!-- /.box-header -->
                            <div class="box-body">
                                <ul class="products-list product-list-in-box">
                                    <li class="item">
                                        <div class="product-img">
                                            <img src="../resources/img/plus-sign.png" alt="Product Image"/>
                                        </div>
                                        <div class="product-info">
                                            <a href="javascript::;" class="product-title">Mathematics <span class="label label-warning pull-right">On 27/04/2017</span></a>
                                            <span class="product-description">
                                                Grade 6 class re sheduled at 4 p.m on Monday
                                            </span>
                                        </div>
                                    </li><!-- /.item -->
                                    <li class="item">
                                        <div class="product-img">
                                            <img src="../resources/img/plus-sign.png" alt="Product Image"/>
                                        </div>
                                        <div class="product-info">
                                            <a href="javascript::;" class="product-title">Science <span class="label label-info pull-right">On 27/04/2017</span></a>
                                            <span class="product-description">
                                                Grade 11 class re sheduled at 4 p.m on Tuesday
                                            </span>
                                        </div>
                                    </li><!-- /.item -->
                                    <li class="item">
                                        <div class="product-img">
                                            <img src="../resources/img/plus-sign.png" alt="Product Image"/>
                                        </div>
                                        <div class="product-info">
                                            <a href="javascript::;" class="product-title">ICT <span class="label label-danger pull-right">On 21/04/2017</span></a>
                                            <span class="product-description">
                                                Grade 10 class re sheduled at 4 p.m on Friday
                                            </span>
                                        </div>
                                    </li><!-- /.item -->
                                    <li class="item">
                                        <div class="product-img">
                                            <img src="../resources/img/plus-sign.png" alt="Product Image"/>
                                        </div>
                                        <div class="product-info">
                                            <a href="javascript::;" class="product-title">English <span class="label label-success pull-right">On 19/06/2017</span></a>
                                            <span class="product-description">
                                                Grade 8 class re sheduled at 1 p.m on Saturday
                                            </span>
                                        </div>
                                    </li><!-- /.item -->
                                </ul>
                            </div><!-- /.box-body -->
                            <div class="box-footer text-center">
                                <a href="javascript::;" class="uppercase">View All Activities</a>
                            </div><!-- /.box-footer -->
                        </div>

                    </div>



                </div>

                <br><br><br>


                <div class="row">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong>Class Time Table</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last updated on <u>27/06/2017</u>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Class ref</th>
                                            <th>Subject</th>
                                            <th>Level</th>
                                            <th>Grade</th>
                                            <th>Day</th>
                                            <th>Time duration</th>
                                            <th>Tuitor</th>
                                            <th>Hall Number</th>
                                            <th>Number of Students</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>cl/01</td>
                                            <td>Mathematics</td>
                                            <td>Ordinary</td>
                                            <td>6</td>
                                            <td>Monday</td>
                                            <td>4-6 p.m</td>
                                            <td>Mrs. Padma wijesinghe</td>
                                            <td>3</td>
                                            <td>59</td>
                                        </tr>

                                        <tr>
                                            <td>cl/02</td>
                                            <td>Science</td>
                                            <td>Ordinary</td>
                                            <td>6</td>
                                            <td>Tuesday</td>
                                            <td>4-6 p.m</td>
                                            <td>Mr. Prasad silva</td>
                                            <td>3</td>
                                            <td>105</td>
                                        </tr>

                                        <tr>
                                            <td>cl/03</td>
                                            <td>ICT</td>
                                            <td>Ordinary</td>
                                            <td>10</td>
                                            <td>Monday</td>
                                            <td>4-6 p.m</td>
                                            <td>Mr. Lakshan ranasinghe</td>
                                            <td>1</td>
                                            <td>23</td>
                                        </tr>

                                        <tr>
                                            <td>cl/04</td>
                                            <td>English</td>
                                            <td>Ordinary</td>
                                            <td>9</td>
                                            <td>Saturday</td>
                                            <td>1-3 p.m</td>
                                            <td>Mrs. Kasuni withanage</td>
                                            <td>1</td>
                                            <td>80</td>
                                        </tr>

                                        <tr>
                                            <td>cl/05</td>
                                            <td>Mathematics</td>
                                            <td>Ordinary</td>
                                            <td>7</td>
                                            <td>Saturday</td>
                                            <td>1-3 p.m</td>
                                            <td>Mrs. Padma wijesinghe</td>
                                            <td>3</td>
                                            <td>95</td>
                                        </tr>

                                        <tr>
                                            <td>cl/06</td>
                                            <td>Mathematics</td>
                                            <td>Ordinary</td>
                                            <td>8</td>
                                            <td>Wednesday</td>
                                            <td>4-6 p.m</td>
                                            <td>Mrs. Padma wijesinghe</td>
                                            <td>3</td>
                                            <td>60</td>
                                        </tr>

                                        <tr>
                                            <td>cl/07</td>
                                            <td>Sinhala</td>
                                            <td>Ordinary</td>
                                            <td>6</td>
                                            <td>Thursday</td>
                                            <td>4-6 p.m</td>
                                            <td>Mr. Romesh kiththangoda</td>
                                            <td>3</td>
                                            <td>48</td>
                                        </tr>

                                        <tr>
                                            <td>cl/08</td>
                                            <td>Science</td>
                                            <td>Ordinary</td>
                                            <td>9</td>
                                            <td>Tuesday</td>
                                            <td>4-6 p.m</td>
                                            <td>Mr. Prasad silva</td>
                                            <td>2</td>
                                            <td>46</td>
                                        </tr>
                                        <tr>
                                            <td>cl/09</td>
                                            <td>English</td>
                                            <td>Ordinary</td>
                                            <td>9</td>
                                            <td>Friday</td>
                                            <td>1-3 p.m</td>
                                            <td>Mrs. Kasuni withanage</td>
                                            <td>1</td>
                                            <td>70</td>
                                        </tr>

                                        <tr>
                                            <td>cl/10</td>
                                            <td>Mathematics</td>
                                            <td>Ordinary</td>
                                            <td>11</td>
                                            <td>Monday</td>
                                            <td>4-6 p.m</td>
                                            <td>Mrs. Padma wijesinghe</td>
                                            <td>3</td>
                                            <td>80</td>
                                        </tr>

                                        <tr>
                                            <td>cl/11</td>
                                            <td>ICT</td>
                                            <td>Ordinary</td>
                                            <td>11</td>
                                            <td>Monday</td>
                                            <td>6-8 p.m</td>
                                            <td>Mr. Lakshan ranasinghe</td>
                                            <td>1</td>
                                            <td>35</td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>




                </div>

                <br><br>
                <a href="admin-edit-timetable.html"><button type="submit" class="btn btn-primary" id="admin-scan-btn-email">Edit time table</button></a>
                <br><br>

            </div>
            <!-- end page-wrapper -->

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
        <script src="../resources/js/admin-control.js"></script>
        <script src="../resources/js/jquery-ui.js"></script>
        <script src="../resources/js/siminta.js"></script>
        <script src="../resources/js/bootstrap-datepicker.js" type="text/javascript"></script>
        <script src="../resources/js/daterangepicker.js" type="text/javascript"></script>


    </body>

</html>
