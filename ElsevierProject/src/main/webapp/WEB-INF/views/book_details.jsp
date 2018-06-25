<!doctype html>
<%@page import="com.qa.models.Book" %>
<%@page import="com.qa.models.Customer" %>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Foundation | Welcome</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link href="css/index-style.css" rel = "stylesheet">
    <link href="css/button.css" rel = "stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/index-style.css"/>

</head>
<body>

<%
            try{
            Customer c = (Customer) session.getAttribute("logged_in_customer");
            request.setAttribute("logged_in_customer", c);
            System.out.println(c);
            } catch (Exception e) {
            System.out.println(e);
            }
%>

<%!

    Book book;


%>


<%

    book = (Book) request.getAttribute("book");


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
</div>
    <!-- End Header -->

<br>
<!-- You can now combine a row and column if you just need a 12 column row -->
<div class="row col">
    <nav aria-label="You are here:" role="navigation">
        <ul class="breadcrumbs">

            <li><a href="/">Home</a></li>
            <li>
                <span class="show-for-sr">Current: </span> Book Details
            </li>
        </ul>
    </nav>
</div>

<div class="row">
    <div class="col-md-6">
        <img class="image" src="<%=book.getBookImage()%>"/>
    </div>
    <div class="col-md-6">
        <h1><%=book.getTitle() %>
        </h1>

        <label><h4>Select format:</h4>
            <select name="format">
                <option value="print">Paperback - <%=book.getPrice()%></option>
                <option value="eBook">eBook - <%=book.getPrice()%></option>
            </select>
        </label>
        <br>
        <a href="/addToCart?bookId=<%=book.getBookId()%>" class="btn-lg buttonOption">BUY BOOK</a>
        <a href="/addToCart?bookId=<%=book.getBookId()%>" class="btn-lg buttonOption">ADD TO SUBSCRIPTION</a>
        <br>
        <br>
        <p><strong>ISBN: </strong><%=book.getPaperISBN()%></p>
        <label>
            <h4>Overview:</h4>
        </label>
        <p><%=book.getDescription() %>
        </p>
    </div>
</div>
<br>
<br>
<!-- End Main Content -->

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


    