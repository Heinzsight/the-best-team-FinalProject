<%@include file="master.jsp" %>

<div class="container banner-container">
    <img src="images/banners/Homepage_Banner_NEW.jpg" class="img" style="height: 100%; width:100%;"/>
    <div class="top-right main-banner-label">Making reading as <br> smooth as butter.</div>
    <center><a href="/genres" class="btn btn-primary buttonSubmit top-right main-banner-button">BROWSE</a></center>
</div>
<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="container-fluid front-layout-title">
            <h3 class="pull-left" style="margin-top: 0px">Just In</h3>
            <h4><a href="/just-in" class="pull-right">View All</a></h4>
        </div>
    </div>
    <div class="row">
        <%
            Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
            int i = 0;
            for (Book book : books) {
                if (i == 4) {
                    break;
                }
        %>

        <div class="col-sm-3" style="height: auto;">
            <div class="container-fluid">
                <div class="row">
                    <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="img-responsive"
                                                                             style="width:auto;"
                                                                             src="<%=book.getBookImage()%>"></a>
                </div>
                <div class="row">
                    <h4><a href="/bookDetails?bookId=<%=book.getBookId()%>"><%= book.getTitle()%>
                    </a>
                    </h4>
                    <h4 style="color: #444444;"><%= book.getAuthors().get(0).getAuthorName()%>
                    </h4>
                    <h4 style="color: #444444;">$<%= book.getPrice()%>
                    </h4>
                </div>
            </div>
            <!--  a href="/addToCart?bookId=" class="button expanded">Add to Cart</a>-->
        </div>

        <%
                i++;
            }
        %>

    </div>
    <div class="row">
        <div class="container-fluid front-layout-title">
            <h3 class="pull-left" style="margin-top: 0px">All-time Faves</h3>
            <h4><a href="/all-time-faves" class="pull-right">View All</a></h4>
        </div>
    </div>
    <div class="row">
        <%
            i = 0;
            for (Book book : books) {
                if (i >= 4) {

        %>

        <div class="col-sm-3" style="height: auto;">
            <div class="container-fluid">
                <div class="row">
                    <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="img-responsive"
                                                                             style="width:auto;"
                                                                             src="<%=book.getBookImage()%>"></a>
                </div>
                <div class="row">
                    <h4><a href="/bookDetails?bookId=<%=book.getBookId()%>"><%= book.getTitle()%>
                    </a>
                    </h4>
                    <h4 style="color: #444444;"><%= book.getAuthors().get(0).getAuthorName()%>
                    </h4>
                    <h4 style="color: #444444;">$<%= book.getPrice()%>
                    </h4>
                </div>
            </div>
            <!--  a href="/addToCart?bookId=" class="button expanded">Add to Cart</a>-->
        </div>

        <%
                }
                if (i == 7) {
                    break;
                }
                i++;
            }
        %>
        <!-- End Main Content -->
    </div>
<%@include file="master-footer.jsp" %>