<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Shopping Cart | Week 3</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/multi_step_form.css">
    <%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

</head>
<body>

<%@page import="com.qa.models.Customer" %>
<%
            try{
            Customer c = (Customer) session.getAttribute("logged_in_customer");
            request.setAttribute("logged_in_customer", c);
            System.out.println(c);
            } catch (Exception e) {
            System.out.println(e);
            }
%>

<!-- Navigation -->
<nav class="navbar navbar-static-top" style="background: #A9A9A9;">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <i class="fas fa-bars"></i>
            </button>
            <img src="images/cart.jpg" alt="Butter Books logo" class="img-thumbnail pull-left" width="50" height="50"/>
            <a class="navbar-brand" href="" style="margin-top:10px;">Butter Books</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">Just In</a></li>
                <li><a href="#">All-Time Faves</a></li>
                <li><a href="#">Bestselling</a></li>
                <li><a href="#">Genres</a></li>
                <form  class="navbar-form navbar-left">
                    <div class="input-group">
                        <input type="text" class="form-control input-sm" placeholder="Search" name="search">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit" style="height:30px">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
                <li><a href="/login"> Register | Login </a></li>
                <li><a href="/viewCart"><i class="fas fa-shopping-cart"></i></a></li>
            </ul>
        </div>
    </div>
</nav>
        <!-- End Header -->


</body>
</html>