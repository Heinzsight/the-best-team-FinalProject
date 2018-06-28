<%@include file="master.jsp" %>
<!-- Main Content -->
<div class="container">
    <div class="pageTitle">
        <h1 style="align-content: left; margin-left: 10%; color: #af3d58; font-family: 'Abril Fatface'"><b>Order
            History</b></h1>
    </div> <!-- Page Title -->

</div>
<!-- Container -->

<div class="bookHistoryBox" style="margin-left: 10%; margin-top: 25px; margin-right: 10%">

    <% //Need to write code to fetch order history
        Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
        int i = 0;
        for (Book book : books) {
            if (i >= 4) {
                break;
            } else {
                i++;
            }
    %>

    <div class="row">
        <br>
        <!-- Book Thumbnail -->
        <div class="col-md-2">


            <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="img-responsive"

                                                                     src="<%=book.getBookImage()%>"></a>


        </div>
        <!-- End Book Thumbnail -->

        <!-- Book Title/ Author -->
        <div class="col-md-2">
            <h5><%= book.getTitle()%>
            </h5>
            <%--<p>by <%= book.getAuthors()%>--%>
            </p>
            <%--<%--%>

            <%--//Need to enter code to retrieve author of book--%>

            <%--%>--%>
        </div>

        <!-- End Book Title/ Author -->
        <!-- Book Format and price -->
        <div class="col-md-3">


            <h5><%=book.getFormat()%> - $<%=book.getPrice()%>
            </h5>
        </div>
        <!-- End Book Format and price -->
        <!-- Shipping date -->
        <div class="col-md 3">
            <h5>Shipped on <b>!!!!!INSERT DATE INTO TABLE!!!!!</b></h5>
            <%

                //Write code to pull shipping date from DB

            %>

        </div>
        <!-- End Shipping date -->

    </div>
    <!-- End Row-->


    <% } %>

</div>
<!-- End History Box-->
<hr>
<%@include file="master-footer.jsp" %>