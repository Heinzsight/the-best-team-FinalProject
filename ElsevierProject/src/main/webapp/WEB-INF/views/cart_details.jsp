<!doctype html>
<%@page import="com.qa.models.Book" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Map" %>
<%@page import="java.text.DecimalFormat" %>
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
    <!-- Custom styles for this template -->
        <link rel="stylesheet" href="css/nav-footer-style.css"/>
        <link href="css/cart_details-style.css" rel="stylesheet">
        <link href="css/button.css" rel="stylesheet">

        <style>
            body
                {
                    min-height: 500px;
                    width: 100%;
                }
        </style>


</head>
<body>
<%@page import="com.qa.models.Customer" %>
<%
            try{
            Customer c = (Customer) session.getAttribute("logged_in_customer");
            System.out.println("First name is: "+c.getFirstName());
            request.setAttribute("logged_in_customer", c);
<<<<<<< HEAD
            System.out.println(c);

            System.out.println(c);

=======
>>>>>>> fb0cc94d14ab5ec301e88a33e9b7c2ee5b51742a
            } catch (Exception e) {
            System.out.println(e);
            }
%>


<%!

    ArrayList<Book> books;

    Map<Integer, Integer> bookCounts;


%>


<%


    books = (ArrayList<Book>) session.getAttribute("filtered_books");
    request.setAttribute("filtered_books", books);
    bookCounts = (Map<Integer, Integer>) session.getAttribute("book_counts");

    Customer c = (Customer) session.getAttribute("logged_in_customer");

    double cartTotal = 0.0;

    double orderTotal = 0.0;

    double totalPrice = 0.0;
%>
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
                    <form class="navbar-form navbar-right">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

                <!-- End Header -->

    <!-- Main Content -->



    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <h1 class="col-md-offset-2">Shopping Cart</h1>
            </div> <!-- End of first column -->
        </div> <!-- End of the first row -->
    </div> <!-- End of first container -->
                        <br />
                        <br />
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
                        double price = book.getPrice();          //individual book price
                        totalPrice = book.getPrice() * quantity; //the price of the book times the quantity
                        cartTotal = Math.round((cartTotal + book.getPrice() * quantity) * 100) / 100.0; //the whole price of the books with their quantity included

                        double totalTax = cartTotal * 0.08;      //the tax for the entire order
                        totalTax = Math.round(totalTax * 100) / 100.0; //formatting the total order tax
                        double wholePrice = cartTotal + totalTax;      //the entire order total with the tax included
                        wholePrice = Math.round(wholePrice * 100) / 100.0; //formatting the whole order/tax number


                        System.out.println("Cart Total " + cartTotal);
                       // System.out.println("Cart Tax " + totalTax);

                %>


    <div class="container" id="leftFloatedContainer">
        <div class="row">
            <div class="col-md-12">
                <div class="container-fluid">
                    <div class="row">
                         <div class="col-md-6 col-xs-12" >
                               <img class="thumbnail" src="<%=book.getBookImage()%>"/>
                         </div>
                        <div class="col-md-6 col-xs-12" id="verticalCenter"> <!-- Start of first column in the container fluid -->
                            <h3><%=book.getTitle() %></h3>
                                               <!-- End of first column in the container fluid -->
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xs-9">

                                      <div class="column">
                                           eBook ISBN : <span> <%=book.geteBookISBN()%> </span>
                                      </div>
                                      <div class="column">
                                           Print book ISBN: <span> <%=book.getPaperISBN()%> </span>
                                      </div>
                                      <div class="column">
                                          <form name="f1">
                                              <input type="hidden" name="price" value="<%=price%>"/>
                                              <input type="hidden" name="cart_total" value="<%=cartTotal%>"/>
                                              Price <label id="price_label<%=i%>">$<%=totalPrice%>
                                          </label>
                                      </div>
                                    </div>
                                <div class="col-xs-3">
                                              <input type="hidden" name="cart_total" value="<%=price%>"/> <br />
                                              Quantity <input type="number" min="1" name="quantity" value="<%=quantity%>"
                                              oninput="calculateTotalPrice(price.value,this.value,price_label<%=i%>)"/>
                                          </form>

                                          <div class="column">
                                               <a href="/removeFromCart?bookId=<%=book.getBookId() %>"> Remove </a>
                                          </div>
                                </div>
                            </div> <!-- validated to here -->
                        </div>
                    </div>
                </div>
            </div> <!-- End of first column -->

        </div>
    </div>
    </div> <!-- got this one div thats needed but I cant find where its partner tag is -->

                <%
                        i++;
                        if(i == books.size())
                        {
                 %>
                    <div class="container" id="rightFloatedContainer" >
                        <div class="row">
                            <div class="col-md-12"> <!-- Beginning of 3rd column -->
                                            <div class="row">
                                                            <div class="col-xs-12 col-md-offset-3">
                                                                <h1>Summary </h1>


                                                            </div>
                                            </div>
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <hr>
                                                    </div>
                                                </div>

                                                 <div class="row">
                                                     <div class="col-xs-5 col-md-offset-2">
                                                        <label for="middle-label" class="middle">Subtotal</label>
                                                     </div>
                                                     <div class="col-xs-5">
                                                        <input type="hidden" name="order_total" id="cart_total" value="<%=cartTotal %>"/>
                                                        <label for="middle-label" class="middle" id="cart_total_label">$<%=cartTotal %>
                                                     </div>
                                                 </div>


                                                <div class="row">
                                                    <div class="col-xs-5 col-md-offset-2">
                                                        <label for="middle-label" class="middle">Shipping</label>
                                                    </div>
                                                    <div class="col-xs-5">
                                                        <!-- Need the Shipping amount here -->
                                                        <label for="middle-label" class="middle"> Free </label>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-5 col-md-offset-2">
                                                        <label for="middle-label" class="middle">Tax </label>
                                                    </div>
                                                    <div class="col-xs-5">
                                                        <%=totalTax %>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <hr>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-5 col-md-offset-2">
                                                        <label for="middle-label" class="middle">Total </label>
                                                    </div>
                                                    <div class="col-xs-5">
                                                         <input type="hidden" name="order_total" id="order_total" value="<%=wholePrice %>"/>
                                                         <label for="middle-label" class="middle" id="order_total_label">$<%=wholePrice%></label>
                                                     </div>
                                                 </div>
                                                 <%
                                                 int customer_id=-1;
                                                 if(c != null)
                                                 {
                                                    customer_id = c.getCustomerId();
                                                 }
                                                 if(1 == 1)
                                                 {

                                                 %>

                                                    <div class="row">
                                                       <div class="col-xs-9 col-md-offset-3">
                                                          <form action="/checkout" method="post" id="checkout_form">
                                                               <input type="hidden" name="order_total" value="<%=cartTotal %>"/>
                                                               <input type="hidden" name="customer_id" value="<%=customer_id %>"/>
                                                               <input type="submit" class="btn-lg buttonOption" class="centered" value="Checkout"/>
                                                          </form>
                                                        </div>
                                                    </div>
                                                 <%

                                                 }
                                                 else
                                                 {

                                                 %>
                                                    <div class="row">
                                                        <div class="col-xs-12" style="text-align: center">
                                                            <label for="label" class="middle"> You need to login before you check out! Click below to login and come back here after you are done! </label>
                                                        </div>
                                                    </div>
                                                <div class="row">
                                                    <div class="col-xs-8 col-md-offset-4">
                                                        <form action="/login" method="post" id="checkout_form">
                                                            <input type="hidden" name="order_total" value="<%=cartTotal %>"/>
                                                            <input type="submit" class="btn-lg buttonOption" class="centered" value="Login"/>
                                                        </form>
                                                    </div>
                                                </div>

                                                <%
                                                }
                                                %>
                            </div> <!-- End of 3rd column-->
                        </div>
                    </div> <!-- End of second floated container -->

                <%        }
                    }
                %>

    <div id="push"></div>
</div> <!-- End of wrapper -->
<!-- End of Main Content -->

<!-- Beginning of Footer -->

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

        		<!-- End of Footer -->
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="js/elsevier.js"></script>
<script src="js/update_cart.js"></script>
<script>
    $(document).foundation();
</script>
</body>
</html>


    