<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Online Shopping </title>
    <%--<link rel="stylesheet" href="css/style.css">--%>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/header_footer.css">
    <link rel = "stylesheet" href="css/button.css">
</head>
<body>

<%@page import="com.qa.models.Customer" %>
<%
            try{
            Customer c = (Customer) session.getAttribute("logged_in_customer");
            request.setAttribute("logged_in_customer", c);
            System.out.println(c);
            } catch (Exception e) {
            System.out.println(e);
            }
%>

<div id="wrap">


    <!-- Navigation -->
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/">
                    <img alt="Brand" src="images/header/butter_books_logo.png">
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="#">Just In</a></li>
                    <li><a href="#">All Time Faves</a></li>
                    <li><a href="#">Bestselling</a></li>
                    <li><a href="#">Genres</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/login"> Register | Login </a></li>
                    <li><a href="/viewCart"><i class="fas fa-shopping-cart"></i></a></li>
                </ul>
                <form  class="navbar-form navbar-right" action="/search">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group addon">
                                <input type="text" class="form-control input-sm" placeholder="Search" name="searchTerm">
                            </div>
                        </div>
                    </div>
                </form>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <!-- End Header -->

<div class="container-fluid" id="main">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h1 align="center">Sign In</h1>
            <p align="center">or <a href="/register">Create Account</a></p>
            <form action="loginProcess" method="post" class="form-horizontal">
                <div class="form-group">
                        <label for="email">Email</label>
                        <input class='form-control' type="email" placeholder="Enter email" name="email" id="email" required/>
                </div>
                <div class="form-group">
                        <label for="password">Password</label>
                        <input class='form-control' type="password" placeholder="Enter Password" name="password" id="password" required/>
                </div>
                <br>
                <div class="form-group">
                    <p><a href="/"><span class="glyphicon glyphicon-menu-left"></span> Home</a></p>
                    <input type="submit" class="btn btn-primary btn-lg btn-block buttonSubmit" value="Login">
                </div>
                <br>
            </form>
        </div>
    </div>
</div>
</div>

<div id="footer">
    <div class="container">
        <div class="row" style="padding-top: 15px;">
            <div class="col-md-3">
                <img style="padding-top: 10px;" src="images/footer/butterbooks_logo_footer.png">
            </div>
            <div class="col-md-3">
                <ul class="list-unstyled">
                    <li><a href="#">Just In</a></li>
                    <li><a href="#">All-Time Faves</a></li>
                    <li><a href="#">Bestselling</a></li>
                    <li><a href="#">Genres</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <ul class="list-unstyled">
                    <li><a href="/about">About</a></li>
                    <li><a href="/about">Contact</a></li>
                    <li><a href="#">FAQs</a></li>
                    <li><a href="#">Order</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <div class="social-networks">
                    <a href="https://twitter.com/" class="twitter"><i class="fab fa-twitter-square"></i></a>
                    <a href="https://www.instagram.com/" class="instagram"><i class="fab fa-instagram"></i></a>
                    <a href="https://www.facebook.com/" class="facebook"><i class="fab fa-facebook-square"></i></a>
                    <a href="#" class="snapchat"><i class="fab fa-snapchat-square"></i></a>
                </div>
            </div>
        </div>
        <div class="row">
            <ul class="list-inline footer-copyright">
                <li><a>&copy; 2018 Butter Books, Inc.</a></li>
                <li><a>|</a></li>
                <li><a>Terms of Use</a></li>
                <li><a>|</a></li>
                <li><a>Copyright and Trademark</a></li>
                <li><a>|</a></li>
                <li><a>Privacy Policy</a></li>
                <li><a>|</a></li>
                <li><a>Sitemap</a></li>
                <li><a>|</a></li>
                <li><a>Accessibility</a></li>
            </ul>
        </div>
    </div>

</div>


<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="js/elsevier.js"></script>
<script>
    $(document).foundation();
</script>
</body>
</html>


    