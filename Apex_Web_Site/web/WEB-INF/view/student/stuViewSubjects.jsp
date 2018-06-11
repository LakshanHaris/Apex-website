<%-- 
    Document   : newjspstuViewSubjects
    Created on : 06-May-2018, 23:43:24
    Author     : Lakshan Harischandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
 <head>

    <meta charset="UTF-8">
    <title>Student Management</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Freckle+Face|Rock+Salt" rel="stylesheet"> 
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
                    <img src="../resources/img/student1.jpg" class="img-circle" alt="User Image" >
                </div>
                <div class="pull-left info">
                    <p style="padding-left: 30px;"><strong><%=session.getAttribute("firstName")%></strong></p>

                    <a href="#"><i class="fa fa-circle text-success"></i> <strong>Online&nbsp;&nbsp;|&nbsp;Student</strong></a>
                </div>
            </div>
            <section class="sidebar">
                <div class=""></div>
                <ul class="sidebar-menu">

                    <li class="active treeview">
                        <a href="<c:url value="../student/stuViewStudent"/>" id="student-a">
                            <i class="fa fa-user"></i> <span>My profile</span>
                        </a>
                    </li>
                    <li class="treeview">
                        <a href="<c:url value="../student/stuViewPayments"/>" id="lectures-a">
                            <i class="fa fa-money"></i>
                            <span>Payments</span>

                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="../student/stuViewExamResults"/>" id="classes-a">
                            <i class="fa fa-files-o"></i> <span>Exam Results</span>
                        </a>
                    </li>

                    <li>
                        <a href="<c:url value="../student/stuViewAttendence"/>" id="classes-a">
                            <i class="fa fa-files-o"></i> <span>Attendence</span>
                        </a>
                    </li>

                    <li class="treeview">
                        <a href="<c:url value="../student/stuViewMailbox"/>" id="other-a">
                            <i class="fa fa-file"></i>
                            <span>Mail box</span>

                        </a>
                    </li>
                    <li class="treeview">
                        <a href="<c:url value="../student/stuFindTutor"/>" id="other-a">
                            <i class="fa fa-comment-o"></i>
                            <span>Find a Tuitor</span>

                        </a>
                    </li>
                    <li class="treeview">
                        <a href="<c:url value="../student/stuFindClass"/>" id="other-a">
                            <i class="fa fa-comment-o"></i>
                            <span>Find a Class</span>

                        </a>
                    </li>


                </ul>
            </section>

        </aside>
        <div class="content-wrapper" id="custom-student-background">

            <div class="container" id="welcomeDetails">


                <p><h3><strong><u> Your Subjects </u></strong></h3></p> 
                <div class="row">
                    <div class="col-md-6" >

                        <label> <strong>Welcome student </strong></label>
                        <label>this is your currently registered subject details </label>
                        <p>Any inquires please contact admin ...</p>
                    </div>   


                </div>
            </div>

            <div class="row">
                <div class="col-md-12" id="divider"> 
                    <hr class="divider-style" >         
                </div>
            </div>





            <div class="container-fluid" id="tableData">

                <div class="row">
                    <div class="col-md-">
                        <div class="box">
                            <div class="box-header">
                              <h3 class="box-title">Subject details  for the Student :  <u>Lakshan Perera</u></h3>
                          </div><!-- /.box-header -->
                          <div class="box-body">
                              <table id="example2" class="table table-bordered table-hover">
                                <thead>
                                  <tr>
                                  <th>Subject id</th>
                                    <th>Name</th>
                                    <th>Level</th>
                                    <th>Type</th>
                                    <th>Subject Fee</th>
                                    <th>Grade</th>

                                </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td> -</td>

                            </tr>

                            <tr>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td> -</td>

                            </tr>
                            <tr>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td> -</td>
                            </tr>


                            <tr>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td> -</td>

                            </tr>
                            <tr>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td> -</td>

                            </tr>



                        </tbody>

                    </table>
                </div><!-- /.box-body -->
            </div><!-- /.box -->



        </div>
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




<script src="../js/jQuery-2.1.3.min.js"></script>

</body>
</html>
