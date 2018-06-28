<%@include file="master.jsp"%>
    <!--Add Banner -->
    <div>
        <img src="images/aboutBanner.jpg" alt="Butter Books logo" style="width:100%; height:100%;"/>
    </div>
    <!-- End Banner -->

    <!-- Main Content -->

    <h1 align="center"><b>The Better Book Mission</b></h1>
    <h2 align="center"><b>Making reading as smooth as butter.</b></h2>
    <h4 align="left" style="margin-left:30%; margin-right:30%">
        <br>
        <p>At Butter Books, we are doing more than just making reading fun. Our mission is to promote more sustainable
        readership through book-sharing. Oftentimes, readers purchase expensive books to never read them again after the
        first time. Butter Books large collection of pre-owned books and book renting service reduces the waste of
        unread books on your shelf. We also make reading more affordable and accessible. If you cant find a book at
        your local library, if you want more time to finish your book without keeping others waiting, if you cant find
        a place to sell or donate your used books, if you are looking for affordable, used books, Butter Books is here
        for you. We strive to make your reading experience as smooth as butter... So you can enjoy the books you love
            without guilt.</p>
    </h4>
    <br>
    <br>
    <br>
    <br>
    <div style="background-color: rgba(174,203,197,0.09)">
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
<%@include file="master-footer.jsp"%>