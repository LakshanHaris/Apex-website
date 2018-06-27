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
        <link rel="stylesheet" href="resources/custom/UserCustomStyles.css">
        <link href="resources/css/sweetalert.css" rel="stylesheet" />
        <link href="resources/css/owl.carousel.css" rel="stylesheet" type="text/css"/>
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

            <div class="row" style="height: 100px;"></div>

            <!--            <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8">
                                <div class="jumbotron">
                                    <h1 class="display-3">We are Sorry! &nbsp; <i class="fas fa-frown"></i></h1>
                                    <p class="lead">The page you are requested is currently unavailable.</p>
                                    <hr class="my-4">
                                    <label>Enquery call on : <strong>(+94342221902)</strong>&nbsp;&nbsp;Technical division | Apex institution.</label>
                                </div>
                            </div>
                            <div class="col-md-2"></div>
                        </div>-->


            <form id="stuSearchClassForm">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="col-form-label" for="inputDefault">Select a grade</label>
                            <select class="form-control" name="grade">
                                <option value="6" selected>6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="col-form-label" for="inputDefault">Select a subject</label>
                            <select class="form-control" name="subject">
                                <option value="1" selected>Mathematics</option>
                                <option value="2">Science</option>
                                <option value="3">Sinhala</option>
                                <option value="4">English</option>
                                <option value="5">ICT</option>
                                <option value="6">History</option>
                                <option value="7">Commerce-O/L</option>
                                <option value="8">Combined-Maths</option>
                                <option value="9">Physics</option>
                                <option value="10">Chemistry</option>
                                <option value="11">Biology</option>
                                <option value="12">Accounting</option>
                                <option value="13">Business-Studies</option>
                                <option value="14">Logic</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-2">
                        <button type="button" class="btn btn-success" id="search-btnClassHome">Search</button>
                    </div>
                </div>
            </form>

            <!-- Dont remove this div to avoid structure faliure -->
            <div class="row" style="height: 100px;"></div>


            <div class="row" id="classLoaded">
                <!--                ajax load content here-->

            </div>

            <div class="row" style="height: 100px;"></div>
            
            <div class="row" id="classSugguest">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <div class="row" id="sub">

                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="container">
                                    <div class="card mb-3">
                                        <h3 class="card-header">Combined Maths</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Saturday | 12-2 p.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 12 : hall 3</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="resources/img/apex.png"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="container">
                                    <div class="card mb-3">
                                        <h3 class="card-header">Physics</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Saturday | 4-6 p.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 13 : hall 4</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="resources/img/apex.png"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="container">
                                    <div class="card mb-3">
                                        <h3 class="card-header">ICT</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Thursday | 4-6 p.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 8 : hall 2</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="resources/img/apex.png"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="container">
                                    <div class="card mb-3">
                                        <h3 class="card-header">English</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Saturday | 2-4 p.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 10 : hall 1</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="resources/img/apex.png"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="container">
                                    <div class="card mb-3">
                                        <h3 class="card-header">Business Studies</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Saturday | 10-12 a.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 12 : hall 4</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="resources/img/apex.png"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="container">
                                    <div class="card mb-3">
                                        <h3 class="card-header">Science</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Friday | 4-6 p.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 8 : hall 1</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="resources/img/apex.png"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="container">
                                    <div class="card mb-3">
                                        <h3 class="card-header">Commerce O/L</h3>
                                        <div class="card-body">
                                            <h5 class="card-title">Saturday | 10-12 a.m</h5>
                                            <h6 class="card-subtitle text-muted">Grade 11 : hall 3</h6>
                                        </div>
                                        <img style="height: 200px; width: 100%; display: block;" src="resources/img/apex.png"
                                             alt="Card image">
                                        <div class="card-body">
                                            <p class="card-text">Please consider that time duration can be vary due to un avoidable matters</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>




        </div>
        <!-- Dont remove this footer expanding div -->
        <div class="clear"></div>

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
        <script src="resources/js/StudentControl.js"></script>
        <script src="resources/js/sweetalert.js"></script>
        <script src="resources/js/owl.carousel.js" type="text/javascript"></script>

    </body>

</html>
