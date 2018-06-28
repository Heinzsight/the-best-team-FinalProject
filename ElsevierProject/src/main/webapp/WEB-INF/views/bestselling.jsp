<%@include file="master.jsp" %>
<!-- Main Content -->
<div class="container banner-container">
    <img src="images/banners/Bestsellers.jpg" class="img" style="height: 100%; width:100%;"/>
    <div class="centered banner-label">Bestselling</div>
</div>
<div class="container">
    <div class="row">
        <%
            Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
            int i = 0;
            for (Book book : books) {
                if (i >= 8 && i < 12) {

        %>

        <div class="col-sm-3" style="height: auto;">
            <div class="container-fluid">
                <div class="row">
                    <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="img-responsive" style="width:auto;"
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
                i++;
            }
        %>

    </div>
    <!-- End Main Content -->
</div>
<%@include file="master-footer.jsp" %>