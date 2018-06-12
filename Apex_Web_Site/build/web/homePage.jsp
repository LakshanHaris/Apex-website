<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

        <header>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                 
                    <!-- Slide Two - Set the background image for this slide in the line below -->
                    
                    <div class="carousel-item active" style="background-image: url('resources/img/mainSlider1.jpg')">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Apex Institution</h3>
                            <p>A platform to link with Parent community</p>
                        </div>
                    </div>
                    
                    <div class="carousel-item" style="background-image: url('resources/img/mainSlider2.jpg')">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Apex Institution</h3>
                            <p>Talent Tutors and comfortable lecture halls</p>
                        </div>
                    </div>
                    
                    <div class="carousel-item" style="background-image: url('resources/img/mainSlider3.jpg')">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>Apex Institution</h3>
                            <p>Fully committed staff for serving student needs 24x7</p>
                        </div>
                    </div>
                    

                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </header>

        <!-- Page Content -->
        <div style="height: 100px;"></div>
        <div class="container">
            <div class='row'>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-3">
                            <img class="img-fluid" src="resources/img/ceo.jpg" style="width: 100px;height:100px; border-radius: 50%; border: 1px solid ;">
                        </div>
                        <div class="col-md-9">
                            <blockquote class="blockquote">
                                <p class="mb-0"><i class="fas fa-quote-left"></i>&nbsp;As the CEO I ensure that all the tutors and services done by Apex is in a good command.&nbsp;<i class="fas fa-quote-right"></i></p>
                                <footer class="blockquote-footer">CEO&nbsp; |<cite title="Source Title">&nbsp;Apex institution</cite></footer>
                            </blockquote>
                        </div>
                    </div>
                </div>
                <div class="col-md-6"></div>
            </div>

            <div style="height: 50px;"></div>

            <div class='row'>
                <div class="col-md-6"></div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-3">
                            <img class="img-fluid" src="resources/img/director.jpg" style="width: 100px;height:100px; border-radius: 50%; border: 1px solid ;">
                        </div>
                        <div class="col-md-9">
                            <blockquote class="blockquote">
                                <p class="mb-0"><i class="fas fa-quote-left"></i>&nbsp;We everyday work hard to provide a trusted and quality service to our students and we won the parents confide through our services.&nbsp;<i class="fas fa-quote-right"></i></p>
                                <footer class="blockquote-footer">Director&nbsp; |<cite title="Source Title">&nbsp;Apex institution</cite></footer>
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>

            <div style="height: 50px;"></div>

            <div class='row'>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-3">
                            <img class="img-fluid" src="resources/img/staff2.jpg" style="width: 100px;height:100px; border-radius: 50%; border: 1px solid ;">
                        </div>
                        <div class="col-md-9">
                            <blockquote class="blockquote">
                                <p class="mb-0"><i class="fas fa-quote-left"></i>&nbsp;I'm a truly satisfied parent of Apex that they are proving a platform to parents as well as students to link with them - I highly recommand this institution.&nbsp;<i class="fas fa-quote-right"></i></p>
                                <footer class="blockquote-footer">Parent&nbsp; |<cite title="Source Title">&nbsp;Apex institution</cite></footer>
                            </blockquote>
                        </div>
                    </div>
                </div>
                <div class="col-md-6"></div>
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
