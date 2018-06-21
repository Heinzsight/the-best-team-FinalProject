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
            <li><a href="">Home</a></li>

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

<div class="container-fluid">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h3> Please login using your stored credentials </h3>
            <form action="loginProcess" method="post">
                <div class="form-group-lg">
                    <label>Email</label>
                    <input class='form-control' type="email" placeholder="Enter email" name="email" id="email" required/>
                </div>
                <div class="form-group-lg">
                    <label>Password</label>
                    <input class='form-control' type="password" placeholder="Enter Password" name="password" id="password" required/>
                </div>

                <input type="submit" class="btn btn-primary btn-lg btn-block" value="Login">
                <br>
                <p> New to Better Books? </p> <a href="/register" class="btn btn-primary btn-lg btn-block">Register</a>
            </form>
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


    