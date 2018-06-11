<%-- 
    Document   : admViewDashboard
    Created on : Oct 20, 2017, 2:24:50 PM
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

                <div id="page-inner">
                    <br><br>
                    <div class="row">
                        <div class="col-lg-12">
                            <h2>ADMIN DASHBOARD</h2>   
                        </div>
                    </div>              
                    <!-- /. ROW  -->
                    <hr />
                    <br><br>
                    <div class="row">
                        <div class="col-lg-12 ">
                            <div class="alert alert-info">
                                <strong>Welcome Admin ! </strong> <br>It's pleasure to see you here again...
                            </div>

                        </div>
                    </div>
                    <!-- /. ROW  --> 
                    <br><br><br>
                    <div class="row text-center pad-top">
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <div class="div-square">
                                <a href="admin-search-student.html" >
                                    <i class="fa fa-male fa-5x" aria-hidden="true" ></i>
                                    <h4>Search Student</h4>
                                </a>
                            </div>


                        </div> 

                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <div class="div-square">
                                <a href="admin-search-tuitor.html" >
                                    <i class="fa fa-hand-o-up fa-5x" aria-hidden="true"></i>
                                    <h4>Search Tuitor</h4>
                                </a>
                            </div>


                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <div class="div-square">
                                <a href="admin-search-staff.html" >
                                    <i class="fa fa-users fa-5x" aria-hidden="true"></i>
                                    <h4>Search Staff</h4>
                                </a>
                            </div>


                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <div class="div-square">
                                <a href="admin-reg-stu.html" >
                                    <i class="fa fa-male fa-5x" aria-hidden="true" ></i>
                                    <h4>Register Student</h4>
                                </a>
                            </div>


                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <div class="div-square">
                                <a href="admin-reg-tui.html" >
                                    <i class="fa fa-hand-o-up fa-5x" aria-hidden="true"></i>
                                    <h4>Register Tuitor</h4>
                                </a>
                            </div>


                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <div class="div-square">
                                <a href="admin-reg-stf.html" >
                                    <i class="fa fa-users fa-5x" aria-hidden="true"></i>
                                    <h4>Register Staff</h4>
                                </a>
                            </div>


                        </div>
                    </div>
                    <br>
                    <!-- /. ROW  --> 
                    <div class="row text-center pad-top">

                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <div class="div-square">
                                <a href="admin-timetable.html" >
                                    <i class="fa fa-calendar fa-5x" aria-hidden="true"></i>
                                    <h4>Time Table</h4>
                                </a>
                            </div>


                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <div class="div-square">
                                <a href="admin-scan-stu-attendence.html" >
                                    <i class="fa fa-indent fa-5x" aria-hidden="true"></i>
                                    <h4>Scan Attendence</h4>
                                </a>
                            </div>


                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <div class="div-square">
                                <a href="admin-scan-stu-fees.html" >
                                    <i class="fa fa-gear fa-5x"></i>
                                    <h4>Scan Fees</h4>
                                </a>
                            </div>


                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <div class="div-square">
                                <a href="admin-view-tui-payments.html" >
                                    <i class="fa fa-money fa-5x" aria-hidden="true"></i>


                                    <h4>Tuitor Payments </h4>
                                </a>
                            </div>


                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <div class="div-square">
                                <a href="admin-view-stf-payments.html" >
                                    <i class="fa fa-usd fa-5x"  aria-hidden="true"></i>

                                    <h4>Staff Salary</h4>
                                </a>
                            </div>


                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <div class="div-square">
                                <a href="admin-sendMail.html" >
                                    <i class="fa fa-envelope-o fa-5x" aria-hidden="true"></i>
                                    <h4>Send Mail</h4>
                                </a>
                            </div>


                        </div> 

                    </div>   
                    <!-- /. ROW  -->    
                    <br><br><br>
                    <div class="row">
                        <div class="col-lg-12 ">
                            <br/>
                            <div class="alert alert-danger">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                    tempor incididunt ut labore et dolore magna aliqua. </p>
                            </div>

                        </div>
                    </div>
                    <br><br><br><br><br>

                    <div class="row">
                        <!--quick info section -->
                        <div class="col-lg-3">
                            <div class="alert alert-danger text-center">
                                <i class="fa fa-calendar fa-3x"></i>&nbsp;&nbsp;<b>3 </b>Changes of Time table arragments done on this month

                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="alert alert-success text-center">
                                <i class="fa  fa-beer fa-3x"></i>&nbsp;&nbsp;<b>32 % </b>Profit Recorded in this Month  
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="alert alert-info text-center">
                                <i class="fa fa-male fa-3x" aria-hidden="true" ></i> &nbsp;&nbsp;<b>48</b> New Student Registrations done in this month

                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="alert alert-warning text-center">
                                <i class="fa fa-usd fa-3x"  aria-hidden="true"></i>&nbsp;&nbsp;<b>3,000 $ </b>Total Payments has been deducted
                            </div>
                        </div>
                        <!--end quick info section -->
                    </div>

                    <br><br><br><br><br><br>

                    <div class="row">
                        <div class="col-lg-6">

                            <div class="box box-primary">
                                <div class="box-header">
                                    <i class="ion ion-clipboard"></i>
                                    <h3 class="box-title">To Do List</h3>
                                    <div class="box-tools pull-right">
                                        <ul class="pagination pagination-sm inline">
                                            <li><a href="#">&laquo;</a></li>
                                            <li><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">&raquo;</a></li>
                                        </ul>
                                    </div>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <ul class="todo-list">
                                        <li>
                                            <!-- drag handle -->
                                            <span class="handle">
                                                <i class="fa fa-ellipsis-v"></i>
                                                <i class="fa fa-ellipsis-v"></i>
                                            </span>
                                            <!-- checkbox -->
                                            <input type="checkbox" value="" name=""/>
                                            <!-- todo text -->
                                            <span class="text">Restart the server</span>
                                            <!-- Emphasis label -->
                                            <small class="label label-danger"><i class="fa fa-clock-o"></i> 2 mins</small>
                                            <!-- General tools such as edit or delete-->
                                            <div class="tools">
                                                <i class="fa fa-edit"></i>
                                                <i class="fa fa-trash-o"></i>
                                            </div>
                                        </li>
                                        <li>
                                            <span class="handle">
                                                <i class="fa fa-ellipsis-v"></i>
                                                <i class="fa fa-ellipsis-v"></i>
                                            </span>
                                            <input type="checkbox" value="" name=""/>
                                            <span class="text">Re shedule grade 7 science class</span>
                                            <small class="label label-info"><i class="fa fa-clock-o"></i> 4 hours</small>
                                            <div class="tools">
                                                <i class="fa fa-edit"></i>
                                                <i class="fa fa-trash-o"></i>
                                            </div>
                                        </li>
                                        <li>
                                            <span class="handle">
                                                <i class="fa fa-ellipsis-v"></i>
                                                <i class="fa fa-ellipsis-v"></i>
                                            </span>
                                            <input type="checkbox" value="" name=""/>
                                            <span class="text">Contact Mr Lakshan Ranasinghe</span>
                                            <small class="label label-warning"><i class="fa fa-clock-o"></i> 1 day</small>
                                            <div class="tools">
                                                <i class="fa fa-edit"></i>
                                                <i class="fa fa-trash-o"></i>
                                            </div>
                                        </li>
                                        <li>
                                            <span class="handle">
                                                <i class="fa fa-ellipsis-v"></i>
                                                <i class="fa fa-ellipsis-v"></i>
                                            </span>
                                            <input type="checkbox" value="" name=""/>
                                            <span class="text">Send emails to grade 10 English students </span>
                                            <small class="label label-success"><i class="fa fa-clock-o"></i> 3 days</small>
                                            <div class="tools">
                                                <i class="fa fa-edit"></i>
                                                <i class="fa fa-trash-o"></i>
                                            </div>
                                        </li>
                                        <li>
                                            <span class="handle">
                                                <i class="fa fa-ellipsis-v"></i>
                                                <i class="fa fa-ellipsis-v"></i>
                                            </span>
                                            <input type="checkbox" value="" name=""/>
                                            <span class="text">Promotional campain</span>
                                            <small class="label label-primary"><i class="fa fa-clock-o"></i> 1 week</small>
                                            <div class="tools">
                                                <i class="fa fa-edit"></i>
                                                <i class="fa fa-trash-o"></i>
                                            </div>
                                        </li>
                                        <li>
                                            <span class="handle">
                                                <i class="fa fa-ellipsis-v"></i>
                                                <i class="fa fa-ellipsis-v"></i>
                                            </span>
                                            <input type="checkbox" value="" name=""/>
                                            <span class="text">Feed payment status</span>
                                            <small class="label label-default"><i class="fa fa-clock-o"></i> 1 month</small>
                                            <div class="tools">
                                                <i class="fa fa-edit"></i>
                                                <i class="fa fa-trash-o"></i>
                                            </div>
                                        </li>
                                    </ul>
                                </div><!-- /.box-body -->
                                <div class="box-footer clearfix no-border">
                                    <button class="btn btn-default pull-right"><i class="fa fa-plus"></i> Add item</button>
                                </div>
                            </div>
                        </div>



                        <div class="col-lg-6">

                            <div class="box box-danger">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Latest Members</h3>
                                    <div class="box-tools pull-right">
                                        <span class="label label-danger">8 New Members</span>
                                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div><!-- /.box-header -->
                                <div class="box-body no-padding">
                                    <ul class="users-list clearfix">
                                        <li>
                                            <img src="../resources/img/b4.jpg" alt="User Image"/>
                                            <a class="users-list-name" href="#">Kanchana</a>
                                            <span class="users-list-date">Today</span>
                                        </li>
                                        <li>
                                            <img src="../resources/img/b3.jpg" alt="User Image"/>
                                            <a class="users-list-name" href="#">Ushan</a>
                                            <span class="users-list-date">Yesterday</span>
                                        </li>
                                        <li>
                                            <img src="../resources/img/g1.jpg" alt="User Image"/>
                                            <a class="users-list-name" href="#">Saduni</a>
                                            <span class="users-list-date">12 Jan</span>
                                        </li>

                                        <li>
                                            <img src="../resources/img/b1.jpg" alt="User Image"/>
                                            <a class="users-list-name" href="#">Chathura</a>
                                            <span class="users-list-date">14 Jan</span>
                                        </li>
                                        <li>
                                            <img src="../resources/img/g2.jpg" alt="User Image"/>
                                            <a class="users-list-name" href="#">Nimesha</a>
                                            <span class="users-list-date">15 Jan</span>
                                        </li>
                                        <li>
                                            <img src="../resources/img/b5.jpg" alt="User Image"/>
                                            <a class="users-list-name" href="#">Ruchira</a>
                                            <span class="users-list-date">15 Jan</span>
                                        </li>
                                    </ul><!-- /.users-list -->
                                </div><!-- /.box-body -->
                                <div class="box-footer text-center">
                                    <a href="javascript::" class="uppercase">View All Users</a>
                                </div><!-- /.box-footer -->
                            </div>
                        </div>

                    </div>


                    <!-- /. ROW  --> 
                </div>
                <!-- /. PAGE INNER  -->
            </div>



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
    <script src="../resources/js/siminta.js"></script>

</body>

</html>

