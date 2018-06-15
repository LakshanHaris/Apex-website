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

                <div id="page-inner">
                    <br>

                    <!-- /. ROW  -->
                    <hr />

                    <section class="content" >
                        <div class="row" >
                            <div class="col-lg-3 col-xs-6">
                                <!-- small box -->
                                <div class="small-box bg-aqua">
                                    <div class="inner">
                                        <h3 id="tuiStat">${userStats.tutorCount}</h3>
                                        <p>Tutors</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-bag"></i>
                                    </div>
                                    <a href="#" class="small-box-footer"> <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div><!-- ./col -->
                            <div class="col-lg-3 col-xs-6">
                                <!-- small box -->
                                <div class="small-box bg-green">
                                    <div class="inner">
                                        <h3 id="stfStat">${userStats.staffCount}</h3>
                                        <p>Staff members</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-stats-bars"></i>
                                    </div>
                                    <a href="#" class="small-box-footer"> <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div><!-- ./col -->
                            <div class="col-lg-3 col-xs-6">
                                <!-- small box -->
                                <div class="small-box bg-yellow">
                                    <div class="inner">
                                        <h3 id="stuStat">${userStats.studentCount}</h3>
                                        <p>Students</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-person-add"></i>
                                    </div>
                                    <a href="#" class="small-box-footer"> <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div><!-- ./col -->
                            <div class="col-lg-3 col-xs-6">
                                <!-- small box -->
                                <div class="small-box bg-red">
                                    <div class="inner">
                                        <h3 id="classStat">${userStats.classCount}</h3>
                                        <p>Classes</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-pie-graph"></i>
                                    </div>
                                    <a href="#" class="small-box-footer"> <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div><!-- ./col -->
                        </div>
                    </section>
                                        
                    <section class="content" >
                        <div class="row" >
                            
                            <div class="col-lg-3 col-xs-6">
                                <!-- small box -->
                                <div class="small-box bg-green">
                                    <div class="inner">
                                        <h3 id="stfStat">${userStats.examCount}</h3>
                                        <p>Total Exams</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-stats-bars"></i>
                                    </div>
                                    <a href="#" class="small-box-footer"> <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div><!-- ./col -->
                            
                            <div class="col-lg-3 col-xs-6">
                                <!-- small box -->
                                <div class="small-box bg-aqua">
                                    <div class="inner">
                                        <h3 id="tuiStat">${userStats.subjectCount}</h3>
                                        <p>Subjects</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-bag"></i>
                                    </div>
                                    <a href="#" class="small-box-footer"> <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div><!-- ./col -->
                            
                            
                            <div class="col-lg-3 col-xs-6">
                                <!-- small box -->
                                <div class="small-box bg-red">
                                    <div class="inner">
                                        <h3 id="classStat">${userStats.parentCount}</h3>
                                        <p>Parents</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-pie-graph"></i>
                                    </div>
                                    <a href="#" class="small-box-footer"> <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div><!-- ./col -->
                            
                            <div class="col-lg-3 col-xs-6">
                                <!-- small box -->
                                <div class="small-box bg-yellow">
                                    <div class="inner">
                                        <h3 id="stuStat">${userStats.adminCount}</h3>
                                        <p>Admins</p>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-person-add"></i>
                                    </div>
                                    <a href="#" class="small-box-footer"> <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div><!-- ./col -->
                        </div>
                    </section>




                    <section class="content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="box box-solid bg-green-gradient">
                                    <div class="box-header">
                                        <i class="fa fa-calendar"></i>
                                        <h3 class="box-title">Calendar</h3>
                                        <!-- tools box -->
                                        <div class="pull-right box-tools">
                                            <!-- button with a dropdown -->
                                            <div class="btn-group">
                                                <button class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i></button>
                                                <ul class="dropdown-menu pull-right" role="menu">
                                                    <li><a href="#">Add new event</a></li>
                                                    <li><a href="#">Clear events</a></li>
                                                    <li class="divider"></li>
                                                    <li><a href="#">View calendar</a></li>
                                                </ul>
                                            </div>
                                            <button class="btn btn-success btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                            <button class="btn btn-success btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                        </div><!-- /. tools -->
                                    </div><!-- /.box-header -->
                                    <div class="box-body no-padding">
                                        <!--The calendar -->
                                        <div id="calendar" style="width: 100%"></div>
                                    </div><!-- /.box-body -->
                                    <div class="box-footer text-black">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <!-- Progress bars -->
                                                <div class="clearfix">
                                                    <span class="pull-left">Task #1</span>
                                                    <small class="pull-right">90%</small>
                                                </div>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-green" style="width: 90%;"></div>
                                                </div>

                                                <div class="clearfix">
                                                    <span class="pull-left">Task #2</span>
                                                    <small class="pull-right">70%</small>
                                                </div>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-green" style="width: 70%;"></div>
                                                </div>
                                            </div><!-- /.col -->
                                            <div class="col-sm-6">
                                                <div class="clearfix">
                                                    <span class="pull-left">Task #3</span>
                                                    <small class="pull-right">60%</small>
                                                </div>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-green" style="width: 60%;"></div>
                                                </div>

                                                <div class="clearfix">
                                                    <span class="pull-left">Task #4</span>
                                                    <small class="pull-right">40%</small>
                                                </div>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-green" style="width: 40%;"></div>
                                                </div>
                                            </div><!-- /.col -->
                                        </div><!-- /.row -->
                                    </div>
                                </div>

                            </div>



                            <div class="col-lg-6">

                                <div class="box box-danger">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">Latest Students</h3>
                                        <div class="box-tools pull-right">
                                            <!--                                            <span class="label label-danger">8 New Members</span>-->
                                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                            <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                        </div>
                                    </div><!-- /.box-header -->
                                    <div class="box-body no-padding">
                                        <ul class="users-list clearfix">


                                            <c:forEach items="${latestStudents}" var="student">
                                                <li>
                                                    <img src="${student.picture}" alt="User Image" style="width: 70px;height: 70px;"/>
                                                    <a class="users-list-name" href="#">${student.stuRegNumber} | ${student.firstName}</a>
                                                </li>
                                            </c:forEach>

                                        </ul><!-- /.users-list -->
                                    </div><!-- /.box-body -->
                                    <div class="box-footer text-center">

                                    </div><!-- /.box-footer -->
                                </div>
                            </div>
                    </section>

                </div>

                <section class="content">
                    <div id="page-inner">

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

                </section>


                <!-- /. ROW  --> 
            </div>








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
    <script src="../resources/js/datePicker.js" type="text/javascript"></script>
    <!-- AdminLTE App -->
    <script src="../resources/js/app.min.js" type="text/javascript"></script>
    <script src="../resources/js/AdminControl.js" type="text/javascript"></script>
    <script src="../resources/js/sweetalert.js" type="text/javascript"></script>
</body>
</html>