<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Online Shopping </title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<!-- Start Top Bar -->
<div class="top-bar">
    <div class="top-bar-left">
        <ul class="menu">
            <li class="menu-text" style="color:red">Online Shopping</li>
            <li><a href="#">Home</a></li>

        </ul>
    </div>
    <div class="top-bar-right">

        <ul class="dropdown menu" data-dropdown-menu>
            <li id="cart_items"></li>
            <li class="has-submenu">
                <a href="/viewCart"> <img src="images/cart.jpg" width="50" height="50"/></a>
                <ul class="submenu menu vertical" data-submenu>
                    <li><a href="/viewCart"><img src="images/cart.jpg" width="50" height="50"/> View Cart </a></li>
                    <li><a href="/login">Register | Login</a></li>
                </ul>
            </li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Contact</a></li>
        </ul>

    </div>
</div>
<!-- End Top Bar -->

<div class="callout large">
    <div class="row column">


        <div class="medium-6">
            <h3> Please login using your stored credentials </h3>

            <form action="loginProcess" method="post">

                <label>Email * </label>
                <input type="email" placeholder="Enter email" name="email" id="email" required/>
                <label>Password * </label>
                <input type="password" placeholder="Enter Password" name="password" id="password" required/>
                <input type="submit" class="button expanded" value="Login">

            </form>
        </div>

        <div class="medium-6">

            <p> New Customer? </p> <a href="/register" class="button large expanded">Register</a>

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


    