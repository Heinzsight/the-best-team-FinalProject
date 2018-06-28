<%@include file="master.jsp" %>
<div class="container-fluid">
    <div class="row">
        <form action="loginProcess" method="post" class="form-horizontal">
            <div class="col-md-4 col-md-offset-4">
                <h1 align="center">Sign In</h1>
                <h4 align="center">or <a href="/register">Create Account</a></h4>

                <div class="form-group">
                    <label for="email" style="font-weight: normal">Email</label>
                    <input class='form-control' style="border-radius: 0px" type="email" placeholder="Enter email"
                           name="email" id="email" required/>
                </div>
                <div class="form-group">
                    <label for="password" style="font-weight: normal">Password</label>
                    <input class='form-control' style="border-radius: 0px" type="password"
                           placeholder="Enter Password" name="password" id="password" required/>
                </div>
                <br>
                <div class="form-group">
                    <center><input type="submit" class="btn btn-primary btn-lg  buttonSubmit" value="LOGIN"></center>
                </div>
                <br>
            </div>
        </form>
    </div>
</div>
<%@include file="master-footer.jsp" %>