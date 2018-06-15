<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
    <head>
        <meta charset="UTF-8">
        <title>Apex | Admin</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.2 -->
        <link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Font Awesome Icons -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
              crossorigin="anonymous">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="../resources/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <link href="../resources/css/_all-skins.min.css" rel="stylesheet" type="text/css" />
        <link href="../resources/custom/AdminCustomStyles.css" rel="stylesheet" type="text/css"/>
        <link href="../resources/css/sweetalert.css" rel="stylesheet" type="text/css"/>


    </head>
    <body class="skin-blue">
        <!-- Site wrapper -->
        <div class="wrapper">
            <header class="main-header">
                <a href="../../index2.html" class="logo"><b>Apex</b>Institution</a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <div class="navbar-custom-menu">
                        <label><a href="../login/userLogOut" style="color: black; align-self: center; font-size: 25px;"><i class="fas fa-power-off fa-1x"></i></a></label>
                    </div>
                </nav>
            </header>

            <!-- =============================================== -->

            <!-- Left side column. contains the sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="<%=session.getAttribute("picture")%>" class="img-circle" alt="pic" />
                        </div>
                        <div class="pull-left info">
                            <p><%=session.getAttribute("firstName")%></p>

                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>

                    <!-- search form -->
                    <form action="../admin/admViewStudent" method="GET" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search student(id)"/>
                            <span class="input-group-btn">
                                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">MAIN NAVIGATION</li>
                        <li><a href="<c:url value="../admin/admViewDashboard"/>"><i class="fa fa-book"></i> Dashboard</a></li>
                        <li><a href="<c:url value="../admin/admViewAdmin"/>"><i class="fa fa-book"></i> My Profile</a></li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-dashboard"></i> <span>Student</span> <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="<c:url value="../admin/admAddStudent"/>"><i class="fa fa-circle-o"></i> Register</a></li>
                                <li><a href="<c:url value="../admin/admDeleteStudent"/>"><i class="fa fa-circle-o"></i> Delete</a></li>
                                <li><a href="<c:url value="../admin/admScanStudentAttendence"/>"><i class="fa fa-circle-o"></i> View Attendence</a></li>
                                <li><a href="<c:url value="../admin/admScanStudentFees"/>"><i class="fa fa-circle-o"></i> View Payments</a></li>
                                <li><a href="<c:url value="../admin/admEditStudentParent"/>"><i class="fa fa-circle-o"></i> Edit Parent</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-dashboard"></i> <span>Tutor</span> <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="<c:url value="../admin/admAddTutor"/>"><i class="fa fa-circle-o"></i> Register</a></li>
                                <li><a href="<c:url value="../admin/admDeleteTutor"/>"><i class="fa fa-circle-o"></i> Delete</a></li>
                                <li><a href="<c:url value="../admin/admViewTutorPayments"/>"><i class="fa fa-circle-o"></i> View Payments</a></li>
                                <li><a href="<c:url value="../admin/admViewTutors"/>"><i class="fa fa-circle-o"></i> View Tutors</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-dashboard"></i> <span>Staff</span> <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="<c:url value="../admin/admAddStaff"/>"><i class="fa fa-circle-o"></i> Register</a></li>
                                <li><a href="<c:url value="../admin/admDeleteStaff"/>"><i class="fa fa-circle-o"></i> Delete</a></li>
                                <li><a href="<c:url value="../admin/admViewStaffPayments"/>"><i class="fa fa-circle-o"></i> View Payments</a></li>
                                <li><a href="<c:url value="../admin/admViewStaffMembers"/>"><i class="fa fa-circle-o"></i> View Staff</a></li>
                            </ul>
                        </li>
                        <li><a href="<c:url value="../admin/admScanStudentAttendence"/>"><i class="fa fa-book"></i> Scan Attendence</a></li>
                        <li><a href="<c:url value="../admin/admScanStudentFees"/>"><i class="fa fa-book"></i> Scan Fees</a></li>
                        <li><a href="<c:url value="../admin/admSendMail"/>"><i class="fa fa-book"></i> Send Mail</a></li>
                        <li><a href="<c:url value="../admin/admViewInbox"/>"><i class="fa fa-book"></i> Inbox</a></li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- =============================================== -->

            <!-- Right side column. Contains the navbar and content of the page -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content">
                    <div id="page-inner">
                        <div id="page-wrapper">
                         
                           

                            <div class="row">

                                




                                <div class="col-lg-4">
                                    <label>Subject </label>
                                    <select class="form-control">
                                        <option>Mathematics</option>
                                        <option>Science</option>
                                        <option>English</option>
                                        <option>ICT</option>
                                        <option>Sinhala</option>
                                        <option>Physics</option>
                                        <option>Chemistry</option>
                                        <option>Combined maths</option>
                                        <option>Biology</option>


                                    </select>
                                </div>













                                <div class="col-lg-3">

                                    <label>Grade </label>
                                    <select class="form-control">
                                        <option>6</option>
                                        <option>7</option>
                                        <option>8</option>
                                        <option>9</option>
                                        <option>10</option>
                                        <option>11</option>
                                        <option>12</option>
                                        <option>13</option>



                                    </select>



                                </div>

                                <div class="col-lg-2">
                                    <br>&nbsp;&nbsp;&nbsp;&nbsp;

                                    <button type="submit" class="btn btn-primary" id="admin-send-email-btn"><i class="fa fa-envelope fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;Select !</button>

                                </div>


                            </div>

                            <br><br><br>

                            <div class="col-lg-12">

                                <div class="box box-info">
                                    <div class="box-header">
                                        <i class="fa fa-envelope"></i>
                                        <p  id="receiver-quantity" style="color: red;">25 receivers</p>
                                        <!-- tools box -->
                                        <div class="pull-right box-tools">
                                            <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                                        </div><!-- /. tools -->
                                    </div>
                                    <div class="box-body">
                                        <form action="#" method="post">

                                            <div class="form-group">
                                                <input type="text" class="form-control" name="subject" placeholder="Subject"/>
                                            </div>
                                            <div>
                                                <textarea class="textarea" placeholder="Message" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="box-footer clearfix">
                                        <button class="pull-right btn btn-default" id="sendEmail">Send <i class="fa fa-arrow-circle-right"></i></button>
                                    </div>
                                </div>

                            </div>



                        </div>
                    </div>
                </section>
            </div><!-- /.content-wrapper -->

            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 2.0
                </div>
                <strong>Copyright &copy; 2018 <a href="#">Apex Institution</a></strong> | Lakshan Harischandra.
            </footer>
        </div><!-- ./wrapper -->

        <!-- jQuery 2.1.3 -->
        <script src="../resources/js/jQuery-2.1.3.min.js"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="../resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- SlimScroll -->
        <script src="../resources/js/jquery.slimscroll.min.js" type="text/javascript"></script>
        <!-- FastClick -->
        <script src="../resources/js/fastclick.min.js" type="text/javascript"></script>
        <!-- AdminLTE App -->
        <script src="../resources/js/app.min.js" type="text/javascript"></script>
        <script src="../resources/js/AdminControl.js" type="text/javascript"></script>
        <script src="../resources/js/sweetalert.js" type="text/javascript"></script>
    </body>
</html>