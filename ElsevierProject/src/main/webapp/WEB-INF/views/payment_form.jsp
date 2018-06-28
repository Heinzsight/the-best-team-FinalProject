<%@include file="master.jsp" %>

<form action="/checkoutProcess" method="post">


        <%

        double orderTotal = (Double) request.getAttribute("order_total");


    %>

    <br>
    <!-- You can now combine a row and column if you just need a 12 column row -->
    <div class="row columns">
        <nav aria-label="You are here:" role="navigation">
            <ul class="breadcrumbs">

                <li><a href="/">Home</a></li>
                <li>
                    <span class="show-for-sr">Current: </span> Payment Details
                </li>
            </ul>
        </nav>
    </div>

    <div class="row">

        <div class="medium-6 columns">

            <h2> Payment Details </h2>

            <div class="row small-up-shiping">

                <div class="columns">
                    <label> Firstname * </label>
                    <input type="text" name="firstName" id="firstName" size="30"/>
                </div>
                <div class="columns">
                    <label> Lastname * </label>
                    <input type="text" name="lastName" id="lastName" size="30"/>
                </div>

                <div class="column">
                    <label> Address 1 * </label>
                    <input type="text" name="addressLine1" id="addressLine1" size="30"/>
                </div>
                <div class="column">
                    <label> Address 2 * </label>
                    <input type="text" name="addressLine2" id="addressLine2" size="30"/>
                </div>
                <div class="column">
                    <label> City * </label>
                    <input type="text" name="city" id="city" size="30"/>
                </div>


                <%@include file="master-footer.jsp" %>

    