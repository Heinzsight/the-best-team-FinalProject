<!doctype html>
<%@page import="com.qa.models.Customer" %>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Online Shopping </title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/index-style.css">
</head>
<body>

<%!

    Customer c;

%>


<%
    c = (Customer) session.getAttribute("logged_in_customer");
%>

<!-- Start Top Bar -->
<header>
    <div class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <i class="fas fa-bars"></i>
                </button>
                <img src="images/cart.jpg" alt="Butter Books logo" class="img-thumbnail pull-left" width="50" height="50"/>
                <a class="navbar-brand" href="">Butter Books</a>
            </div>
            <form style="max-width:500px;">
                <div class="input-group">
                    <input type="text" class="form-control input-sm" placeholder="Search">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </div>
                </div>
            </form>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.html">Home</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Features <b class=" icon-angle-down"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Just In</a></li>
                            <li><a href="#">All-Time Faves</a></li>
                            <li><a href="#">Bestselling</a></li>
                            <li><a href="#">Genres</a></li>
                        </ul>
                    </li>
                    <li><a href="/about">About</a></li>
                    <li><a href="/about">Contact</a></li>
                    <li><a href="/login"> Register | Login </a></li>
                    <li><a href="/viewCart"><i class="fas fa-shopping-cart"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<!-- End Top Bar -->

<div class="callout large">
    <div class="row column text-center">

        <h3>You have logged in as <%=c.getFirstName() %>
        </h3>
    </div>
</div>


<footer>
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

<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="js/elsevier.js"></script>
<script>
    $(document).foundation();
</script>
</body>
</html>


    