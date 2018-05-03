<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Theme Made By www.w3schools.com - No Copyright -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="css/Trangchu.css" rel="stylesheet" >
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a  href="#myPage"><img src="image/logo.png" alt="logo" style="width: 40px ; height:50px"></a>

        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/">ABOUT</a></li>
                <li><a href="pagenews">POST NEWS</a></li>
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" ><a href="login">LOGIN</a></button>
                <!-- Modal -->
    </div>
    </ul>
    </div>
    </div>
</nav>

<div class="jumbotron text-center">
    <div class="row">
        <div class="col-md-8">
            <img src="image/banner.jpg" class="img-responsive ">
        </div>
        <div class="col-md-4">
            <marquee style="font-size:24px; color:red">IEEE INTERNATIONAL CONFERENCE ON SYSTEM SCIENCE AND ENGINEERING</marquee>
            <form>
                <div class="input-group">
                    <input type="email" class="form-control" size="50" placeholder="Search" required>
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-danger">Search</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="image/HNQT1.jpg" alt="Los Angeles" style="width:100%;">
        </div>

        <div class="item">
            <img src="image/HNQT2.jpg" alt="Chicago" style="width:100%;">
        </div>

        <div class="item">
            <img src="image/HNQT3.jpg" alt="New york" style="width:100%;">
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
</div>
<!-- Container (About Section) -->
<div class="row">
    <div class="col-sm-9">
        <div class="container-fluid bg-grey">
            <div class="row">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-globe logo slideanim"></span>
                </div>
                <div class="col-sm-8">
                        ${about}
                        <strong>ICSSE PUBLISHED PROCEEDINGS</strong> </br>
                        <a href="http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=5540658" >ICSSE 2010</a>
                        <a href="http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=6246741"style="margin-left:15px">ICSSE 2012</a>
                        <a href="http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=6879759"style="margin-left:15px">ICSSE 2014</a>
                        <a href="http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=7548195"style="margin-left:15px">ICSSE 2016</a>
                        <a href="http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=8024255"style="margin-left:15px">ICSSE 2017</a>
                </div>
            </div>
        </div>
    </div>
    <div id="news" class="col-sm-3">
        <h3><srtong >LAST NEWS</srtong></h3>
        <div class="listnew">
            <ul>
                <li>
                    <a href="#"><p>Create Date 12/09/2017</p></a>
                    <p>Congratulations! 2017 International Conference on System Science and Engineering (ICSSE) is now published in IEEE Xplore</p>
                </li>
                <li>
                    <a href="#"><p>Create Date 28/06/2017</p></a>
                    <p>OFFICIAL PROGRAM OF ICSSE2017</p>
                </li>
                <li>
                    <a href="#"><p>Create Date 27/04/2017</p></a>
                    <p>LENGTH OF FULL PAPER IS AROUND FROM 4 TO 6 PAGES</p>
                </li>
                <li>
                    <a href="#"><p>Create Date 09/03/2017</p></a>
                    <p>SPECIAL SESSION 02 FOR ICSSE2017: FUZZY SYSTEMS AND ITS APPLICATIONS</p>
                </li>
                <li>
                    <a href="#"><p>Create Date 07/03/2017</p></a>
                    <p>ABSTRACT DEADLINE EXTENSION: MARCH 19, 2017</p>
                </li>
            </ul>
        </div>
        <h3><srtong style="color:yellow" >IMPORTANT DEADLINES</srtong></h3>
        <div class="listdeadlines">
            <ul style="color:teal">
                <li>
                    <p>Extended untill March 26, 2017 2-Pages  Extended Abstract Submission</p>
                </li>
                <li>
                    <p>OFFICIAL PROGRAM OF ICSSE2017</p>
                </li>
                <li>
                    <p>LENGTH OF FULL PAPER IS AROUND FROM 4 TO 6 PAGES</p>
                </li>
                <li>
                    <p>SPECIAL SESSION 02 FOR ICSSE2017: FUZZY SYSTEMS AND ITS APPLICATIONS</p>
                </li>
                <li>
                    <p>ABSTRACT DEADLINE EXTENSION: MARCH 19, 2017</p>
                </li>
            </ul>
        </div>
        <h3><srtong style="color:rgb(255, 0, 0);" >SPECIAL SESSION</srtong></h3>
        <div class="listdeadlines">
            <ul style="color:rgb(68, 67, 68)">
                <marquee direction="up"><a href="#" style="text-align:center"><p>SPECIAL SESSION SUBMITTION LINK</p></a>
                    <p style="background-color: yellow;text-align:center">SPECIAL SESSION 01 INTELLIGENT HEALTHCARE SYSTEMS</p>
                    <a href="#" style="text-align:center"><p>CALL FOR PAPER</p></a>
                    <p style="background-color: yellow;text-align:center">SPECIAL SESSION 02FUZZY SYSTEMS & ITS APPLICATIONS</p>
                </marquee>
            </ul>
        </div>
    </div>
</div>

<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center">
    <h2>SPONSORED BY</h2>
    <h4>we're supported by</h4>
    <br>
    <div class="row slideanim">
        <div class="col-sm-4">
            <a href="#"><img src="image/logo.png" style="width:200px;height:100px"></a>
            <h4>HCMUTE</h4>
            <p>Lorem ipsum dolor sit amet..</p>
        </div>
        <div class="col-sm-4">
            <a href="#"><img src="image/IEEEpng.png" style="width:200px;height:100px"></a>
            <h4>IEEE</h4>
            <p>Lorem ipsum dolor sit amet..</p>
        </div>
        <div class="col-sm-4">
            <a href="#"><img src="image/smc.png" style="width:200px;height:100px"></a>
            <h4>SMC</h4>
            <p>Lorem ipsum dolor sit amet..</p>
        </div>
    </div>
    <br><br>
    <div class="row slideanim">
        <div class="col-sm-4">
            <a href="#"><img src="image/daikin.png" style="width:200px;height:100px"></a>
            <h4>DAIKIN</h4>
            <p>Lorem ipsum dolor sit amet..</p>
        </div>
        <div class="col-sm-4">
            <a href="#"><img src="image/science.jpg" style="width:200px;height:100px"></a>
            <h4>SCIENCE</h4>
            <p>Lorem ipsum dolor sit amet..</p>
        </div>
        <div class="col-sm-4">
            <a href="#"><img src="TASSE LOGO.jpg" style="width:200px;height:100px"></a>
            <h4 style="color:#303030;">TASSE</h4>
            <p>Lorem ipsum dolor sit amet..</p>
        </div>
    </div>
</div>
<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
    <h2 class="text-center">CONTACT</h2>
    <div class="row">
        <div class="col-sm-5">
            <p>4th International Conference on Green Technology and Sustainable Development HCMC University of Technology and Education.</p>
            <p><span class="glyphicon glyphicon-map-marker"></span> No 1 Vo Van Ngan Street, Linh Chieu Ward, Thu Duc District, Ho Chi Minh City</p>
            <p><span class="glyphicon glyphicon-phone"></span> (+84.8) 37 221 223 - Ext: 8161 or 8443 </p>
            <p><span class="glyphicon glyphicon-envelope"></span> gtsd2018@hcmute.edu.vn</p>
        </div>
        <div class="col-sm-7 slideanim">
            <div class="row">
                <div class="col-sm-6 form-group">
                    <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                </div>
                <div class="col-sm-6 form-group">
                    <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                </div>
            </div>
            <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
            <div class="row">
                <div class="col-sm-12 form-group">
                    <button class="btn btn-default pull-right" type="submit">Send</button>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
<footer class="container-fluid text-center">
    <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
    </a>
    </footer>

    <script>
    $(document).ready(function(){
        // Add smooth scrolling to all links in navbar + footer link
        $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
            // Make sure this.hash has a value before overriding default behavior
            if (this.hash !== "") {
                // Prevent default anchor click behavior
                event.preventDefault();

                // Store hash
                var hash = this.hash;

                // Using jQuery's animate() method to add smooth page scroll
                // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                $('html, body').animate({
                    scrollTop: $(hash).offset().top
                }, 900, function(){

                    // Add hash (#) to URL when done scrolling (default click behavior)
                    window.location.hash = hash;
                });
            } // End if
        });

        $(window).scroll(function() {
            $(".slideanim").each(function(){
                var pos = $(this).offset().top;

                var winTop = $(window).scrollTop();
                if (pos < winTop + 600) {
                    $(this).addClass("slide");
                }
            });
        });
    })
</script>

</body>
</html>
