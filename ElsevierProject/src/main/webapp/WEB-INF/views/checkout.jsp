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
    <%
                Customer c = null;
                try{
                c = (Customer) session.getAttribute("logged_in_customer");
                request.setAttribute("logged_in_customer", c);
                System.out.println(c);

                } catch (Exception e) {
                System.out.println(e);
                }
                if(c != null)
                {
                System.out.println(c.getFirstName());
                }
    %>
<form id="regForm" action="/checkoutProcess" method="post">

    <%

        double orderTotal = (Double) request.getAttribute("order_total");
        double shipping = (Double) 0.00;
        double tax = (Double) orderTotal*.08;
        double grandTotal = (Double) orderTotal+shipping+tax;

    %>



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
            <div class="col-lg-8">
                <div style="text-align:left;margin-top:40px;">
                  <span class="step">01 Account Info</span>
                  <span class="step">02 Shipping Info</span>
                  <span class="step">03 Payment Selection</span>
                </div>

                <div class="tab" ><tags:customer_info/></div>
                <div class="tab" ><tags:shipping_info/></div>
                <div class="tab" ><tags:payment_selection/></div>
                <div class="column" id="sumUp">
                            <div class="col-lg-4">
                						<h4>Order Summary</h4>
                						<hr>
                                            <div class="row">

                                                <div class="col">

                                                    Test
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
                                                    <label for="middle-label" class="middle"><%= shipping %></label>
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

                                                    <label for="middle-label" class="middle" id="order_total_label"><%=grandTotal%></label>
                                                </div>

                                            </div>

                            </div>

                        </div>

            </div>
            <div class="col-md-4">
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
        currentTab = 0; // Current tab is set to be the first tab (0)
        showTab(currentTab); // Display the current tab

        function showTab(n) {

          // This function will display the specified tab of the form ...
          var x = document.getElementsByClassName("tab");
          x[n].style.display = "block";
          // ... and fix the Previous/Next buttons:
          if (n == 0) {
            document.getElementById("prevBtn").style.display = "none";
          } else {
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
          console.log(shipping1);
          console.log(shipping2);
          // Exit the function if any field in the current tab is invalid:
          if (n == 1 && !validateForm()) return false;
          // Hide the current tab:
          x[currentTab].style.display = "none";
          // Increase or decrease the current tab by 1:
          currentTab = currentTab + n;
          // if you have reached the end of the form... :
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
          var x, y, i, valid = true;
          x = document.getElementsByClassName("tab");
          y = x[currentTab].getElementsByTagName("input");
          // A loop that checks every input field in the current tab:
          for (i = 0; i < y.length; i++) {
            // If a field is empty...
            if ((y[i].value == "")&&(y[i].id !== "cardNum")&&(y[i].id !== "cardName")&&(y[i].id !== "expDate")&&(y[i].id !== "cvvCode")) {
              // add an "invalid" class to the field:
              y[i].className += " invalid";
              // and set the current valid status to false:
              valid = false;
            }
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
    </script>
    <script src="js/validations.js"></script>
    <script src="js/paging.js"></script>
    <script>
        $(document).foundation();
    </script>

</form>
</body>
</html>


    