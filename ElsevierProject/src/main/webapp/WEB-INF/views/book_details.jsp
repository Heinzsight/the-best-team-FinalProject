<%@include file="master.jsp" %>

<%!

    Book book;


%>


<%

    book = (Book) request.getAttribute("book");


%>
    <!-- You can now combine a row and column if you just need a 12 column row -->
    <br>
    <div class="row col">
        <nav aria-label="You are here:" role="navigation">
            <ul class="breadcrumbs">

                <li><a href="/">Home</a></li>
                <li>
                    <span class="show-for-sr">Current: </span> Book Details
                </li>
            </ul>
        </nav>
    </div>

    <div class="row">
        <div class="col-md-6">
            <img class="image" src="<%=book.getBookImage()%>"/>
        </div>
        <div class="col-md-6">
            <h1 style="font-size: 36px"><%=book.getTitle() %>
            </h1>
            <h2 style="font-size: 28px">by <%= book.getAuthors().get(0).getAuthorName()%>
            </h2>
<br>
            <label><p style = "margin-bottom: 0px; font-size: 20px" style="">Select format:</p>
                <select name="format">
                    <option value="print">Paperback - $ <%=book.getPrice()%>
                    </option>
                    <option value="eBook">eBook - $ <%=book.getPrice()%>
                    </option>
                </select>
            </label>
            <br>
            <a href="/addToCart?bookId=<%=book.getBookId()%>" class="btn-lg buttonSubmit">ADD TO CART</a>
            <br>
            <br>
            <br>
            <p><strong>ISBN: </strong><%=book.getPaperISBN()%></p>
            <br>
            <p>Overview:</p>

            <p><%=book.getDescription() %>
            </p>
        </div>
    </div>
    <br>
    <br>
    <!-- End Main Content -->
</div>
<%@include file="master-footer.jsp" %>