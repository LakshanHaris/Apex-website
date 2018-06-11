<%-- 
    Document   : admSendMail
    Created on : Oct 21, 2017, 10:24:26 AM
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
        <label id="stu-reg-main-title">Send Email</label>
        <hr id="stu-reg-divider">

            <div class="row">

            <br><br><br>
                <div class="col-lg-12">
                    
                <div class="box box-info">
                    <div class="box-header">
                      <i class="fa fa-envelope"></i>
                      <h3 class="box-title">Quick Email</h3>
                      <!-- tools box -->
                      <div class="pull-right box-tools">
                        <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                      </div><!-- /. tools -->
                    </div>
                    <div class="box-body">
                      <form action="#" method="post">
                        <div class="form-group">
                          <input type="email" class="form-control" name="emailto" placeholder="Email to:"/>
                        </div>
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


                <br><br><br>
                <label id="stu-reg-main-title">For common notices &nbsp;&nbsp;&nbsp;&nbsp;</label><label>Please enter below fields</label>
                <hr id="stu-reg-divider">


        <div class="row">

           <br><br>

            

                
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
    <script src="../resources/js/admin-control.js"></script>

</body>

</html>
