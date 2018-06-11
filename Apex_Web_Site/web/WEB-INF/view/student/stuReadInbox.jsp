<%-- 
    Document   : stuReadInbox
    Created on : 06-May-2018, 23:42:11
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
                
                <section class="content-header">
          <h1>
            Read Mail
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Mailbox</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-md-3">
              <a href="inbox.html" class="btn btn-primary btn-block margin-bottom">Compose</a>
              <div class="box box-solid">
                <div class="box-header with-border">
                  <h3 class="box-title">Folders</h3>
                </div>
                <div class="box-body no-padding">
                  <ul class="nav nav-pills nav-stacked">
                    <li><a href="mailbox.html"><i class="fa fa-inbox"></i> Inbox <span class="label label-primary pull-right">12</span></a></li>
                    <li><a href="#"><i class="fa fa-envelope-o"></i> Sent</a></li>
                    <li><a href="#"><i class="fa fa-file-text-o"></i> Drafts</a></li>
                    
                  </ul>
                </div><!-- /.box-body -->
              </div><!-- /. box -->
              
            </div><!-- /.col -->
            <div class="col-md-9">
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Read Mail</h3>
                  <div class="box-tools pull-right">
                    <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Previous"><i class="fa fa-chevron-left"></i></a>
                    <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Next"><i class="fa fa-chevron-right"></i></a>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body no-padding">
                  <div class="mailbox-read-info">
                    <h3>Unable to pay last month fees on time</h3>
                    <h5>From: apexinstitution@gmail.com <span class="mailbox-read-time pull-right">15 Feb. 2015 11:03 PM</span></h5>
                  </div><!-- /.mailbox-read-info -->
                  <div class="mailbox-controls with-border text-center">
                    <div class="btn-group">
                      <button class="btn btn-default btn-sm" data-toggle="tooltip" title="Delete"><i class="fa fa-trash-o"></i></button>
                      <button class="btn btn-default btn-sm" data-toggle="tooltip" title="Reply"><i class="fa fa-reply"></i></button>
                      <button class="btn btn-default btn-sm" data-toggle="tooltip" title="Forward"><i class="fa fa-share"></i></button>
                    </div><!-- /.btn-group -->
                    <button class="btn btn-default btn-sm" data-toggle="tooltip" title="Print"><i class="fa fa-print"></i></button>
                  </div><!-- /.mailbox-controls -->
                  <div class="mailbox-read-message">
                    <p>Hello Lakshan,</p>
                    <p>Keffiyeh blog actually fashion axe vegan, irony biodiesel. Cold-pressed hoodie chillwave put a bird on it aesthetic, bitters brunch meggings vegan iPhone. Dreamcatcher vegan scenester mlkshk. Ethical master cleanse Bushwick, occupy Thundercats banjo cliche ennui farm-to-table mlkshk fanny pack gluten-free. Marfa butcher vegan quinoa, bicycle rights disrupt tofu scenester chillwave 3 wolf moon asymmetrical taxidermy pour-over. Quinoa tote bag fashion axe, Godard disrupt migas church-key tofu blog locavore. Thundercats cronut polaroid Neutra tousled, meh food truck selfies narwhal American Apparel.</p>
                    <p>Raw denim McSweeney's bicycle rights, iPhone trust fund quinoa Neutra VHS kale chips vegan PBR&B literally Thundercats +1. Forage tilde four dollar toast, banjo health goth paleo butcher. Four dollar toast Brooklyn pour-over American Apparel sustainable, lumbersexual listicle gluten-free health goth umami hoodie. Synth Echo Park bicycle rights DIY farm-to-table, retro kogi sriracha dreamcatcher PBR&B flannel hashtag irony Wes Anderson. Lumbersexual Williamsburg Helvetica next level. Cold-pressed slow-carb pop-up normcore Thundercats Portland, cardigan literally meditation lumbersexual crucifix. Wayfarers raw denim paleo Bushwick, keytar Helvetica scenester keffiyeh 8-bit irony mumblecore whatever viral Truffaut.</p>
                    <p>Post-ironic shabby chic VHS, Marfa keytar flannel lomo try-hard keffiyeh cray. Actually fap fanny pack yr artisan trust fund. High Life dreamcatcher church-key gentrify. Tumblr stumptown four dollar toast vinyl, cold-pressed try-hard blog authentic keffiyeh Helvetica lo-fi tilde Intelligentsia. Lomo locavore salvia bespoke, twee fixie paleo cliche brunch Schlitz blog McSweeney's messenger bag swag slow-carb. Odd Future photo booth pork belly, you probably haven't heard of them actually tofu ennui keffiyeh lo-fi Truffaut health goth. Narwhal sustainable retro disrupt.</p>
                    <p>Skateboard artisan letterpress before they sold out High Life messenger bag. Bitters chambray leggings listicle, drinking vinegar chillwave synth. Fanny pack hoodie American Apparel twee. American Apparel PBR listicle, salvia aesthetic occupy sustainable Neutra kogi. Organic synth Tumblr viral plaid, shabby chic single-origin coffee Etsy 3 wolf moon slow-carb Schlitz roof party tousled squid vinyl. Readymade next level literally trust fund. Distillery master cleanse migas, Vice sriracha flannel chambray chia cronut.</p>
                    <p>Thanks,<br>Apex Institution,Kalutara</p>
                  </div><!-- /.mailbox-read-message -->
                </div><!-- /.box-body -->
             
                <div class="box-footer">
                  <div class="pull-right">
                    <button class="btn btn-default"><i class="fa fa-reply"></i> Reply</button>
                    <button class="btn btn-default"><i class="fa fa-share"></i> Forward</button>
                  </div>
                  <button class="btn btn-default"><i class="fa fa-trash-o"></i> Delete</button>
                  <button class="btn btn-default"><i class="fa fa-print"></i> Print</button>
                </div><!-- /.box-footer -->
              </div><!-- /. box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
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
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
