
<!doctype html>
<%@page import="com.qa.models.Book" %>
<%@page import="com.qa.models.Customer" %>
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
                <form  class="navbar-form navbar-right">
                    <div class="input-group">
                        <input type="text" class="form-control input-sm" placeholder="Search" name="search">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit" style="height:30px">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
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

    <div class="search_result">
        <p><b>Search Result for **Search Input!**</b></p>
        <p>We found **#** for **Search Input**</p>
        <p>Want a book that we don't have?  Request it!</p>
    </div>

    <div class="requestBook">
        <h6>Request a Book</h6>

        <div class="container-fluid">
            <div class="row">

                <form action="../submit" id="formentry" class="form-horizontal" role="form" data-parsley-validate novalidate>
                    <div class="container-fluid shadow">
                        <div class="row">
                            <div id="valErr" class="row viewerror clearfix hidden">
                                <div class="alert alert-danger">Oops! Seems there are some errors..</div>
                            </div>
                            <div id="valOk" class="row viewerror clearfix hidden">
                                <div class="alert alert-success">Yay! ..</div>
                            </div>


                            <div class="row">
                                <div class="col-md-12"><div class="row"><div class="col-md-6"><div class="form-group">
                                    <label class="control-label control-label-left col-sm-3" for="field1">Title<span class="req"> *</span></label>
                                    <div class="controls col-sm-9">

                                        <input id="field1" type="text" class="form-control k-textbox" data-role="text" required="required" data-parsley-errors-container="#errId1"><span id="errId1" class="error"></span></div>

                                </div></div><div class="col-md-6"><div class="form-group">
                                    <label class="control-label control-label-left col-sm-3" for="field2">Author<span class="req"> *</span></label>
                                    <div class="controls col-sm-9">

                                        <input id="field2" type="text" class="form-control k-textbox" data-role="text" required="required" data-parsley-errors-container="#errId2"><span id="errId2" class="error"></span></div>

                                </div><div class="form-group pull-right">



                                    <button id="button4" type="button" class="btn btn-lg">Submit</button></div></div></div></div>
                            </div>



                        </div>
                    </div>
                </form>
            </div>
        </div>


    </div>



    <%
        try{
            Customer c = (Customer) session.getAttribute("logged_in_customer");
            request.setAttribute("logged_in_customer", c);
            System.out.println(c);
        } catch (Exception e) {
            System.out.println(e);
        }
    %>
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
    <div class="container text-center text-md-left">
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
                    <li><a href="/aboutus">About</a></li>
                    <li><a href="/aboutus">Contact</a></li>
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
            <p>© 2016 Copyright Text </p>
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
