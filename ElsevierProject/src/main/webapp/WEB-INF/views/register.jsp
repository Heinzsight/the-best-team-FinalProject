<%@include file="master.jsp" %>
<div class="container-fluid">
    <div class="row">
        <form action="/registerProcess" method="post">
            <div class="col-md-4 col-md-offset-4">
                <h1 align="center">Create Account</h1>
                <h4 align="center">or <a href="/login">Sign In</a></h4>

                <div class="form-group">
                    <label for="firstName" style="font-weight: normal">First Name*</label><br>
                    <input type="text" placeholder="Enter First Name" style="border-radius: 0px" name="firstName"
                           id="firstName" class="form-control" required/><br>
                </div>
                <div class="form-group">
                    <label for="lastName" style="font-weight: normal">Last Name*</label><br>
                    <input type="text" placeholder="Enter Last Name" style="border-radius: 0px" name="lastName"
                           id="lastName" class="form-control" required/><br>
                </div>
                <div class="form-group">
                    <label for="email" style="font-weight: normal">Email*</label><br>
                    <input type="email" placeholder="Enter Email" style="border-radius: 0px" name="email" id="email"
                           class="form-control" required/><br>
                </div>
                <div class="form-group">
                    <label for="password" style="font-weight: normal">Password*</label><br>
                    <input type="password" placeholder="Enter Password" style="border-radius: 0px" name="password"
                           id="password" class="form-control" required/><br>
                </div>
                <div class="form-group">
                    <input type="checkbox" name="agreement" required/> I have read and understood the
                    <a href="/registered_user_agreement">Registered User Agreement </a> and agree to be bound by all
                    of
                    its
                    terms.*
                    <br>
                    <br>
                </div>
                <div class="form-group">
                    <center><input type="submit" class="btn-primary btn-lg buttonSubmit create account"
                                   value="REGISTER"></center>
                    <br>
                </div>
            </div>
        </form>
    </div>
</div>
<%@include file="master-footer.jsp" %>
