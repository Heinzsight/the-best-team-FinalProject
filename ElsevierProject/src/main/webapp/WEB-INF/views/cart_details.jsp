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

        <style>

            //From index.style.css ***************
            body {
            	font-family:'Open Sans', Arial, sans-serif;
            	font-size:14px;
            	font-weight:300;
            	line-height:1.6em;
            	color:#656565;
            }

            a:active {
            	outline:0;
            }

            .clear {
            	clear:both;
            }

            h1,h2, h3, h4, h5, h6 {
            	font-family:'Open Sans', Arial, sans-serif;
            	font-weight:700;
            	line-height:1.1em;
            	color:#333;
            	margin-bottom: 20px;
            }

            /* ===================================
            3. Header
            ==================================== */

            /* --- header -- */


            header .navbar {
                margin-bottom: 0;
            }

            .navbar-default {
                border: none;
            }

            .navbar-brand {
                color: #222;
            	text-transform: uppercase;
                font-size: 24px;
                font-weight: 700;
                line-height: 1em;
            	letter-spacing: -1px;
                margin-top: 30px;
                padding: 0 0 0 15px;
            }


            header .navbar-collapse  ul.navbar-nav {
                float: right;
                margin-right: 0;
            }

            header .navbar-default{
                background-color: #fff;
            }

            header .nav li a:hover,
            header .nav li a:focus,
            header .nav li.active a,
            header .nav li.active a:hover,
            header .nav li a.dropdown-toggle:hover,
            header .nav li a.dropdown-toggle:focus,
            header .nav li.active ul.dropdown-menu li a:hover,
            header .nav li.active ul.dropdown-menu li.active a{
                -webkit-transition: all .3s ease;
                -moz-transition: all .3s ease;
                -ms-transition: all .3s ease;
                -o-transition: all .3s ease;
                transition: all .3s ease;
            }


            header .navbar-default .navbar-nav > .open > a,
            header .navbar-default .navbar-nav > .open > a:hover,
            header .navbar-default .navbar-nav > .open > a:focus {
                -webkit-transition: all .3s ease;
                -moz-transition: all .3s ease;
                -ms-transition: all .3s ease;
                -o-transition: all .3s ease;
                transition: all .3s ease;
            }


            header .navbar {
                min-height: 100px;
            }

            header .navbar-nav > li  {
                padding-bottom: 30px;
                padding-top: 30px;
            }

            header  .navbar-nav > li > a {
                padding-bottom: 6px;
                padding-top: 5px;
                margin-left: 2px;
                line-height: 30px;
            	font-weight: 700;
                -webkit-transition: all .3s ease;
                -moz-transition: all .3s ease;
                -ms-transition: all .3s ease;
                -o-transition: all .3s ease;
                transition: all .3s ease;
            }


            .dropdown-menu li a:hover {
                color: #fff !important;
            }

            header .nav .caret {
                border-bottom-color: #f5f5f5;
                border-top-color: #f5f5f5;
            }
            .navbar-default .navbar-nav > .active > a,
            .navbar-default .navbar-nav > .active > a:hover,
            .navbar-default .navbar-nav > .active > a:focus {
              background-color: #fff;
            }
            .navbar-default .navbar-nav > .open > a,
            .navbar-default .navbar-nav > .open > a:hover,
            .navbar-default .navbar-nav > .open > a:focus {
              background-color:  #fff;
            }


            .dropdown-menu  {
                box-shadow: none;
                border-radius: 0;
            	border: none;
            }

            .dropdown-menu li:last-child  {
            	padding-bottom: 0 !important;
            	margin-bottom: 0;
            }

            header .nav li .dropdown-menu  {
               padding: 0;
            }

            header .nav li .dropdown-menu li a {
               line-height: 28px;
               padding: 3px 12px;
            }

            /* --- menu --- */

            header .navigation {
            	float:right;
            }

            header ul.nav li {
            	border:none;
            	margin:0;
            }

            header ul.nav li a {
            	font-size:12px;
            	border:none;
            	font-weight:700;
            	text-transform:uppercase;
            }

            header ul.nav li ul li a {
            	font-size:12px;
            	border:none;
            	font-weight:300;
            	text-transform:uppercase;
            }


            .navbar .nav > li > a {
              color: #111;
              text-shadow: none;
            }

            .navbar .nav a:hover {
            	background:none;
            }

            .navbar .nav > .active > a,.navbar .nav > .active > a:hover {
            	background:none;
            	font-weight:700;
            }

            .navbar .nav > .active > a:active,.navbar .nav > .active > a:focus {
            	background:none;
            	outline:0;
            	font-weight:700;
            }

            .navbar .nav li .dropdown-menu {
            	z-index:2000;
            }

            header ul.nav li ul {
            	margin-top:1px;
            }
            header ul.nav li ul li ul {
            	margin:1px 0 0 1px;
            }
            .dropdown-menu .dropdown i {
            	position:absolute;
            	right:0;
            	margin-top:3px;
            	padding-left:20px;
            }

            .navbar .nav > li > .dropdown-menu:before {
              display: inline-block;
              border-right: none;
              border-bottom: none;
              border-left: none;
              border-bottom-color: none;
              content:none;
            }



            ul.nav li.dropdown a {
            	z-index:1000;
            	display:block;
            }

             select.selectmenu {
            	display:none;
            }

            /* ===============================
            8. Footer
            ================================ */

            footer{
            	padding:50px 0 0 0;
            	color:#f8f8f8;
            }

            footer a {
            	color:#fff;
            }

            footer a:hover {
            	color:#eee;
            }

            footer h1, footer h2, footer h3, footer h4, footer h5, footer h6{
            	color:#fff;
            }

            footer address {
            	line-height:1.6em;
            }

            footer h5 a:hover, footer a:hover {
            	text-decoration:none;
            }

            ul.social-network {
            	list-style:none;
            	margin:0;
            }

            ul.social-network li {
            	display:inline;
            	margin: 0 5px;
            }

            #sub-footer{
            	text-shadow:none;
            	color:#f5f5f5;
            	padding:0;
            	padding-top:30px;
            	margin:20px 0 0 0;
            }

            #sub-footer p{
            	margin:0;
            	padding:0;
            }

            #sub-footer span{
            	color:#f5f5f5;
            }

            .copyright {
            	text-align:left;
            	font-size:12px;
            }

            #sub-footer ul.social-network {
            	float:right;
            }
            **************************

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


    