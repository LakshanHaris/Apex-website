<%-- 
    Document   : tuiViewTutor
    Created on : 07-May-2018, 01:43:24
    Author     : Lakshan Harischandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tutor Management</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Freckle+Face|Rock+Salt" rel="stylesheet"> 
        <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <link href="../resources/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <link href="../resources/css/_all-skins.min.css" rel="stylesheet" type="text/css" />
        <!--link custom style css--> 
        <link href="../resources/custom/custom-styles.css" rel="stylesheet" type="text/css">
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
                        <img src="../resources/img/tutor1.jpg" class="img-circle" alt="User Image" >
                    </div>
                    <div class="pull-left info">
                        <p style="padding-left: 15px;"><strong><%=session.getAttribute("firstName")%></p>

                        <a href="#"><i class="fa fa-circle text-success"></i> <strong>&nbsp;Online&nbsp;&nbsp;|&nbsp;<strong>Tutor</strong></strong></a>
                    </div>
                </div>
                <section class="sidebar">
                    <div class=""></div>
                    <ul class="sidebar-menu">

                        <li class="active treeview">
                            <a href="<c:url value="../tutor/tuiViewTutor"/>" id="student-a">
                                <i class="fa fa-user"></i> <span>My profile</span>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="<c:url value="../tutor/tuiViewSalary"/>" id="other-a">
                                <i class="fa fa-money"></i>
                                <span>My Salary</span>

                            </a>
                        </li>


                        <li class="treeview">
                            <a href="<c:url value="../tutor/tuuiSendNotice"/>" id="other-a">
                                <i class="fa fa-comment-o"></i>
                                <span>Send a Notice</span>

                            </a>
                        </li>

                        <li class="treeview">
                            <a href="<c:url value="../tutor/tuiViewInbox"/>" id="other-a">
                                <i class="fa fa-comment-o"></i>
                                <span>Inbox</span>

                            </a>
                        </li>

                    </ul>
                </section>

            </aside>
            <div class="content-wrapper" id="custom-student-background">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-1 col-md-1"></div>
                        <!-- <div class="col-lg-9 col-md-9 cust-col-border"> -->
                        <br><br>

                        <img src="../resources/img/tutor1.jpg" width="300" height="300" id="stuPic"> 

                        <br><br>











                        <div class="box-body">
                            <table class="table table-striped ">


                                <tr>

                                    <td>Tutor registration number</td>
                                    <td>${tutorResult.tuiRegNumber}</td>

                                </tr>

                                <tr>
                                    <td>Tutor name</td>
                                    <td>${tutorResult.firstName} &nbsp; ${tutorResult.lastName}</td>
                                </tr>
                                <tr>

                                    <td>Graduated from</td>
                                    <td>${tutorResult.graduation}</td>

                                </tr>
                                <tr>

                                    <td>Stream </td>
                                    <td>${tutorResult.stream}</td>

                                </tr>


                                <tr>
                                    <td>Date of Birth</td>
                                    <td>${tutorResult.dob}</td>

                                </tr>
                                <tr>
                                    <td>Gender</td>
                                    <td>${tutorResult.gender}</td> 
                                </tr>

                                <tr>
                                    <td>Address</td>
                                    <td>${tutorResult.address}</td> 
                                </tr>

                                <tr>
                                    <td>Mobile Number</td>
                                    <td>${tutorResult.mobileNumber}</td> 
                                </tr>

                                <tr>
                                    <td>Email</td>
                                    <td>${tutorResult.email}</td> 
                                </tr>

                                <tr>
                                    <td>Bank </td>
                                    <td>${tutorResult.bank}</td> 
                                </tr>

                                <tr>
                                    <td>Branch</td>
                                    <td>${tutorResult.branch}</td> 
                                </tr>

                                <tr>
                                    <td>Bank Account Number</td>
                                    <td>${tutorResult.bankAcc}</td> 
                                </tr>

                            </table>
                        </div><!-- /.box-body -->

                        <br><br><br><br>
                        <div class="col-md-4">
                            <a href="../tutor/tuiEditProfile"><button class="btn btn-block btn-success btn-lg">Edit Profile</button></a>
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

        <script src="../resources/js/bootstrap.min.js" type="text/javascript"></script>




    </body>
</html>
