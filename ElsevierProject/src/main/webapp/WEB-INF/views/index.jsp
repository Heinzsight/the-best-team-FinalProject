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
    <link rel="stylesheet" href="css/wrapper.css"/>
<!-- Custom styles for this template -->
    <link rel="stylesheet" href="css/index-style.css"/>
</head>
  
<body>
    <div id="wrapper">
        <!-- Navigation -->
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

        <!-- Main Content -->
        <div class="container">
            <div class="row">
                <%
                Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
                int i = 0;
                for (Book book : books) {
                    if (i >= 4) {
                        break;
                    } else {
                        i++;
                    }
                %>
                    <div class="col-sm-3">
                        <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="img-responsive" style="max-height:100px, max-width:100px" src="<%=book.getBookImage()%>"></a>
                        <h5><%= book.getTitle()%></h5>
                        <p>$<%= book.getPrice()%></p>
                        <a href="/bookDetails?bookId=<%=book.getBookId()%>" class="button expanded">View book details</a>
                        <!--  a href="/addToCart?bookId=" class="button expanded">Add to Cart</a>-->
                    </div>
                <% } %>
            </div>
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
                                    	<li><a href="#" data-placement="top" title="Twitter"><i class="fab fa-twitter"></i>></a></li>
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
