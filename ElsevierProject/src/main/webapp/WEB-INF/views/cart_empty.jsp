<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Shopping Cart | Elsevier </title>

    <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
        <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/flexslider.css"/>
        <link rel="stylesheet" href="css/wrapper.css"/>
    <!-- Custom styles for this template -->
        <link href="css/index-style.css" rel="stylesheet">
        <link href="css/cart_empty-style.css" rel="stylesheet">
        <link href="css/button.css" rel="stylesheet">


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
       <hr>
           <!-- End Header -->

<!-- Main Content -->

<div class="container-fluid">
    <div class="row column text-center">
        <h1>Your cart is now empty </h1>

        <a href="/" class="button large"> Continue shopping </a>

    </div>
</div>

<!-- End of Main Content -->

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


    