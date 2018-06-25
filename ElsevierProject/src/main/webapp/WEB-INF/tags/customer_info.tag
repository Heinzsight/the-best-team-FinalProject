<h5 id="cust_info_header"> Customer Information </h5>

            <div class="col-md-4">

                <div class="col">
                    <label> First name </label>
                    <input type="text" name="firstName" id="firstName" size="30" required/>
                </div>

                <div class="col">
                    <label> Address </label>
                    <input type="text" name="addressLine1" id="addressLine1" size="30" required/>
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