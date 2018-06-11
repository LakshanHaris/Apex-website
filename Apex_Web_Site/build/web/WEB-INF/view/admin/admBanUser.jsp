<%-- 
    Document   : admBanUser
    Created on : Oct 21, 2017, 10:26:09 AM
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
    <label id="stu-reg-main-title">Ban user</label>
    <hr id="stu-reg-divider">

     <div class="panel-body">
       <!--  <div class="row">

            <div class="col-lg-1 col-lg-3">
            <label>Student</label>


            </div>


             <div class="col-lg-1 col-lg-3">
            <label>Tuitor</label>


            </div>


             <div class="col-lg-1 col-lg-3">
            <label>Staff member</label>


            </div>

            

            <br><br>

        </div> -->

        <div class="row">

            <div class="col-lg-1 col-lg-3">
            <input class="form-control" placeholder="student registration number" id="banStuId">


            </div>

            <div class="col-lg-1 col-lg-3">
            <input class="form-control" placeholder="tuitor registration number" id="banTutId">


            </div>

            <div class="col-lg-1 col-lg-3">
            <input class="form-control" placeholder="staff registration number" id="banStfId">


            </div>

            <div class="col-lg-3">
            <button type="submit" class="btn btn-primary" id="adminBanUserBtn" >Go !</button>


            </div>

            

            


        </div>

        <br><br>

        <hr id="stu-reg-divider-light">


        <div id="loadingDivBanUser">

        <div class="row">
            <div class="col-lg-3" >
                <img src="../resources/img/staff2.jpg" width="300" height="270" >
            </div>



            <div class="col-lg-1">
                
            </div>


            <div class="col-lg-6">

                <div class="box-body">
                  <table class="table table-striped ">
                    
                   
                    <tr>

                    <td>Staff registration number</td>
                    <td>S/01</td>

                </tr>

                <tr>
                    <td>First name</td>
                    <td>Susil</td>
                </tr>
                <tr>
                    <td>Last name</td>
                    <td>Chandrasiri</td>
                </tr>
                <tr>
                    <td>Date of Birth</td>
                    <td>1973-04-07</td>

                </tr>
                <tr>
                    <td>Gender</td>
                    <td>Male</td> 
                </tr>

                <tr>
                    <td>Address</td>
                    <td>23,Jaya Lane,Nagoda,Kalutara</td> 
                </tr>

                <tr>
                    <td>Mobile Number</td>
                    <td>0714811678</td> 
                </tr>

                <tr>
                    <td>Bank </td>
                    <td>Peoples bank</td> 
                </tr>

                <tr>
                    <td>Branch</td>
                    <td>Kalutara</td> 
                </tr>

                <tr>
                    <td>Bank Account Number</td>
                    <td>208487</td> 
                </tr>




                  </table>
                </div>



                
            </div>

            <div class="col-lg-2">
                
            </div>


        </div>

        <br>
        




         <div class="row">
                <div class="col-lg-12">
                    <!--Collapsible Accordion Panel Group   -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <label>"To ban this user please give time period to following appropriate reason"</label>

                        </div>
                        <div class="panel-body">
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Violated rules</a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                             <div class="container" id="combo-selections">
                    <div class="row">
                        
                            <div class="row">
                                <div class="col-md-3">
                                     <div class="form-group">
                                          <label>Select duration :</label>
                                          <select class="form-control">
                                            <option>one week</option>
                                            <option>one month</option>
                                            <option>three months</option>
                                            <option>one year</option>
                                            <option>other</option>
                                            
                                            
                                          </select>
                                    </div>
                                </div>
                                </div>
                                
                                </div>










                                        </div>
                                    </div>
                                </div>

                                </div>

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Legal action</a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                             <div class="container" id="combo-selections">
                    <div class="row">
                        
                            <div class="row">
                                <div class="col-md-3">
                                     <div class="form-group">
                                          <label>Select duration :</label>
                                          <select class="form-control">
                                            <option>one week</option>
                                            <option>one month</option>
                                            <option>three months</option>
                                            <option>one year</option>
                                            <option>other</option>
                                            
                                          </select>
                                    </div>
                                </div>
                                </div>
                                
                                </div>










                                        </div>
                                    </div>
                                </div>

                                </div>

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Other</a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                             <div class="container" id="combo-selections">
                    <div class="row">
                        
                            <div class="row">
                                <div class="col-md-3">
                                     <div class="form-group">
                                          <label>Select duration :</label>
                                          <select class="form-control">
                                            <option>one week</option>
                                            <option>one month</option>
                                            <option>three months</option>
                                            <option>one year</option>
                                            <option>other</option>
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













    </div>


            <div class="col-lg-6">
            
            <button type="submit" class="btn btn-primary" id="admin-stu-del-btn">Block</button>

            </div>


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
<script src="../resources/js/admin-control.js"></script>

</body>

</html>
