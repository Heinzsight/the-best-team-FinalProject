<%@include file="master.jsp" %>
<!-- Main Content -->
<div class="search_result">
    <p><b>Search Result for **Search Input!**</b></p>
    <p>We found **#** for **Search Input**</p>
    <p>Want a book that we don't have? Request it!</p>
</div>
<div class="requestBook">
    <h6>Request a Book</h6>
    <div class="container-fluid">
        <div class="row">
            <form action="../submit" id="formentry" class="form-horizontal" role="form" data-parsley-validate
                  novalidate>
                <div class="container-fluid shadow">
                    <div class="row">
                        <div id="valErr" class="row viewerror clearfix hidden">
                            <div class="alert alert-danger">Oops! Seems there are some errors..</div>
                        </div>
                        <div id="valOk" class="row viewerror clearfix hidden">
                            <div class="alert alert-success">Yay! ..</div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label control-label-left col-sm-3"
                                                   for="field1">Title<span class="req"> *</span></label>
                                            <div class="controls col-sm-9">
                                                <input id="field1" type="text" class="form-control k-textbox"
                                                       data-role="text" required="required"
                                                       data-parsley-errors-container="#errId1"><span id="errId1"
                                                                                                     class="error"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label control-label-left col-sm-3" for="field2">Author<span
                                                    class="req"> *</span></label>
                                            <div class="controls col-sm-9">

                                                <input id="field2" type="text" class="form-control k-textbox"
                                                       data-role="text" required="required"
                                                       data-parsley-errors-container="#errId2"><span id="errId2"
                                                                                                     class="error"></span>
                                            </div>

                                        </div>
                                        <div class="form-group pull-right">


                                            <button id="button4" type="button" class="btn btn-lg">Submit</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </form>
        </div>
    </div>


</div>


<%
    try {
        request.setAttribute("logged_in_customer", c);
        System.out.println(c);
    } catch (Exception e) {
        System.out.println(e);
    }
%>
<div class="container-fluid" style="margin-left: 100px; margin-right: 100px;">

    <div class="jumbotron">
        <img src="images/cart.jpg" alt="Butter Books logo" class="img-thumbnail pull-left" width="150" height="150"
             style="margin-right:150px;"/>
        <h1>3 Books of Your Choice</h1>
        <p>for only $5/mo</p>
    </div>
    <%
        Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
        int i = 0;
        for (Book book : books) {
            if (i == 0) {
    %>
    <div class="row">
        <%


            }
        %>
        <div class="col-sm-3" style="height: auto;">
            <div class="container-fluid">
                <div class="row">
                    <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="img-responsive" style="width:auto;"
                                                                             src="<%=book.getBookImage()%>"></a>
                </div>
                <div class="row">
                    <h5><%= book.getTitle()%>
                    </h5>
                    <p>$<%= book.getPrice()%>
                    </p>
                </div>
                <div class="row">
                    <a href="/bookDetails?bookId=<%=book.getBookId()%>" class="button expanded">View book details</a>
                </div>
            </div>
            <!--  a href="/addToCart?bookId=" class="button expanded">Add to Cart</a>-->
        </div>
        <%
            if (i == 3) {
        %>
    </div>
    <%
                i = 0;
            } else {
                i++;
            }

        } %>
</div>
<hr>

<!-- End Main Content -->

<%@include file="master-footer.jsp"%>