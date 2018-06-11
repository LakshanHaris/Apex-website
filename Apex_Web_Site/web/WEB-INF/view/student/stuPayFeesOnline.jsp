<%-- 
    Document   : stuPayFeesOnline
    Created on : 06-May-2018, 23:39:55
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


                    <p><h3><strong><u>Pay Fees Online</u></strong></h3></p> 

                    <div class="row">
                        <div class="col-md-6" >

                            <label> <strong>Welcome student </strong>, </label>
                            <label>&nbsp;&nbsp;&nbsp;Please enter your Selections here ...</label>
                        </div>   


                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12" id="divider"> 
                        <hr class="divider-style" >         
                    </div>
                </div>

                <!-- <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            
                        </div>
                    </div>
                </div>
                -->

                <div class="container" id="combo-selections">
                    <div class="row">
                        <div class="col-md-12" >
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Select Year :</label>
                                        <select class="form-control">
                                            <option>2013</option>
                                            <option>2014</option>
                                            <option>2015</option>
                                            <option>2016</option>
                                            <option>2017</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Select month :</label>
                                        <select class="form-control">
                                            <option>January</option>
                                            <option>February</option>
                                            <option>March</option>
                                            <option>April</option>
                                            <option>May</option>
                                            <option>June</option>
                                            <option>July</option>
                                            <option>Auguest</option>
                                            <option>September</option>
                                            <option>October</option>
                                            <option>November</option>
                                            <option>December</option>
                                        </select>
                                    </div>
                                </div>



                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Select Subject :</label>
                                        <select class="form-control">
                                            <option>Mathematics</option>
                                            <option>Science</option>
                                            <option>Sinhala</option>
                                            <option>English</option>
                                            <option>ICT</option>
                                        </select>
                                    </div>
                                </div>



                                <div class="col-md-3">
                                    <div id="searchBtn-payOption"><a href="#" class="btn btn-primary btn-block margin-bottom"  ><strong>Go !</strong></a></div>
                                </div>







                            </div>
                        </div>    
                    </div>

                    <div class="row" id="showPayAmount">
                        <div class="col-md-4"></div>
                        <div class="col-md-4" id="amountTextId">
                            <label id="AmountText"><p>Subject- <u>Mathematics</u></p> <p><p>Year- <u>2016</u></p><p>Month - <u>March</u></p>Fee - <u>$ 5.81</u></p><p>Your have to pay this amount for the selected credintials.</p></label>
                        </div>
                        <div class="col-md-4"></div>
                    </div>

                    <br><br><br><br>

                    <div class="col-xs-6">
                        <p class="lead">Payment Method:</p>
                        <img src="../resources/img/credit/visa.png" alt="Visa"/>
                        <img src="../resources/img/credit/mastercard.png" alt="Mastercard"/>
                        <img src="../resources/img/credit/american-express.png" alt="American Express"/>
                        <img src="../resources/img/credit/paypal2.png" alt="Paypal"/>

                    </div>




                </div>



                <div class="container" id="payOnline">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>" We highly recommand you to check whether your entered details are &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;accurate.&nbsp;&nbsp;&nbsp;None of the 
                                        transactions can be revised . ."</label>
                                </div>
                                <div class="col-md-6" id="payButton">
                                    <button class="btn btn-block btn-info btn-lg">Confirm Payment</button>
                                </div>
                            </div>

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
        <script src="../js/studentControl.js"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
