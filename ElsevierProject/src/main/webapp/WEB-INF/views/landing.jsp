<!doctype html>
<%@page import="com.qa.models.Address" %>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Order History | Butter Books</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
          integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/flexslider.css"/>
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="css/nav-footer-style.css"/>
    <link rel="stylesheet" href="css/button.css"/>
    <link rel="stylesheet" href="css/landing_page.css"/>
</head>

<body>

<%@page import="com.qa.models.Book" %>
<%@page import="com.qa.models.Customer" %>
<%@page import="com.qa.models.CustomerOrder" %>
    <%
            Customer c = null;
            try{
                c = (Customer) session.getAttribute("logged_in_customer");
                System.out.println("First name is: "+c.getFirstName());
                request.setAttribute("logged_in_customer", c);
                System.out.println(c);
            } catch (Exception e) {
                System.out.println(e);
            }

            Address address = (Address) request.getAttribute("Address");
            System.out.println("Address: "+address);
%>
<div id="wrap">
    <!-- Navigation -->
    <!-- Navigation -->
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
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
                    <li><a href="/genres">Browse</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">

                    <%
                        if (c == null) {
                    %>
                    <li><a href="/login"> Register | Login </a></li>
                    <%
                    } else {
                    %>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">Hello, <%=c.getFirstName()%> <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/landing">Account Details</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="/logout">logout</a></li>
                        </ul>
                    </li>
                    <%
                        }
                    %>

                    <li><a href="/viewCart"><i class="fas fa-shopping-cart"></i></a></li>
                </ul>
                <form class="navbar-form navbar-right" action="/search">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group addon">
                                <input type="text" class="form-control input-sm navbar-search" placeholder="Search"
                                       name="searchTerm">
                            </div>
                        </div>
                    </div>
                </form>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <!-- End Header -->
    <!-- Main Content -->
    <div class="container_1a" style="background-color: rgba(174,203,197,0.09); margin-bottom: 25px">
        <div class="pageTitle">
            <h1 style="color: #a23452; font-family: 'Abril Fatface'" align="center">Good morning, <%=c.getFirstName()%>
            </h1>

            <% Iterable<Book> books1 = (Iterable<Book>) session.getAttribute("books");

                int i = 0;
                if (books1 != null) {
                    for (Book book : books1) {
                        if (i >= 1) {
                            break;
                        } else {
                            i++;
                        }
            %>


        </div>
        <%--End of Subscription Box--%>

    </div>

    <%--Recent Orders Container--%>
    <div class="container2a">
        <%--Recent Orders Title Container--%>
        <div class="container_2b" style="padding-left: 7%">
            <h6 style="color: #a23452">Recent Orders</h6>
        </div>
        <%--End of Recent Orders Title container--%>

        <div class="bookHistoryBox" style="margin-left: 10%; margin-top: 25px; margin-right: 10%">

            <% //Need to write code to fetch order history
                Iterable<CustomerOrder> orders = (Iterable<CustomerOrder>) session.getAttribute("customer_orders");
                System.out.println("Orders: " + orders);

                int j = 0;
                if (orders != null) {
                    for (CustomerOrder order : orders) {
                        if (j >= 4) {
                            break;
                        } else {
                            j++;
                        }
                        for (Book book1 : order.getBooks()) {
            %>

            <div class="row">
                <br>
                <!-- Book Thumbnail -->
                <div class="col-md-2">


                    <a href="/bookDetails?bookId=<%=book1.getBookId()%>"><img class="img-responsive"

                                                                              src="<%=book1.getBookImage()%>"></a>


                </div>
                <!-- End Book Thumbnail -->

                <!-- Book Title/ Author -->
                <div class="col-md-2">
                    <h5><%= book1.getTitle()%>
                    </h5>
                    <%--<p>by <%= book1.getAuthors()%>--%>
                    </p>
                    <%--<%--%>

                    <%--//Need to enter code to retrieve author of book--%>

                    <%--%>--%>
                </div>

                <!-- End Book Title/ Author -->
                <!-- Book Format and price -->
                <div class="col-md-3">


                    <h5><%=book1.getFormat()%> - $<%=book1.getPrice()%>
                    </h5>
                </div>
                <!-- End Book Format and price -->
                <!-- Shipping date -->
                <div class="col-md 3">
                    <h5>Shipped on <b> 06/01/2018</b></h5>
                    <%

                        //Write code to pull shipping date from DB

                    %>

                </div>
                <!-- End Shipping date -->

            </div>
            <!-- End Row-->


            <%
                    }
                }
            } else {

            %>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12">
                        <h1> You do not have any order history to display</h1>
                    </div>
                </div>
            </div>
            <%
                }
            %>

        </div>


    </div>
    <%--End of Orders Container--%>


    <%--Account Details Container--%>
    <div class="container" style="margin-left: 25px; padding-top: 25px; margin-bottom: 25px">

        <style>

            <%Iterable<Customer> customer = (Iterable<Customer>) session.getAttribute("Customer");%>


        </style>

        <%--Account Details Title Container--%>
        <div class="container_3b" style="padding-left: 4%">
            <h6 style="color: #a23452">Account Details</h6>
        </div>
        <%--End of Account Details Title container--%>


        <p>
        <ul style="list-style-type:none">

            <li><b>Name:</b></li>
            <li><span><%=c.getFirstName()%></span> <span><%=c.getLastName()%></span></li> <!-- Name-->
            <li><b>Email:</b></li>
            <li><%=c.getEmail()%>
            </li> <!-- Email-->
            <li><b>Address:</b></li>
            <%
                if (address != null) {
            %>
            <li><%=address.getAddressLine1()%>
            </li>  <!-- Address 1-->
            <li><b>City, Zip, State:</b></li>
            <li><span><%=address.getCity()%> , </span> <span><%=address.getState()%></span>
                <span> <%=address.getPostcode()%> </span></li><!-- Address 2 / City, Zip, State-->
            <%
            } else {
            %>
            <li> N/A</li>  <!-- Address 1-->
            <li>Address 2/ City, Zip, State</li>
            <li><span>N/A , </span> <span> N/A </span> <span> N/A</span></li><!-- City, Zip, State-->
            <%
                }
            %>

        </ul>
        </p>


    </div>
    <%--End of Details Container--%>


        <%              }
                }
       else{
       %>


    <p> You dont have any books to show</p>
        <% } %>
    <!-- End Main Content -->
<%@include file="master-footer.jsp" %>