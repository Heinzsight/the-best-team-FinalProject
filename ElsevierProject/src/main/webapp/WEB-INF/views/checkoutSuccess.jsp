<%@include file="master.jsp" %>
<%@ page import="java.util.ArrayList" %>
<head>
<link rel="stylesheet" href="css/multi_step_form.css">
</head>
<!-- Main Content -->
<div class="container" id="confirm">
    <h5 id="confirm_header">Order Confirmation</h5>

    <%
        ArrayList<Book> books = (ArrayList<Book>) session.getAttribute("filtered_books");
        String firstName = (String) request.getAttribute("firstName");
        String address1 = (String) request.getAttribute("address1");
        String address2 = (String) request.getAttribute("address2");
        String city = (String) request.getAttribute("city");
        String postcode = (String) request.getAttribute("postcode");
        String allTitles = "";
        String orderTotal = (String) request.getAttribute("orderTotal");
        System.out.println("Total: " + orderTotal);
        int i = 0;
        for (Book book : books) {
            String newTitle = book.getTitle();
            if (allTitles == "") {
                allTitles = allTitles + newTitle;
            } else {
                allTitles = allTitles + ", " + newTitle;
            }
            i++;
        }
    %>
    <div>Hi <%=firstName%>,</div>
    <div>Your order of: <%=allTitles%> for <%=orderTotal%> was successful!</div>
    <div>The order will be delivered to: <%=address1%> <%=address2%>, <%=city%> <%=postcode%>
    </div>
    <span> Click </span> <a href="/"> Here </a> <span> to return to the homepage. </span>
</div>

<!-- End Main Content -->
</div>
<%@include file="master-footer.jsp" %>