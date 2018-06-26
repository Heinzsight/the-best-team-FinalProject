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
<%@page import="java.util.Map" %>
<%@page import="java.util.ArrayList" %>
    <%
                Customer c = null;
                try{
                c = (Customer) session.getAttribute("logged_in_customer");
                ArrayList<Book> books = (ArrayList<Book>) session.getAttribute("filtered_books");
                request.setAttribute("logged_in_customer", c);
                request.setAttribute("filtered_books", books);
                System.out.println("Books: "+books);

                } catch (Exception e) {
                System.out.println(e);
                }

    %>
<form id="regForm" action="/checkoutProcess" method="post">

    <%

        double orderTotal = (Double) request.getAttribute("order_total");
        double shipping = (Double) 0.00;
        double tax = (Double) orderTotal*.08;
        double grandTotal = (Double) orderTotal+shipping+tax;
        System.out.println("Total: "+ grandTotal);
        request.setAttribute("grand_total", grandTotal);

    %>

<div id="orderTotal" style="display: none;"><%=orderTotal%></div>
<div id="orderTax" style="display: none;"><%=tax%></div>

    <br>
    <!-- You can now combine a row and column if you just need a 12 column row -->
    <div class="row columns">
        <nav aria-label="You are here:" role="navigation">
            <ul class="breadcrumbs">

                <li><a href="/">Home</a></li>
                <li>
                    <span class="show-for-sr">Current: </span> Cart Details
                </li>
            </ul>
        </nav>
    </div>

    <div class="container" >



        <div class="row" >
            <div class="col-lg-12">
                <div style="text-align:left;margin-top:40px;">
                  <span class="step">01 Account Info</span>
                  <span class="step">02 Shipping Info</span>
                  <span class="step">03 Payment Selection</span>
                </div>



            <div class="tab" >
               <h5 id="cust_info_header"> Customer Information </h5>

                           <div class="col-md-4">
                               <%
                               String fname = "";
                               if(c != null)
                               {
                               fname = c.getFirstName();

                               }
                               %>
                               <div class="col">
                                   <label> First name </label>
                                   <input type="text" name="firstName" id="firstName" size="30" value=<%=fname %> required/>
                               </div>

                           <%
                               String lname = "";
                               if(c != null)
                               {
                               lname = c.getLastName();

                               }
                           %>

                               <div class="col">
                                   <label> Address </label>
                                   <input type="text" name="addressLine1" id="addressLine1" size="30" value=<%= lname %> required/>
                               </div>

                               <div class="col">
                                    <label> Country</label>
                                    <select required name="Country" value="selected">
                                    	<option selected="true" disabled hidden value="selected" >Select your Country</option>
               					    <option value="USA">USA</option>
               					    <option value="Mexico">Mexico</option>
               					    <option value="Canada">Canada</option>
               					    <option value="U.K.">United Kingdom</option>
               					  </select>
                               </div>

                               <div class="col">
                                   <label> Postal code </label>
                                   <input type="number" name="postcode" id="postcode" size="30" required/>
                               </div>

                               <div class="col">
                                   <label> Email </label>
                                   <input type="email" name="email" id="email" size="30" required/>
                               </div>
                           </div>
                           <div class="col-md-4">
                               <div class="col">
                                    <label> Last name </label>
                                    <input type="text" name="lastName" id="lastName" size="30" required/>
                               </div>

                               <div class="col">
                                    <label> Address 2 </label>
                                    <input type="text" name="addressLine2" id="addressLine2" size="30" required/>
                               </div>

                               <div class="col">
                                   <label> City </label>
                                   <input type="text" name="city" id="city" size="30" required/>
                               </div>

                               <div class="col">
                                   <label> State/Province </label>
                                   <input type="text" name="state" id="state" size="30" required/>
                               </div>

                               <div class="col">
                                   <label> Phone </label>
                                   <input type="tel" name="phone" id="phone" size="30" required/>
                               </div>


                           </div>
                </div>



                <div class="tab" >


                <h5> Shipping Information </h5>
                		<div class="row">
                			<div class="col-lg-4" id="ship_info">
                				<div class="col-lg-8" id="address">
                					<div id="fullName">Name</div>
                					<div id="fullAddress">Address</div>
                					<div id="city">City</div>
                					<div id="zip">Area Code</div>
                					<div id="tel">Tel: Telephone</div>
                					<br>
                					<a id = "link_address" href="#">Edit Address</a>
                					<span class="dot"></span>
                					<a id = "link_address" href="#">Add New</a>
                				</div>
                			</div>
                		</div>
                		<br>
                	<h5> Shipping Method </h5>

                	<div class="row">

                				<div class="col-md-3" id="ship_info">
                					<div class="form-check form-check-inline">
                					  <input class="form-check-input" type="radio" name="shippingRadio" id="inlineRadioShipping1" onclick="radio1();" value="0" required>
                					  <label class="form-check-label" for="inlineRadioShipping1">Standard Delivery: Free</label>
                					  <p id="ship_method">Estimated 14-20 Day Shipping (Duties and taxes may be due upon delivery)</p>
                					</div>
                				</div>
                				<div class="col-md-3" id="ship_info">
                					<div class="form-check form-check-inline">
                					  <input class="form-check-input" type="radio" name="shippingRadio" id="inlineRadioShipping2" onclick="radio2();" value="1" required>
                					  <label class="form-check-label" for="inlineRadioShipping2">Fast Delivery: $ 8.00</label>
                					  <p id="ship_method">Estimated 2-5 Days Shipping (Duties and taxes may be due upon delivery)</p>
                					</div>
                				</div>



                		</div>


                </div>

                <div class="tab" ><tags:payment_selection/></div>
                <div class="col-sm-4" id="sumUp">
                            <div class="col-sm-12">
                						<h4>Order Summary</h4>
                						<hr>
                                            <div class="row">

                                                <div class="col-sm">
                                                    <%
                                                        ArrayList<Book> books = (ArrayList<Book>) session.getAttribute("filtered_books");
                                                        Map<Integer, Integer> bookCounts = (Map<Integer, Integer>) session.getAttribute("book_counts");
                                                        int i = 0;
                                                        for (Book book : books) {
                                                            String title = book.getTitle();
                                                            String format = book.getFormat();
                                                            String image = book.getBookImage();
                                                            int quantity = bookCounts.get(book.getBookId());
                                                            double price = book.getPrice();
                                                            double totalPrice = book.getPrice() * quantity;

                                                    %>
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <img class="thumbnail" src="<%=image%>"/>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <span><%=title%></span>
                                                            <span>by Author</span>
                                                            <span><%=format%>, Qty <%=quantity%></span>
                                                            <span>$<%=totalPrice%></span>
                                                        </div>
                                                    </div>
                                                    <%
                                                        i++;
                                                        }
                                                    %>

                                                </div>

                                            </div>
                							<hr>
                							<div class="row">
                                                <div class="small-3 columns">
                                                    <label for="middle-label" class="middle">Subtotal</label>
                                                </div>
                                                <div class="small-3 columns">
                                                    <label for="middle-label" class="middle"><%=orderTotal %></label>
                                                </div>

                                            </div>

                							<div class="row">
                                                <div class="small-3 columns">
                                                    <label for="middle-label" class="middle">Shipping</label>
                                                </div>
                                                <div class="small-3 columns">
                                                    <label for="middle-label" class="middle" id="shippingDiv">0</label>
                                                </div>

                                            </div>

                                            <div class="row">
                                                <div class="small-3 columns">
                                                    <label for="middle-label" class="middle">Tax</label>
                                                </div>
                                                <div class="small-3 columns">
                                                    <label for="middle-label" class="middle"><%=tax %></label>
                                                </div>

                                            </div>
                							<hr>
                                            <div class="row">
                                                <div class="small-3 columns">
                                                    <label for="middle-label" class="middle">Total </label>
                                                </div>
                                                <div class="small-3 columns">

                                                    <label for="middle-label" class="middle" id="order_total_label">Calculating...</label>
                                                </div>

                                            </div>

                            </div>

                        </div>

            </div>

            <div class="col-sm-4">
                <div style="overflow:auto;">
                    <div style="float:center;">
                        <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
                        <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>




    </div>

    </div>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script src="js/update_cart.js"></script>
    <script>
        total = Number(document.getElementById("orderTotal").innerHTML);
        tax = Number(document.getElementById("orderTax").innerHTML);
        //var both = + total + tax;
        console.log("total: " + total);
        console.log("tax: " + tax);
        //console.log("both: " both);
        currentTab = 0; // Current tab is set to be the first tab (0)
        showTab(currentTab); // Display the current tab

        function showTab(n) {

          // This function will display the specified tab of the form ...
          var x = document.getElementsByClassName("tab");
          x[n].style.display = "block";
          // ... and fix the Previous/Next buttons:
          if (n == 0) {
            document.getElementById("prevBtn").innerHTML = "Back to Cart";
          } else {
            document.getElementById("prevBtn").innerHTML = "Previous";
            document.getElementById("prevBtn").style.display = "inline";
          }
          if (n == (x.length - 1)) {
            document.getElementById("nextBtn").innerHTML = "Submit";
            document.getElementById("nextBtn").type = "submit";
          } else {
            document.getElementById("nextBtn").innerHTML = "Next";
          }
          // ... and run a function that displays the correct step indicator:
          fixStepIndicator(n)
        }

        function nextPrev(n) {
        if ((document.getElementById("prevBtn").innerHTML == "Back to Cart")&&(n == -1)) {
            window.location.href='/viewCart';
        }
        console.log(currentTab);
          // This function will figure out which tab to display
          var x = document.getElementsByClassName("tab");
          var address1 = document.getElementById('addressLine1').value;
          var address2 = document.getElementById('addressLine2').value;
          var firstName = document.getElementById('firstName').value;
          var lastName = document.getElementById('lastName').value;
          var city = document.getElementById('city').value;
          var zip = document.getElementById('postcode').value;
          var phone = document.getElementById('phone').value;
          var shipping1 = document.getElementById('inlineRadioShipping1').value;
          var shipping2 = document.getElementById('inlineRadioShipping2').value;
          document.getElementById('fullName').innerHTML = firstName + " " + lastName;
          document.getElementById('fullAddress').innerHTML = address1 + " " + address2;
          document.getElementById('city').innerHTML = city;
          document.getElementById('zip').innerHTML = zip;
          document.getElementById('tel').innerHTML = phone;

          // Exit the function if any field in the current tab is invalid:
          if (n == 1 && !validateForm()) return false;
          // Hide the current tab:
          x[currentTab].style.display = "none";
          // Increase or decrease the current tab by 1:
          currentTab = currentTab + n;
          // if you have reached the end of the form... :
          console.log("length: " + x.length);
          if (currentTab >= x.length) {
            //...the form gets submitted:
            document.getElementById("regForm").submit();
            return false;
          }
          // Otherwise, display the correct tab:
          showTab(currentTab);
        }

        function validateForm() {
          // This function deals with validation of the form fields
          var x, y, i, valid = true, radioChecked = false, radioExists = false, isCreditCard = true;
          x = document.getElementsByClassName("tab");
          y = x[currentTab].getElementsByTagName("input");
          // A loop that checks every input field in the current tab:
          for (i = 0; i < y.length; i++) {
            // If a field is empty...
            if (y[i].type == "radio") {
              radioExists = true;
              if(y[i].checked)
              {
                radioChecked = true;
              }
              if((y[i].id == "inlineRadio2")&&(radioChecked == true))
              {
                isCreditCard = false;
              }
            }
            if ((y[i].value == "")) {
              // add an "invalid" class to the field:
              y[i].className += " invalid";
              // and set the current valid status to false:
              valid = false;
            }

          }
          if ((radioExists == true)&&(radioChecked == false))
          {
            // and set the current valid status to false:
            valid = false;
          }
          // If the valid status is true, mark the step as finished and valid:
          if (valid) {
            document.getElementsByClassName("step")[currentTab].className += " finish";
          }
          return valid; // return the valid status
        }

        function fixStepIndicator(n) {
          // This function removes the "active" class of all steps...
          var i, x = document.getElementsByClassName("step");
          for (i = 0; i < x.length; i++) {
            x[i].className = x[i].className.replace(" active", "");
          }
          //... and adds the "active" class to the current step:
          x[n].className += " active";
        }

        function radio1() {
            console.log("here");
            document.getElementById('shippingDiv').innerHTML = "0.00";
            $("#required_later").prop("required", false);
            $("#required_later").prop("disabled", true);
        }
        function radio2() {
            console.log("here2");
            document.getElementById('shippingDiv').innerHTML = "8.00";
            $("#required_later").prop("required", true);
            $("#required_later").prop("disabled", false);
            $("#required_later").focus();
        }
    </script>
    <script src="js/validations.js"></script>
    <script src="js/paging.js"></script>
    <script>
        $(document).foundation();
    </script>

</form>
</body>
</html>


    