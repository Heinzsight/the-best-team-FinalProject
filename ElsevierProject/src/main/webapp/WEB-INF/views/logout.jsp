<!doctype html>
<%@page import="com.qa.models.Book" %>
<%@page import="com.qa.models.Customer" %>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Butter Books</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
          integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>
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
                    <li><a href="/login"> Register | Login </a></li>
                    <li><a href="/viewCart"><i class="fas fa-shopping-cart"></i></a></li>
                </ul>
                <form class="navbar-form navbar-right" action="/search">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group addon">
                                <input type="text" class="form-control input-sm navbar-search" placeholder="Search" name="searchTerm">
                            </div>
                        </div>
                    </div>
                </form>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="container-fluid front-layout-title">
            <h3>Logged Out</h3>
        </div>
    </div>
</div>
<%@include file="master-footer.jsp" %>