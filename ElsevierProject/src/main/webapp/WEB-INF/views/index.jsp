<!doctype html>
<%@page import="com.qa.models.Book" %>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Better Books</title>

<!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/flexslider.css"/>
    <%--<link rel="stylesheet" href="css/wrapper.css"/>--%>
<!-- Custom styles for this template -->
    <link rel="stylesheet" href="css/nav-footer-style.css"/>
</head>
  
<body>


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
                    <img alt="Brand" src="images/butter_books_logo.png">
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
                <form class="navbar-form navbar-right">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

    <%--<nav class="navbar navbar-static-top" style="background: #A9A9A9;">--%>
        <%--<div class="container">--%>
            <%--<div class="navbar-header">--%>
                <%--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">--%>
                    <%--<i class="fas fa-bars"></i>--%>
                <%--</button>--%>
                <%--<img src="images/cart.jpg" alt="Butter Books logo" class="img-thumbnail pull-left" width="50" height="50"/>--%>
                <%--<a class="navbar-brand" href="" style="margin-top:10px;">Butter Books</a>--%>
            <%--</div>--%>
            <%--<div class="collapse navbar-collapse" id="myNavbar">--%>
                <%--<ul class="nav navbar-nav">--%>
                    <%--<li class="active"><a href="#">Home</a></li>--%>
                    <%--<li><a href="#">Just In</a></li>--%>
                    <%--<li><a href="#">All-Time Faves</a></li>--%>
                    <%--<li><a href="#">Bestselling</a></li>--%>
                    <%--<li><a href="#">Genres</a></li>--%>
                    <%--<form  class="navbar-form navbar-left">--%>
                        <%--<div class="input-group">--%>
                            <%--<input type="text" class="form-control input-sm" placeholder="Search" name="search">--%>
                            <%--<div class="input-group-btn">--%>
                                <%--<button class="btn btn-default" type="submit" style="height:30px">--%>
                                    <%--<i class="fas fa-search"></i>--%>
                                <%--</button>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</form>--%>
                    <%--<li><a href="/login"> Register | Login </a></li>--%>
                    <%--<li><a href="/viewCart"><i class="fas fa-shopping-cart"></i></a></li>--%>
                <%--</ul>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</nav>--%>
            <!-- End Header -->

            <!-- Main Content -->


    <div class="container-fluid" style="margin-left: 100px; margin-right: 100px;">

        <div class="jumbotron">
            <img src="images/cart.jpg" alt="Butter Books logo" class="img-thumbnail pull-left" width="150" height="150" style="margin-right:150px;"/>
            <h1>3 Books of Your Choice</h1>
            <p>for only $5/mo</p>
        </div>
            <%
            Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
            int i = 0;
            for (Book book : books) {
                if (i == 0) {
                    %>
                    <div class="row">
                    <%

                }
            %>
                <div class="col-sm-3" style="height: auto;">
                    <div class="container-fluid">
                        <div class="row">
                            <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="img-responsive" style="width:auto;" src="<%=book.getBookImage()%>"></a>
                        </div>
                        <div class="row">
                            <h5><%= book.getTitle()%></h5>
                            <p>$<%= book.getPrice()%></p>
                        </div>
                        <div class="row">
                            <a href="/bookDetails?bookId=<%=book.getBookId()%>" class="button expanded">View book details</a>
                        </div>
                    </div>
                    <!--  a href="/addToCart?bookId=" class="button expanded">Add to Cart</a>-->
                </div>
            <%
                if (i == 3) {
            %>
                    </div>
            <%
                    i = 0;
                } else {
                    i++;
                }

            } %>
    </div>
    <hr>

    <hr>
        <div class="container">
            <div class="row">
                <div class="column">
                    <p>Cool stuff here, too!</p>

                </div>
            </div>
        </div>
    <hr>

        <!-- End Main Content -->
    <div id="push"></div>
</div>

<div id="footer">
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
</div>


<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="js/elsevier.js"></script>
<script>
    $(document).foundation();
</script>
</body>
</html>
