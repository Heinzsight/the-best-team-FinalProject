<!doctype html>
<%@page import="com.qa.models.Book" %>
<%@ page import="com.qa.models.Customer" %>
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
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="css/nav-footer-style.css"/>
    <link rel="stylesheet" href="css/button.css"/>
</head>

<body>

<div id="wrap">

    <%
        Customer c = null;
        try{
            c = (Customer) session.getAttribute("logged_in_customer");
            request.setAttribute("logged_in_customer", c);
            System.out.println(c);
        } catch (Exception e) {
            System.out.println(e);
        }
    %>

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
                    <li><a href="/just-in">Just In</a></li>
                    <li><a href="/all-time-faves">All Time Faves</a></li>
                    <li><a href="/bestselling">Bestselling</a></li>
                    <li><a href="/genres">Genres</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">

                    <%
                        if (c == null){
                    %>
                    <li><a href="/login"> Register | Login </a></li>
                    <%
                    } else {
                    %>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hello, <%=c.getFirstName()%> <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </li>
                    <%
                        }
                    %>

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


    <div class="container-fluid" style="margin-left: 100px; margin-right: 100px;">

        <h1>Search Results for "${param.searchTerm}"</h1>

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
                        <h2><%= book.getTitle()%></h2>
                        <p><%= book.getAuthors().get(0).getAuthorName()%></p>
                        <p>$<%= book.getPrice()%></p>
                    <div class="row">
                        <a href="/bookDetails?bookId=<%=book.getBookId()%>" class="btn buttonOption">More Details</a>
                        <a href="/addToCart?bookId=<%=book.getBookId()%>" class="btn buttonOption">Add to Cart</a>
                    </div>
                    <br>
                </div>
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
        <br>
    </div>
    <br>
    <br>
    <hr>
    <div class="container">
        <div class="row">
            <div class="col">

                <p>Want a book we don't have? Feel free to leave a request, and we'll see what we can do!</p>
                <h1>Request a Book</h1>
                <form action="submitRequest" method="post" class="form-inline">
                    <div class="form-group">
                        <label for="author">Author Name*</label>
                        <input class='form-control' type="text" placeholder="Author Name*" name="author" id="author" required/>
                    </div>
                    <div class="form-group">
                        <label for="title">Title*</label>
                        <input class='form-control' type="text" placeholder="Enter Title*" name="title" id="title" required/>
                    </div>
                    <div class="form-group">
                        <label for="isbn">ISBN</label>
                        <input class='form-control' type="text" placeholder="Enter ISBN" name="ISBN" id="ISBN"/>
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary buttonSubmit" value="Request">
                    </div>
                    <br>
                </form>
                <p>* indicates required fields, though all fields help us!</p>


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