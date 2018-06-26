<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Shopping Cart | Week 3</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/multi_step_form.css">
    <%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

</head>
<body>

<%@page import="com.qa.models.Customer" %>
<%@page import="com.qa.models.Book" %>
<%@page import="java.util.ArrayList" %>
<%

            try{
            Customer c = (Customer) session.getAttribute("logged_in_customer");
            request.setAttribute("logged_in_customer", c);
            System.out.println(c);
            } catch (Exception e) {
            System.out.println(e);
            }
%>


        <div class="container" id="confirm">
        		<h5>Order Confirmation</h5>

        		<%
        		   ArrayList<Book> books = (ArrayList<Book>) session.getAttribute("filtered_books");
        		   String firstName= (String) request.getAttribute("firstName");
        		   String address1= (String) request.getAttribute("address1");
        		   String address2= (String) request.getAttribute("address2");
        		   String city= (String) request.getAttribute("city");
        		   String postcode= (String) request.getAttribute("postcode");
        		   String allTitles="";
        		   Double grandTotal = (Double) session.getAttribute("grand_total");
        		   System.out.println(grandTotal);
                   int i = 0;
                   for (Book book : books) {
                        String newTitle = book.getTitle();
                        if(allTitles == "") {
                            allTitles = allTitles + newTitle;
                        }
                        else {
                        allTitles = allTitles + ", " + newTitle;
                        }
                        i++;
                    }
        		%>
        		    <div>Hi <%=firstName%>,</div>
        			<div>Your order of: <%=allTitles%> for  was successful!</div>
        			<div>The order will be delivered to: <%=address1%> <%=address2%>, <%=city%> <%=postcode%></div>
        			<div>Click here to return to the home page.</div>
        	</div>

</body>
</html>