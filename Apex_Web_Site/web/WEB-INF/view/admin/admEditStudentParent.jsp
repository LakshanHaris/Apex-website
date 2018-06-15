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
                            <br><br>
                            <label style="font-size: 30px;  margin-left: 320px;">Update a Parent</label>
                            <div class="panel-body">
                                <form id="admEditParentForm">
                                    <div class="row">
                                        <div class="col-lg-2">
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="form-group">
                                                <label>Parent Registration number :</label>
                                                <input type="text" class="form-control" placeholder="parent id" name="parentId" id="parentId">
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-2">
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="form-group">
                                                <label>Parent first name :</label>
                                                <input type="text" class="form-control" placeholder="parent first name" name="firstName" id="firstName">
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-2">
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="form-group">
                                                <label>Parent last name :</label>
                                                <input type="text" class="form-control" placeholder="parent last name" name="lastName">
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-2">
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="form-group">
                                                <label>Parent occupation :</label>
                                                <input type="text" class="form-control" placeholder="parent occupation" name="occupation">
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-2">
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="form-group">
                                                <label>Parent mobile number :</label>
                                                <input type="text" class="form-control" placeholder="parent mobile number" name="mobileNumber">
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-2">
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="form-group">
                                                <label>Parent email :</label>
                                                <input type="text" class="form-control" placeholder="parent email" name="email">
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                        </div>
                                    </div>
                                    <br>


                                    <div class="row">
                                        <div class="col-lg-2">
                                        </div>
                                        <div class="col-lg-7">
                                            <hr id="stu-reg-divider">
                                            <div class="col-lg-4">
                                                <button type="button" class="btn btn-primary" id="admEditParentBtn">Update Parent</button>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                        </div>
                                    </div>
                                </form>
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