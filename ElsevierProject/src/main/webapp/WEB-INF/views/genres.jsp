<%@include file="master.jsp"%>
    <!-- Main Content -->
    <div class="container banner-container">
        <img src="images/banners/Genres.jpg" class="img" style="height: 100%; width:100%;"/>
        <div class="centered banner-label">Browse All</div>
    </div>
    <div class="container">
            <%
                Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
                int i = 0;
                for (Book book : books) {
                    if (i == 0){
                        %>
                            <div class="row">
                        <%
                    }

            %>

            <div class="col-sm-3" style="height: auto;">
                <div class="container-fluid">
                    <div class="row">
                        <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="img-responsive" style="width:auto;" src="<%=book.getBookImage()%>"></a>
                    </div>
                    <div class="row">
                        <h4><a href="/bookDetails?bookId=<%=book.getBookId()%>"><%= book.getTitle()%></a>
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
                    if (i == 3){
                        %>
                            </div>
                        <%
                        i = 0;
                    } else {
                        i++;
                    }
                }
            %>
    <%--get an even number of books in the DB--%>
    </div>
    <!-- End Main Content -->
<%@include file="master-footer.jsp"%>