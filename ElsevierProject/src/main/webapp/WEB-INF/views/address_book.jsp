<%@include file="master.jsp"%>

<div class="row">


    <div class="large-6 columns">
        <h3> Billing Address </h3>

        <form action="/updateAddress" method="post">
            <label>Address Line1 * </label>
            <input type="text" placeholder="Enter AddressLine2" name="addressLine1" id="addressLine1"/>
            <label>Address Line2 * </label>
            <input type="text" placeholder="Enter Address Line2" name="addressLine2" id="addressLine2"/>
            <label>City * </label>
            <input type="text" placeholder="Enter City" name="city" id="city"/>
            <label>Postcode * </label>
            <input type="text" placeholder="Enter Postcode" name="postcode" id="postcode"/>


            <label>State/County * </label>
            <input type="text" placeholder="Enter State/County" name="state" id="state"/>


            <label>Country * </label>
            <input type="text" placeholder="Enter Country" name="country" id="county"/>


            <label>Phone Number * </label>
            <input type="text" placeholder="Enter Phone number" name="phoneNumber" id="phoneNumber"/>


            <input type="hidden" name="addressType" id="addressType" value="billing"/>


            <input type="submit" class="button create account" value="Update Billing Address">
        </form>
    </div>


    <div class="medium-6 columns">
        <h3> Shipping Address </h3>

        <input type="checkbox" class="ba" checked="checked"/> Different from billing address

        <form action="/updateAddress" method="post">
            <label>Address Line1 * </label>
            <input type="text" placeholder="Enter AddressLine2" name="addressLine1" id="addressLine1" class="tex"/>
            <label>Address Line2 * </label>
            <input type="text" placeholder="Enter Address Line2" name="addressLine2" id="addressLine2" class="tex"/>
            <label>City * </label>
            <input type="text" placeholder="Enter City" name="city" id="city" class="tex"/>
            <label>Postcode * </label>
            <input type="text" placeholder="Enter Postcode" name="postcode" id="postcode" class="tex"/>


            <label>State/County * </label>
            <input type="text" placeholder="Enter State/County" name="state" id="state" class="tex"/>


            <label>Country * </label>
            <input type="text" placeholder="Enter Country" name="country" id="county" class="tex"/>


            <label>Phone Number * </label>
            <input type="text" placeholder="Enter Phone number" name="phoneNumber" id="phoneNumber" class="tex"/>


            <input type="hidden" name="addressType" id="addressType" value="shipping"/>


            <input type="submit" class="button create account" value="Update Shipping Address">
        </form>
    </div>


</div>

<%@include file="master-footer.jsp"%>