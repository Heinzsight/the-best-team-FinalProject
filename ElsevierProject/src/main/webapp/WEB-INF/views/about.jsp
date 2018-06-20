<!doctype html>
<%@page import="com.qa.models.Customer" %>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Online Shopping </title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">


    <img src="Book-banner.jpg" alt="Book Store">

</head>
<body>

<%!

    Customer c;

%>


<%
    c = (Customer) session.getAttribute("logged_in_customer");
%>

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

            <li><a href="/profile">Personal Details</a></li>
            <li><a href="#">Address Book</a></li>
            <li><a href="#">Change Password </a></li>
            <li><a href="#">Order History </a></li>
            <li><a href="/logout">Logout</a></li>
            <li class="has-submenu">
                <a href="/viewCart"> <img src="images/cart.jpg" width="50" height="50"/></a>
                <ul class="submenu menu vertical" data-submenu>
                    <li><a href="/viewCart"><img src="images/cart.jpg" width="50" height="50"/></a></li>

                </ul>
            </li>

        </ul>

    </div>
</div>
<!-- End Top Bar -->
<body>
<div align="center">
    <h1><b>The Better Book Mission</b></h1>
</div>
<div align="center">
    <p style="font-family:sans-serif" font -size="24px"><b>Let's read for a better tomorrow</b></p>
</div>
<p align="justify">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi condimentum mi est, non facilisis nisi rutrum efficitur.
    Nulla facilisi. Duis consectetur, urna bibendum rhoncus molestie, diam arcu laoreet magna, non egestas risus sem sit amet risus.
    Praesent eu blandit urna. Vestibulum a orci quis dolor feugiat auctor. Mauris pretium velit vitae orci aliquam vehicula.
    Pellentesque sed turpis ac arcu vestibulum fermentum. Duis sit amet posuere purus, ut tempus mauris. Nulla blandit,
    mauris non vehicula varius, augue nunc pulvinar nibh, in tristique arcu augue id turpis. Proin rutrum lobortis leo, ut blandit
    lorem pellentesque at. Pellentesque vitae arcu ante. Donec egestas facilisis urna, in dictum nunc viverra vitae. <br><br>Donec vel
    condimentum dui, suscipit sollicitudin libero. Ut placerat varius lorem, et auctor odio vulputate quis. Sed ut nisl ex. Curabitur
    nisi elit, tincidunt eget ornare eget, molestie non mi. Aliquam sodales, ante sed maximus bibendum, leo nunc facilisis dolor, vel
    tristique libero nulla posuere turpis. Nulla eget porta eros. Donec in iaculis mauris, condimentum sollicitudin arcu. Sed sed
    lectus risus. Pellentesque sagittis rhoncus velit sit amet molestie. Donec ut purus sed nunc sollicitudin cursus. <br><br>Nullam sem massa,
    luctus molestie erat id, elementum porttitor libero.  Donec viverra lacus non justo luctus molestie. Cras non nisl laoreet,
    placerat leo ac, bibendum dui. Vivamus tincidunt enim sed erat fringilla semper eu eu mi. Vestibulum ante ipsum primis in
    faucibus orci luctus et ultrices posuere cubilia Curae; Morbi scelerisque suscipit porta. Nam id orci pretium enim auctor suscipit.
    Sed ullamcorper nibh dolor, ac ornare metus auctor sed. Curabitur id vehicula quam, et tincidunt quam. Aenean vitae dapibus nunc.
    Nullam sollicitudin bibendum enim a ultrices. Praesent sollicitudin urna ante. Nulla facilisi. <br><br>Fusce ac lacus ut nisl suscipit
    tincidunt eget ac nibh.    Pellentesque pellentesque convallis massa ultrices sodales. Aliquam eget turpis mollis, luctus magna et,
    faucibus purus. In nec facilisis risus, eu rhoncus neque. Quisque vestibulum vehicula libero. Nulla tempor justo efficitur, tristique
    diam vel, pellentesque diam. Suspendisse at faucibus nunc. Nam quis dictum augue. Nulla dictum mauris vel turpis semper, id
    accumsan nunc condimentum. Morbi eget felis blandit, venenatis sem non, vulputate est. Ut viverra ut quam a eleifend. Fusce
    rutrum bibendum dui eget dapibus. Curabitur a nisl fringilla, suscipit metus id, auctor nisl. <br><br>Integer gravida in ex eget eleifend.
    Suspendisse feugiat fringilla mi et aliquet. Morbi arcu risus, efficitur eu nunc sit amet, tincidunt commodo leo.Lorem ipsum
    dolor sit amet, consectetur adipiscing elit. Praesent eu sodales arcu. Quisque eleifend, purus in imperdiet molestie,
    lacus leo sodales quam, et aliquam ex justo a tortor. Fusce cursus vel nunc non sodales. Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Nunc eget massa a nisi facilisis vestibulum quis ac diam. Fusce at odio eget sapien ultricies rutrum sit amet sed
    leo.


</p>
</body>

<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="js/elsevier2.js"></script>
<script>
    $(document).foundation();
</script>
</body>
</html>


    