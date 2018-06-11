<%-- 
    Document   : admDeleteTutor
    Created on : Oct 20, 2017, 1:48:28 PM
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

                <br><br>
                <label id="stu-reg-main-title">Delete a Tuitor</label>
                <hr id="stu-reg-divider">

                <div class="panel-body">
                    <div class="row">

                        <div class="col-lg-12">
                            <label>Enter tuitor's registration number</label>


                        </div>



                        <br><br>

                    </div>


                    <form id="admDelTuiForm">
                        <div class="row">

                            <div class="col-lg-4">
                                <input class="form-control" placeholder="registration number" id="delTuiId" name="tuiRegNumber">


                            </div>

                            <!--                        <div class="col-lg-2">
                            
                                                        <button type="submit" class="btn btn-primary" id="adminSearchDelBtn">Go!</button>
                            
                                                    </div>-->

                        </div>



                        <br><br>

                        <hr id="stu-reg-divider-light">

                        <!--                    <div id="loadingDivDelTuitor">
                        
                                                <div class="row">
                                                    <div class="col-lg-3">
                                                        <img src="../img/aselaSir.jpg" width="300" height="270">
                                                    </div>
                        
                        
                        
                                                    <div class="col-lg-1">
                        
                                                    </div>
                        
                        
                                                    <div class="col-lg-6">
                        
                                                        <div class="box-body">
                                                            <table class="table table-striped ">
                        
                        
                                                                <tr>
                        
                                                                    <td>Tuitor registration number</td>
                                                                    <td>${searchedTutor.tuiRegNumber}</td>
                        
                                                                </tr>
                        
                                                                <tr>
                                                                    <td>First name</td>
                                                                    <td>${searchedTutor.firstName}</td>
                                                                </tr>
                        
                                                                <tr>
                                                                    <td>Last name</td>
                                                                    <td>${searchedTutor.lastName}</td>
                                                                </tr>
                        
                                                                <tr>
                        
                                                                    <td>Graduated from</td>
                                                                    <td>${searchedTutor.graduation}</td>
                        
                                                                </tr>
                                                                
                                                                <tr>
                        
                                                                    <td>Stream</td>
                                                                    <td>${searchedTutor.stream}</td>
                        
                                                                </tr>
                        
                                                                
                                                                <tr>
                                                                    <td>Date of Birth</td>
                                                                    <td>${searchedTutor.dob}</td>
                        
                                                                </tr>
                                                                <tr>
                                                                    <td>Gender</td>
                                                                    <td>${searchedTutor.gender}</td> 
                                                                </tr>
                        
                                                                <tr>
                                                                    <td>Address</td>
                                                                    <td>${searchedTutor.address}</td> 
                                                                </tr>
                        
                                                                <tr>
                                                                    <td>Mobile Number</td>
                                                                    <td>${searchedTutor.mobileNumber}</td> 
                                                                </tr>
                        
                                                                <tr>
                                                                    <td>Bank </td>
                                                                    <td>${searchedTutor.bank}</td> 
                                                                </tr>
                        
                                                                <tr>
                                                                    <td>Branch</td>
                                                                    <td>${searchedTutor.branch}</td> 
                                                                </tr>
                        
                                                                <tr>
                                                                    <td>Bank Account Number</td>
                                                                    <td>${searchedTutor.bankAcc}</td> 
                                                                </tr>
                        
                        
                        
                                                            </table>
                                                        </div>
                        
                        
                        
                        
                                                    </div>
                        
                                                    <div class="col-lg-2">
                        
                                                    </div>
                        
                        
                                                </div>
                        
                                                <br><br><br><br>
                        
                        
                        
                        
                        
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        Collapsible Accordion Panel Group   
                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                <label>"Deleting a tuitor is a great loss to the institutuion. &nbsp;If you still wish to delete please explain the reason and delete"</label>
                        
                                                            </div>
                                                            <div class="panel-body">
                                                                <div class="panel-group" id="accordion">
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            <h4 class="panel-title">
                                                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Click here</a>
                                                                            </h4>
                                                                        </div>
                                                                        <div id="collapseOne" class="panel-collapse collapse in">
                                                                            <div class="panel-body">
                                                                                <div class="container" id="combo-selections">
                                                                                    <div class="row">
                        
                                                                                        <div class="row">
                                                                                            <div class="col-md-3">
                                                                                                <div class="form-group">
                                                                                                    <label>Select a reason :</label>
                                                                                                    <select class="form-control">
                                                                                                        <option>It's a request from the tuitor</option>
                                                                                                        <option>Violated the rules</option>
                                                                                                        <option>Due to legal action</option>
                                                                                                        <option>Other</option>
                        
                                                                                                    </select>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                        
                                                                                    </div>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                                                                                </div>
                                                                            </div>
                                                                        </div>
                        
                                                                    </div>
                                                                </div>
                                                            </div>
                        
                                                        </div>
                        
                                                    </div>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                                                </div>-->


                        <div class="col-lg-6">

                            <button type="button" class="btn btn-primary" id="admDelTuiBtn">Delete</button>

                        </div>
                    </form>


                </div> <!-- loading div stops -->



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
        <script src="../resources/js/AdminControl.js" type="text/javascript"></script>
        <script src="../resources/js/sweetalert.js"></script>
    </body>

</html>
