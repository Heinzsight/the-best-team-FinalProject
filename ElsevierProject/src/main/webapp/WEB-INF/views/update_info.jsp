<!doctype html>
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
    <link rel="stylesheet" href="css/wrapper.css"/>
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="css/index-style.css"/>
</head>

<body>
<div>
    <!-- Navigation -->
    <header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <i class="fas fa-bars"></i>
                    </button>
                    <img src="images/cart.jpg" alt="Butter Books logo" class="img-thumbnail pull-left" width="50"
                         height="50"/>
                    <a class="navbar-brand" href="">Butter Books</a>
                </div>
                <form style="max-width:500px;">
                    <div class="input-group">
                        <input type="text" class="form-control input-sm" placeholder="Search">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit">
                                <i class="glyphicon glyphicon-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.html">Home</a></li>
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
                        <li><a href="/viewCart"><i class="fas fa-shopping-cart"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <hr>
    <!-- End Nav Bar / Header -->
    <div class="container">
        <div class="pageTitle">
            <h1 style="align-content: left; margin-left: 10%; color: #af3d58; font-family: 'Abril Fatface'"><b>Edit
                Account Details</b></h1>
        </div> <!-- Page Title -->

    </div>
    <!-- Container -->
    <!-- Main Content -->
    <body>

    <div class="container-fluid">
        <div class="row">

            <form action="../submit" id="formentry" class="form-horizontal" role="form" data-parsley-validate
                  novalidate>
                <div class="container-fluid shadow">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="row">
                            <div id="valErr" class="row viewerror clearfix hidden">
                                <div class="alert alert-danger">Oops! Seems there are some errors..</div>
                            </div>
                            <div id="valOk" class="row viewerror clearfix hidden">
                                <div class="alert alert-success">Yay! ..</div>
                            </div>


                            <div class="row" style="text-align: left">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label; control-label-left col-sm-3" for="field1">First
                                            Name</label>
                                        <div class="controls col-sm-9">

                                            <input id="field1" type="text" class="form-control k-textbox"
                                                   data-role="text" data-parsley-errors-container="#errId1"><span
                                                id="errId1" class="error"></span></div>

                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label control-label-left col-sm-3" for="field2">Last
                                            Name</label>
                                        <div class="controls col-sm-9">

                                            <input id="field2" type="text" class="form-control k-textbox"
                                                   data-role="text" data-parsley-errors-container="#errId2"><span
                                                id="errId2" class="error"></span></div>

                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="display: block;">
                                <label class="control-label control-label-left col-sm-3" style="text-align: left"
                                       for="field3">E-mail</label>
                                <div class="controls col-sm-9">

                                    <input id="field3" type="text" class="form-control k-textbox" data-role="text"
                                           data-parsley-errors-container="#errId3"><span id="errId3"
                                                                                         class="error"></span></div>

                            </div>
                            <div class="form-group" style="display: block;">
                                <label class="control-label control-label-left col-sm-3" style="text-align: left"
                                       for="field4">Old
                                    Password</label>
                                <div class="controls col-sm-9">

                                    <input id="field4" type="text" class="form-control k-textbox" data-role="text"
                                           data-parsley-errors-container="#errId4"><span id="errId4"
                                                                                         class="error"></span></div>

                            </div>
                            <div class="form-group" style="display: block;">
                                <label class="control-label control-label-left col-sm-3" style="text-align: left"
                                       for="field5">New
                                    Password</label>
                                <div class="controls col-sm-9">

                                    <input id="field5" type="text" class="form-control k-textbox" data-role="text"
                                           data-parsley-errors-container="#errId5"><span id="errId5"
                                                                                         class="error"></span></div>

                            </div>
                            <div class="form-group" style="display: block;">
                                <label class="control-label control-label-left col-sm-3" style="text-align: left"
                                       for="field6">Confirm New
                                    Password</label>
                                <div class="controls col-sm-9">

                                    <input id="field6" type="text" class="form-control k-textbox" data-role="text"
                                           data-parsley-errors-container="#errId6"><span id="errId6"
                                                                                         class="error"></span></div>

                            </div>
                            <div class="form-group" style="display: block;">
                                <label class="control-label control-label-left col-sm-3" style="text-align: left"
                                       for="field7">Address Line
                                    1</label>
                                <div class="controls col-sm-9">

                                    <input id="field7" type="text" class="form-control k-textbox" data-role="text"
                                           data-parsley-errors-container="#errId7"><span id="errId7"
                                                                                         class="error"></span></div>

                            </div>
                            <div class="form-group" style="display: block; alignment: left">
                                <label class="control-label control-label-left col-md-3" style="text-align: left"
                                       for="field8">Address Line
                                    2</label>
                                <div class="controls col-sm-9">

                                    <input id="field8" type="text" class="form-control k-textbox" data-role="text"
                                           placeholder="Apt, Suite, Floor, Room, PO Box"
                                           data-parsley-errors-container="#errId8"><span id="errId8"
                                                                                         class="error"></span></div>

                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group" style="display: block;">
                                        <label class="control-label control-label-left col-sm-3"
                                               for="field9">City</label>
                                        <div class="controls col-sm-9">

                                            <input id="field9" type="text" class="form-control k-textbox"
                                                   data-role="text" data-parsley-errors-container="#errId9"><span
                                                id="errId9" class="error"></span></div>

                                    </div>
                                    <div class="form-group">
                                        <label class="control-label control-label-left col-sm-3" for="field16">Postal
                                            Code</label>
                                        <div class="controls col-sm-9">

                                            <input id="field16" type="text" class="form-control k-textbox"
                                                   data-role="text" data-parsley-errors-container="#errId10"><span
                                                id="errId10" class="error"></span></div>

                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label control-label-left col-sm-3"
                                               for="field10">State</label>
                                        <div class="controls col-sm-9">

                                            <select id="field10" class="form-control" data-role="select"
                                                    selected="selected" name=""
                                                    data-parsley-errors-container="#errId11">


                                                <option value="Select from list">Select from list</option>
                                                <option value="Alabama">Alabama</option>
                                                <option value="Alaska">Alaska</option>
                                                <option value="Arizona">Arizona</option>
                                                <option value="Arkansas">Arkansas</option>
                                                <option value="California">California</option>
                                                <option value="Colorado">Colorado</option>
                                                <option value="Connecticut">Connecticut</option>
                                                <option value="Delaware">Delaware</option>
                                                <option value="Florida">Florida</option>
                                                <option value="Georgia">Georgia</option>
                                                <option value="Hawaii">Hawaii</option>
                                                <option value="Idaho">Idaho</option>
                                                <option value="Illinois">Illinois</option>
                                                <option value="Indiana">Indiana</option>
                                                <option value="Iowa">Iowa</option>
                                                <option value="Kansas">Kansas</option>
                                                <option value="Kentucky">Kentucky</option>
                                                <option value="Louisiana">Louisiana</option>
                                                <option value="Maine">Maine</option>
                                                <option value="Maryland">Maryland</option>
                                                <option value="Massachusetts">Massachusetts</option>
                                                <option value="Michigan">Michigan</option>
                                                <option value="Minnesota">Minnesota</option>
                                                <option value="Mississippi">Mississippi</option>
                                                <option value="Missouri">Missouri</option>
                                                <option value="Montana">Montana</option>
                                                <option value="Nebraska">Nebraska</option>
                                                <option value="Nevada">Nevada</option>
                                                <option value="New Hampshire">New Hampshire</option>
                                                <option value="New Jersey">New Jersey</option>
                                                <option value="New Mexico">New Mexico</option>
                                                <option value="New York">New York</option>
                                                <option value="North Carolina">North Carolina</option>
                                                <option value="North Dakota">North Dakota</option>
                                                <option value="Ohio">Ohio</option>
                                                <option value="Oklahoma">Oklahoma</option>
                                                <option value="Oregon">Oregon</option>
                                                <option value="Pennsylvania">Pennsylvania</option>
                                                <option value="Rhode Island">Rhode Island</option>
                                                <option value="South Carolina">South Carolina</option>
                                                <option value="South Dakota">South Dakota</option>
                                                <option value="Tennessee">Tennessee</option>
                                                <option value="Texas">Texas</option>
                                                <option value="Utah">Utah</option>
                                                <option value="Vermont">Vermont</option>
                                                <option value="Virginia">Virginia</option>
                                                <option value="Washington">Washington</option>
                                                <option value="Washington D.C">Washington D.C</option>
                                                <option value="West Virginia">West Virginia</option>
                                                <option value="Wisconsin">Wisconsin</option>
                                                <option value="Wyoming">Wyoming</option>
                                            </select><span id="errId11" class="error"></span></div>

                                    </div>
                                    <div class="form-group">
                                        <label class="control-label control-label-left col-sm-3"
                                               for="field17">Country</label>
                                        <div class="controls col-sm-9">

                                            <select id="field17" class="form-control" data-role="select"
                                                    selected="selected" data-parsley-errors-container="#errId12">


                                                <option value="Select from list">Select from list</option>
                                                <option value="USA">USA</option>
                                                <option value="Canada">Canada</option>
                                            </select><span id="errId12" class="error"></span></div>

                                    </div>
                                    <div class="form-group">


                                        <button id="button24" type="button" class="btn btn-primary btn-lg"
                                                style="background-color: #a23452; border-color: #a23452">Submit
                                        </button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="http://cdn.kendostatic.com/2014.1.318/js/jquery.min.js"></script>
    <script src="http://protostrap.com/Assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="http://wenzhixin.net.cn/p/bootstrap-table/src/bootstrap-table.js" type="text/javascript"></script>

    <script src="http://protostrap.com/Assets/inputmask/js/jquery.inputmask.js" type="text/javascript"></script>
    <script src="http://cdn.kendostatic.com/2014.1.318/js/kendo.all.min.js"></script>
    <script src="http://protostrap.com/Assets/parsely/parsley.extend.js" type="text/javascript"></script>
    <script src="http://protostrap.com/Assets/parsely/2.0/parsley.js" type="text/javascript"></script>
    <script src="http://protostrap.com/Assets/download.js" type="text/javascript"></script>
    <script src="http://protostrap.com/Assets/protostrap.js" type="text/javascript"></script>

    </body>


    <!-- End Main Content -->

    <footer style="background-color: #af3d58">
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
                            <li><a href="/order_history">Order</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="widget">
                        <ul class="social-network">
                            <li><a href="#" data-placement="top" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                            </li>
                            <li><a href="#" data-placement="top" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#" data-placement="top" title="Instagram"><i class="fab fa-instagram"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>


<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="js/elsevier.js"></script>
<script>
    $(document).foundation();
</script>
</body>
</html>
