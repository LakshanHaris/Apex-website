<%-- 
    Document   : stfViewStaff
    Created on : 07-May-2018, 02:01:51
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
                            <a href="<c:url value="../staff/stfViewSalary"/>" id="lectures-a">
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
                            <a href="<c:url value="../staff/stfViewMailbox"/>" id="other-a">
                                <i class="fa fa-envelope-o" aria-hidden="true"></i>
                                <span>&nbsp;Mail box</span>

                            </a>
                        </li>


                    </ul>
                </section>

            </aside>
            <div class="content-wrapper" id="custom-staff-background">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-1 col-md-1"></div>
                        <!-- <div class="col-lg-9 col-md-9 cust-col-border"> -->
                        <br><br>

                        <img src="../resources/img/staff2.jpg" width="300" height="300" id="stuPic">

                        <br><br>










                        <div class="box-body">
                            <table class="table table-striped ">


                                <tr>

                                    <td>Staff registration number</td>
                                    <td>${staffResult.stfRegNumber}</td>

                                </tr>

                                <tr>
                                    <td>Name</td>
                                    <td>${staffResult.firstName} &nbsp; ${staffResult.lastName}</td>
                                </tr>
                                <tr>
                                    <td>Date of Birth</td>
                                    <td>${staffResult.dob}</td>

                                </tr>
                                <tr>
                                    <td>Gender</td>
                                    <td>${staffResult.gender}</td> 
                                </tr>

                                <tr>
                                    <td>Address</td>
                                    <td>${staffResult.address}</td> 
                                </tr>

                                <tr>
                                    <td>Mobile Number</td>
                                    <td>${staffResult.mobileNumber}</td> 
                                </tr>

                                <tr>
                                    <td>Email</td>
                                    <td>${staffResult.email}</td> 
                                </tr>

                                <tr>
                                    <td>Bank </td>
                                    <td>${staffResult.bank}</td> 
                                </tr>

                                <tr>
                                    <td>Branch</td>
                                    <td>${staffResult.branch}</td> 
                                </tr>

                                <tr>
                                    <td>Bank Account Number</td>
                                    <td>${staffResult.bankAcc}</td> 
                                </tr>



                            </table>
                        </div><!-- /.box-body -->

                        <br><br><br><br>
                        <div class="col-md-4">
                            <a href="<c:url value="../staff/stfEditStaff"/>"><button class="btn btn-block btn-success btn-lg">Edit Profile</button></a>
                        </div><br><br><br><br>


                        <div class="col-lg-2 col-md-2"></div>
                    </div>


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
