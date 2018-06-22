<!doctype html>
<%@page import="com.qa.models.Book" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Map" %>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Shopping Cart | Week 3</title>
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


        </style>


</head>
<body>

<%!

    ArrayList<Book> books;

    Map<Integer, Integer> bookCounts;


%>


<%


    books = (ArrayList<Book>) session.getAttribute("filtered_books");

    bookCounts = (Map<Integer, Integer>) session.getAttribute("book_counts");

    double cartTotal = 0.0;

    double orderTotal = 0.0;

    double totalPrice = 0.0;
%>

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
                                <a href="/viewCsart"><i class="fas fa-shopping-cart"></i></a>
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

<span class="show-for-sr">Shopping Cart</span>

<div class="row">
    <div class="medium-6 columns">
        <%


            /* for(Book book : books)
            {

                int quantity = bookCounts.get(book.getBookId());
                double price = book.getPrice();
                totalPrice = book.getPrice() * quantity;
                cartTotal = cartTotal + book.getPrice()*quantity;
                System.out.println("Cart Total "+cartTotal);

            } */


            int i = 0;
            for (Book book : books) {

                int quantity = bookCounts.get(book.getBookId());
                double price = book.getPrice();
                totalPrice = book.getPrice() * quantity;
                cartTotal = cartTotal + book.getPrice() * quantity;
                System.out.println("Cart Total " + cartTotal);

        %>

        <img class="thumbnail" src="<%=book.getBookImage()%>"/>
        <div class="row small-up-4">

            <div class="column">
                eBook ISBN : <%=book.geteBookISBN()%>
            </div>
            <div class="column">
                Print book ISBN <%=book.getPaperISBN()%>
            </div>

            <div class="column">

            </div>
            <div class="column">
                Published On <%=book.getPublishedDate()%>
            </div>
            <div class="column">
                <form name="f1">
                    <input type="hidden" name="price" value="<%=price%>"/>
                    <input type="hidden" name="cart_total" value="<%=cartTotal%>"/>
                    Price <label id="price_label<%=i%>">$<%=totalPrice%>
                </label>
                    <input type="hidden" name="cart_total" value="<%=price%>"/>
                    Quantity <input type="number" min="1" name="quantity" value="<%=quantity%>"
                                    oninput="calculateTotalPrice(price.value,this.value,price_label<%=i%>)"/>
                </form>
            </div>


        </div>

        <div class="row small-up-4">

            <div class="column">
                <a href="/removeFromCart?bookId=<%=book.getBookId() %>"> Remove </a>
            </div>

        </div>

        <hr>
        <%
                i++;
            }
        %>

    </div>
    <div class="medium-6 large-5 columns">
        <h3>Order Summary </h3>
        <p></p>

        <div class="row">
            <div class="small-3 columns">
                <label for="middle-label" class="middle">Cart Total</label>
            </div>
            <div class="small-3 columns">
                <input type="hidden" name="order_total" id="cart_total" value="<%=cartTotal %>"/>
                <label for="middle-label" class="middle" id="cart_total_label">$<%=cartTotal %>
                </label>
            </div>

        </div>


        <div class="row">
            <div class="small-3 columns">
                <label for="middle-label" class="middle">VAT </label>
            </div>
            <div class="small-3 columns">
                <label for="middle-label" class="middle">Applicable Tax </label>
            </div>

        </div>

        <div class="row">
            <div class="small-3 columns">
                <label for="middle-label" class="middle">Order Total </label>
            </div>
            <div class="small-3 columns">
                <input type="hidden" name="order_total" id="order_total" value="<%=cartTotal %>"/>
                <label for="middle-label" class="middle" id="order_total_label">$<%=cartTotal%>
                </label>
            </div>

        </div>

        <form action="/checkout" method="post" id="checkout_form">
            <input type="hidden" name="order_total" value="<%=cartTotal %>"/>
            <input type="submit" class="button large expanded" value="Proceed to Checkout"/>
        </form>
    </div>
</div>

<!-- End of Main Content -->

<!-- Beginning of Footer -->

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

        		<!-- End of Footer -->
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="js/elsevier.js"></script>
<script src="js/update_cart.js"></script>
<script>
    $(document).foundation();
</script>
</body>
</html>


    