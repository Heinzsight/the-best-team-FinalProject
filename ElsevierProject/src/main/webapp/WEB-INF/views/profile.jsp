<%@include file="master.jsp" %>

<div class="callout large">
    <div class="row column text-center">
        <h1>You have logged in as <%=c.getFirstName() %>
        </h1>
    </div>
    <div class="row column">
        <form action="/updateProfile" method="post">
            <div class="medium-6">
                <h3> Account details </h3>
                <label>First Name</label>
                <input type="text" placeholder="Enter First Name" name="firstName" id="firstName"
                       value="<%=c.getFirstName() %>" required/>
                <label>Last Name</label>
                <input type="text" placeholder="Enter Last Name" name="lastName" id="lastName"
                       value="<%=c.getLastName()%>" required/>
                <label>Email</label>
                <input type="email" placeholder="Enter Email" name="email" id="email"
                       value="<%=c.getEmail()%>" required/>
                <label>Password</label>
                <input type="text" placeholder="Enter Password" name="password" id="password"
                       value="<%=c.getPassword() %>"/>
            </div>
            <input type="submit" class="button create account" value="Update Account">
        </form>
    </div>
</div>

<%@include file="master-footer.jsp" %>
    