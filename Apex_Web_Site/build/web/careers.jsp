<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Apex | Home</title>

        <!-- Bootstrap core CSS -->

        <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
              crossorigin="anonymous">
        <link href="resources/custom/bootswatch.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jua|Philosopher">
        <link href="resources/homePageStyles/blockQuoteStyle.css" rel="stylesheet" type="text/css"/>
        <link href="resources/homePageStyles/half-slider.css" rel="stylesheet" type="text/css"/>
        <link href="resources/homePageStyles/footer-distributed-with-address-and-phones.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="customNavBar">
            <div class="container">
                <a class="navbar-brand" href="homePage.jsp" style="font-family: 'Philosopher', sans-serif; font-size: 25px;">Apex Institution</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="homePage.jsp">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="aboutUs.jsp">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="careers.jsp">Carees</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="tutorHome.jsp">Find a Tutor</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="classHome.jsp">Find a Class</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="login/userLogin" />" target="blank">Log in</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <!-- Page Content -->
        <div style="height: 100px;"></div>
        <div class="container">

            
            <div class="row">
                <div class="col-sm-6 col-md-4 form-box">
<!--                    <div style="height: 20px;"></div>-->
                    <div class="form-top">
                        <div class="form-top-left">

                            <p><strong>Application Form</strong></p>
                        </div>

                    </div>
                    <div class="form-bottom">
                        <form role="form" action="../login/checkUserNamePassword" method="POST" id="loginForm" class="login-form">

                            <div class="form-group" id="selectorRole">
                                <label>Position applying for :</label>
                                <select class="form-control" id="optionRole" name="role">
                                    <option value="admin">Administrator</option>
                                    <option value="tutor">Tutor</option>
                                    <option value="staff">Staff Member</option>

                                </select>
                            </div>

                            <div class="form-group">
                                <label>Name :</label>
                                <input type="text" name="name" placeholder="first name" class="form-username form-control" id="form-username" required>
                            </div>
                            <div class="form-group">
                                <label>Phone number :</label>
                                <input type="number" name="mobile" placeholder="10 digits" class="form-password form-control" id="form-password">
                            </div>
                            <div class="form-group">
                                <label>Your Resume :</label>
                                <input type="file" name="cv"   id="form-cv">
                            </div>
                            <button type="submit" class="btn">Apply</button>
                        </form>
                    </div>
                    <br>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-6">
                    <div class="jumbotron">

                        <h3>Are you passionate about to join <i class="fas fa-hands-helping fa-3x"></i></h3>
                        <h2><strong>Join with the best Sri Lankan tution provider!</strong></h2>
                        <br>
                        <h5><small>Please feel free to submit your details<br><strong>Our assistant will reach to you!<br>Call us on : +9434 22 21902 | HR section</strong></small></h5>

                    </div>
                </div>
            </div>





        </div>





        <!-- Footer -->
        <footer class="footer-distributed">

            <div class="footer-left">

                <h3>Apex<span>institution</span></h3>

                <p class="footer-links">
                    <a href="homePage.jsp">Home</a>
                    ·
                    <a href="aboutUs.jsp">About</a>
                    ·
                    <a href="careers.jsp">Careers</a>
                    ·
                    <a href="tutorHome.jsp">Tutors</a>
                    ·
                    <a href="classHome.jsp">Classes</a>

                </p>

                <p class="footer-company-name">Apex institution &copy; 2018&nbsp;|&nbsp;Lakshan Harischandra</p>

            </div>

            <div class="footer-center">

                <div>
                    <i class="fa fa-map-marker"></i>
                    <p><span>23&nbsp;/&nbsp;Mathugama Rd&nbsp;/&nbsp;Kalutara South</span> Sri Lanka</p>
                </div>

                <div>
                    <i class="fa fa-phone"></i>
                    <p>+94 34 2221902</p>
                    <p>+94 77 4511679</p>
                </div>

                <div>
                    <i class="fa fa-envelope"></i>
                    <p><a href="mailto:support@company.com">support@apexinstitute.com</a></p>
                </div>

            </div>

            <div class="footer-right">

                <p class="footer-company-about">
                    <span>About the company</span>
                    We are providing well educated and skilled tutors to the nation.&nbsp;All the tutors and 
                    empolyees are well trained to providing a best service for enrolled students.
                </p>

                <div class="footer-icons">

                    <a href="https://www.facebook.com"><i class="fab fa-facebook"></i></a>
                    <a href="https://www.twitter.com"><i class="fab fa-twitter-square"></i></a>
                    <a href="https://www.linkedin.com"><i class="fab fa-linkedin"></i></a>
                    <a href="https://www.google.com"><i class="fab fa-google-plus-square"></i></a>

                </div>

            </div>

        </footer>


        <script src="resources/js/jQuery-2.1.3.min.js" type="text/javascript"></script>
        <script src="resources/js/bootstrap.bundle.min.js" type="text/javascript"></script>

    </body>

</html>
