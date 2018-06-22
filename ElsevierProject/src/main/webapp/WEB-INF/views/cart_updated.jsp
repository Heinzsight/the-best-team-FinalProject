<!doctype html>
<%@page import="com.qa.models.Book" %>
<%@ page import="java.util.ArrayList" %>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Foundation | Welcome</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link href="css/index-style.css" rel = "stylesheet">
    <link href="css/button.css" rel = "stylesheet">
    <link rel="stylesheet" href="css/index-style.css">
    <link rel="stylesheet" href="css/cart_empty-style.css">
</head>
<body>

<%!

    ArrayList<Book> books;


%>


<%

    books = (ArrayList<Book>) request.getAttribute("cart_items");

%>

    <!-- Navigation -->
    <header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        Menu<i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="/">Better Books</a>
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
    <hr>
<!-- End Header -->

<br>
<!-- You can now combine a row and column if you just need a 12 column row -->
<div class="row columns">
    <nav aria-label="You are here:" role="navigation">
        <ul class="breadcrumbs">

            <li><a href="/">Home</a></li>
            <li><a href="/bookDetails?bookId=<%=books.get(books.size()-1).getBookId()%>">Book Details</a></li>
            <li>
                <span class="show-for-sr">Current: </span> Cart Confirmation
            </li>
        </ul>
    </nav>
</div>

<div class="container-fluid" id="main">
    <div class="row">
        <div class="col-lg-2 col-md-offset-2">
            <img class="img-thumbnail" width=200px height=200px src="<%=books.get(books.size()-1).getBookImage()%>"/>
        </div>
        <div class="col-lg-6">
            <br>
            <h1><%=books.get(books.size()-1).getTitle()%> added to cart </h1>
            <br>
            <a href="/viewCart" class="btn-lg buttonDetails">VIEW CART</a>
            <a href="/" class="btn-lg buttonDetails">CONTINUE SHOPPING</a>
        </div>
    </div>
</div>
<br>
<!-- End Main Content -->

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

<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="js/elsevier.js"></script>
<script>
    $(document).foundation();
</script>
</body>
</html>
