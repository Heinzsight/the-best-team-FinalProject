<!doctype html>
<%@page import="com.qa.models.Customer" %>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>About Us | Butter Books</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/index-style.css">
    <link rel="stylesheet" href="css/wrapper.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
          integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="css/fonts.css">

    <style>
    </style>


</head>

<body>
<%
    try{
    Customer c = (Customer) session.getAttribute("logged_in_customer");
    request.setAttribute("logged_in_customer", c);
    System.out.println(c);
    } catch (Exception e) {
    System.out.println(e);
    }
%>
<div id="wrapper">
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
                        <li class="active"><a href="/">Home</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown"
                               data-delay="0" data-close-others="false">Features <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Just In</a></li>
                                <li><a href="#">All-Time Faves</a></li>
                                <li><a href="#">Bestselling</a></li>
                                <li><a href="#">Genres</a></li>
                            </ul>
                        </li>
                        <li><a href="/about">About</a></li>
                        <li><a href="/about">Contact</a></li>
                        <li><a href="/login"> Register | Login </a></li>
                        <li>
                            <a href="/viewCart"><i class="fas fa-shopping-cart"></i></a>
                            <a href="/viewCart"><i class="fas fa-shopping-basket"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <hr>
    <!-- End Header -->
    <!--Add Banner -->
    <div>
        <img src="images/aboutBanner.jpg" alt="Butter Books logo" class="" width="100%" height="100%"/>
    </div>
    <!-- End Banner -->

    <!-- Main Content -->

    <h1 align="center"><b>The Better Book Mission</b></h1>
    <h2 align="center"><b>Let's read for a better tomorrow</b></h2>
    <h4 align="left" style="margin-left:30%; margin-right:30%">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi condimentum mi est, non facilisis nisi rutrum
        efficitur.
        Nulla facilisi. Duis consectetur, urna bibendum rhoncus molestie, diam arcu laoreet magna, non egestas risus sem
        sit
        amet risus.
        Praesent eu blandit urna. Vestibulum a orci quis dolor feugiat auctor. Mauris pretium velit vitae orci aliquam
        vehicula.
        Pellentesque sed turpis ac arcu vestibulum fermentum. Duis sit amet posuere purus, ut tempus mauris. Nulla
        blandit,
        mauris non vehicula varius, augue nunc pulvinar nibh, in tristique arcu augue id turpis. Proin rutrum lobortis
        leo,
        ut blandit
        lorem pellentesque at. Pellentesque vitae arcu ante. Donec egestas facilisis urna, in dictum nunc viverra vitae.
        <br><br>Donec vel
        condimentum dui, suscipit sollicitudin libero. Ut placerat varius lorem, et auctor odio vulputate quis. Sed ut
        nisl
        ex. Curabitur
        nisi elit, tincidunt eget ornare eget, molestie non mi. Aliquam sodales, ante sed maximus bibendum, leo nunc
        facilisis dolor, vel
        tristique libero nulla posuere turpis. Nulla eget porta eros. Donec in iaculis mauris, condimentum sollicitudin
        arcu. Sed sed
        lectus risus. Pellentesque sagittis rhoncus velit sit amet molestie. Donec ut purus sed nunc sollicitudin
        cursus.
        <br><br>Nullam sem massa,
        luctus molestie erat id, elementum porttitor libero. Donec viverra lacus non justo luctus molestie. Cras non
        nisl
        laoreet,
        placerat leo ac, bibendum dui. Vivamus tincidunt enim sed erat fringilla semper eu eu mi. Vestibulum ante ipsum
        primis in
        faucibus orci luctus et ultrices posuere cubilia Curae; Morbi scelerisque suscipit porta. Nam id orci pretium
        enim
        auctor suscipit.
        Sed ullamcorper nibh dolor, ac ornare metus auctor sed. Curabitur id vehicula quam, et tincidunt quam. Aenean
        vitae
        dapibus nunc.
        Nullam sollicitudin bibendum enim a ultrices. Praesent sollicitudin urna ante. Nulla facilisi. <br><br>Fusce ac
        lacus ut nisl suscipit
        tincidunt eget ac nibh. Pellentesque pellentesque convallis massa ultrices sodales. Aliquam eget turpis mollis,
        luctus magna et,
        faucibus purus. In nec facilisis risus, eu rhoncus neque. Quisque vestibulum vehicula libero. Nulla tempor justo
        efficitur, tristique
        diam vel, pellentesque diam. Suspendisse at faucibus nunc. Nam quis dictum augue. Nulla dictum mauris vel turpis
        semper, id
        accumsan nunc condimentum. Morbi eget felis blandit, venenatis sem non, vulputate est. Ut viverra ut quam a
        eleifend. Fusce
        rutrum bibendum dui eget dapibus. Curabitur a nisl fringilla, suscipit metus id, auctor nisl. <br><br>Integer
        gravida in ex eget eleifend.
        Suspendisse feugiat fringilla mi et aliquet. Morbi arcu risus, efficitur eu nunc sit amet, tincidunt commodo
        leo.Lorem ipsum
        dolor sit amet, consectetur adipiscing elit. Praesent eu sodales arcu. Quisque eleifend, purus in imperdiet
        molestie,
        lacus leo sodales quam, et aliquam ex justo a tortor. Fusce cursus vel nunc non sodales. Lorem ipsum dolor sit
        amet,
        consectetur
        adipiscing elit. Nunc eget massa a nisi facilisis vestibulum quis ac diam. Fusce at odio eget sapien ultricies
        rutrum sit amet sed
        leo.

    </h4>
    <br>
    <br>
    <br>
    <br>
    <div>
        <h6 align="center">Contact Us</h6>
        <div style="margin-left: 30%; margin-right: 30%">
            <!-- Special version of Bootstrap that only affects content wrapped in .bootstrap-iso -->
            <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso18.css"/>

            <!-- Inline CSS based on choices in "Settings" tab -->
            <style>.bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p, .bootstrap-iso form {
                font-family: Arial, Helvetica, sans-serif;
                color: black
            }

            .bootstrap-iso form button, .bootstrap-iso form button:hover {
                color: white !important;
            }

            .asteriskField {
                color: red;
            }</style>

            <!-- HTML Form (wrapped in a .bootstrap-iso div) -->

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <form method="post">
                            <div class="form-group ">
                                <label class="control-label " for="name">
                                    Name
                                </label>
                                <input class="form-control" id="name" name="name" type="text"/>
                            </div>
                            <div class="form-group ">
                                <label class="control-label requiredField" for="email">
                                    Email
                                    <span class="asteriskField">
        *
       </span>
                                </label>
                                <input class="form-control" id="email" name="email" type="text"/>
                            </div>
                            <div class="form-group ">
                                <label class="control-label " for="subject1">
                                    Subject
                                </label>
                                <input class="form-control" id="subject1" name="subject1" type="text"/>
                            </div>
                            <div class="form-group ">
                                <label class="control-label requiredField" for="message">
                                    Message
                                    <span class="asteriskField">
        *
       </span>
                                </label>
                                <textarea class="form-control" cols="40" id="message" name="message"
                                          rows="10"></textarea>
                            </div>
                            <div class="form-group" align="center">
                                <div>
                                    <button type="button" class="btn btn-outline-dark">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>


        </div>
    </div>

    <!-- End Main Content -->

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
                            <li><a href="/about">About</a></li>
                            <li><a href="/about">Contact</a></li>
                            <li><a href="#">FAQs</a></li>
                            <li><a href="#">Order</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="widget">
                        <ul class="social-network">
                            <li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" data-placement="top" title="Google plus"><i
                                    class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>
<!-- End Top Bar -->
<br>

<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="js/elsevier.js"></script>
<script>
    $(document).foundation();
</script>
</body>
</html>



