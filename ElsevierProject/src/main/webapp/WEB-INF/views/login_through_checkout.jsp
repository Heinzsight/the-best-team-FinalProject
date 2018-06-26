<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Online Shopping </title>
    <%--<link rel="stylesheet" href="css/style.css">--%>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <%--<link rel="stylesheet" href="css/index-style.css"/>--%>
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

<div class="main">


    <!-- Start Top Bar -->
    <header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        Menu<i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="">Better Books</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/">Home</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Features <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Just In</a></li>
                                <li><a href="#">All-Time Faves</a></li>
                                <li><a href="#">Bestselling</a></li>
                                <li><a href="#">Genres</a></li>
                            </ul>
                        </li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="/login"> Register | Login </a></li>
                        <li>
                            <a href="/viewCart"><i class="fas fa-shopping-cart"></i></a>
                            <a href="/viewCart"><i class="fas fa-shopping-basket"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <!-- End Top Bar -->

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

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="widget">
                        <h5 class="widgetheading">Get in touch with us</h5>
                        <ul class="link-list">
                            <li><a href="#">Just In</a></li>
                            <li><a href="#">All-Time Faves</a></li>
                            <li><a href="#">Bestselling</a></li>
                            <li><a href="#">Genres</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="widget">
                        <h5 class="widgetheading">Pages</h5>
                        <ul class="link-list">
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">FAQs</a></li>
                            <li><a href="#">Order</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="widget">
                        <ul class="social-network">
                            <li><a href="#" data-placement="top" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="#" data-placement="top" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#" data-placement="top" title="Instagram"><i class="fab fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>


<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="js/elsevier.js"></script>
<script>
    $(document).foundation();
</script>
</body>
</html>

