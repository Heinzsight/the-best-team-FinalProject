<%@include file="master.jsp" %>
<div class="container-fluid" style="margin-left: 100px; margin-right: 100px;">
    <p style="font-size:20px">Search Results for "${param.searchTerm}"</p>
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
            <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="img-responsive" style="width:auto;"
                                                                     src="<%=book.getBookImage()%>"></a>
            <h4><a href="/bookDetails?bookId=<%=book.getBookId()%>"><%= book.getTitle()%>
            </a>
            </h4>
            <h4 style="color: #444444;"><%= book.getAuthors().get(0).getAuthorName()%>
            </h4>
            <h4 style="color: #444444;">$<%= book.getPrice()%>
            </h4>
            <a href="/addToCart?bookId=<%=book.getBookId()%>" class="btn buttonOption">Add to Cart</a>
            <br>
            <br>
        </div>
        <%
            if (i == 3) {
        %>
        <hr>
    </div>
    <%
                i = 0;
            } else {
                i++;
            }

        } %>
</div>
<br>
<hr>
<div class="container">
    <div class="row">
        <div class="col">

            <p>Want a book we don't have? Feel free to leave a request, and we'll see what we can do!</p>
            <h1>Request a Book</h1>
            <form action="submitRequest" method="post" class="form">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="author">Author Name*</label>
                        <input class='form-control' style="border-radius: 0px" type="text"
                               placeholder="Author Name*" name="author" id="author"
                               required/>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="title">Title*</label>
                        <input class='form-control' style="border-radius: 0px" type="text"
                               placeholder="Enter Title*" name="title" id="title"
                               required/>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="isbn">ISBN</label>
                        <input class='form-control' style="border-radius: 0px" type="text" placeholder="(Optional) ISBN"
                               name="ISBN" id="ISBN"/>
                    </div>
                </div>
                <input type="submit" class="pull-right btn btn-primary buttonSubmit" style="margin-right: 16px"
                       value="Submit">
                <br>
            </form>
            <p style="margin-left:17px">* indicates required fields, though all fields help us!</p>
        </div>
    </div>
</div>
<hr>
<!-- End Main Content -->
<%@include file="master-footer.jsp" %>