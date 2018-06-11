<%-- 
    Document   : stuComposeEmail
    Created on : 06-May-2018, 23:47:36
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
            Mailbox
            <small>13 new messages</small>
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
              <a href="../student/backToInbox" class="btn btn-primary btn-block margin-bottom">Back to Inbox</a>
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
                  <h3 class="box-title">Compose New Message</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <div class="form-group">
                    <input class="form-control" placeholder="To:"/>
                  </div>
                  <div class="form-group">
                    <input class="form-control" placeholder="Subject:"/>
                  </div>
                  <div class="form-group">
                    <textarea id="compose-textarea" class="form-control" style="height: 300px">
                     dear Sir, 

                      But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee
                      
                      Thank you,
                      Lakshan Harischandra
                      
                    </textarea>
                  </div>
                  <div class="form-group">
                    <div class="btn btn-default btn-file">
                      <i class="fa fa-paperclip"></i> Attachment
                      <input type="file" name="attachment"/>
                    </div>
                    <p class="help-block">Max. 32MB</p>
                  </div>
                </div><!-- /.box-body -->
                <div class="box-footer">
                  <div class="pull-right">
                    <button class="btn btn-default"><i class="fa fa-pencil"></i> Draft</button>
                    <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i> Send</button>
                  </div>
                  <button class="btn btn-default"><i class="fa fa-times"></i> Discard</button>
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
