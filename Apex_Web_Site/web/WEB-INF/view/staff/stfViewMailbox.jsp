<%-- 
    Document   : stfViewMailbox
    Created on : 07-May-2018, 02:32:00
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







                <br><br><br>



                <div class="row">

                    <div class="col-md-1"></div>

                    <div class="col-md-10">

                        <label id="stu-reg-main-title"><strong>Inbox</strong></label>
                        <hr id="stu-reg-divider">

                        <div class="col-md-12">
                            <div class="box box-primary">
                                <div class="box-header with-border">

                                    <div class="box-tools pull-right">
                                        <div class="has-feedback">
                                            <input type="text" class="form-control input-sm" placeholder="Search Mail"/>
                                            <span class="glyphicon glyphicon-search form-control-feedback"></span>
                                        </div>
                                    </div><!-- /.box-tools -->
                                </div><!-- /.box-header -->



                                <div class="box-body no-padding">

                                    <div class="table-responsive mailbox-messages">

                                        <br>
                                        <table class="table table-hover table-striped">


                                            <tbody>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox" /></td>
                                                    <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                                    <td class="mailbox-name"><a href="read-mail.html">Lakshan Ranasinghe</a></td>
                                                    <td class="mailbox-subject"><b>Demo</b> - Its a testing message...</td>
                                                    <td class="mailbox-attachment"></td>
                                                    <td class="mailbox-date">5 mins ago</td>
                                                </tr>
                                            </tbody>
                                        </table><!-- /.table -->
                                    </div><!-- /.mail-box-messages -->
                                </div><!-- /.box-body -->
                                <div class="box-footer no-padding">
                                    <div class="mailbox-controls">
                                        <!-- Check all button -->
                                        <button class="btn btn-default btn-sm checkbox-toggle"><i class="fa fa-square-o"></i></button>                    
                                        <div class="btn-group">
                                            <button class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>
                                            <button class="btn btn-default btn-sm"><i class="fa fa-reply"></i></button>
                                            <button class="btn btn-default btn-sm"><i class="fa fa-share"></i></button>
                                        </div><!-- /.btn-group -->
                                        <button class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
                                        <div class="pull-right">
                                            1-50/200
                                            <div class="btn-group">
                                                <button class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></button>
                                                <button class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></button>
                                            </div><!-- /.btn-group -->
                                        </div><!-- /.pull-right -->
                                    </div>
                                </div>
                            </div><!-- /. box -->
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
