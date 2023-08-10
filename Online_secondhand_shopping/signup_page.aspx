<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup_page.aspx.cs" Inherits="signup_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body
        {
            width :300px;
            height :470px;
            position :absolute;
            top:0px;
            bottom:0px;
            left:0px;
            right:0px;
            margin:auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class ="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class ="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        
                    </button>
                    <a class ="navbar-brand" href ="Default.aspx"><span>
                        <img src="Images/7.jpg" alt="MySite" height="30" width="30"/></span>
                        MySite
                    </a>
                </div>
                <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-left">
                    <li>
                        <a href ="Default.aspx">Home</a>
                    </li>
                    <li><a herf="#">About</a></li>
                    <li><a herf="#">Contact</a></li>
                    <li><a herf="#">Blog</a></li>
                    <li class="dropdown">
                    <a herf ="#" class ="dropdown-toggle" data-toggle="dropdown">Products<b class ="caret"></b> </a>
                        <ul class="dropdown-menu">

                            <li class="dropdown-header">Men</li>
                            <li role="separator" class="divider"></li>

                            <li> <a href ="#">Shirts</a></li>
                            <li> <a href ="#">Trousers</a></li>
                            <li> <a href ="#">T-shirt</a></li>
                            <li> <a href ="#">Shoes</a></li>
                            
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Women</li>
                            <li role="separator" class="divider"></li>
                            
                            <li> <a href ="#">Skirts</a></li>
                            <li> <a href ="#">Jeans</a></li>
                            <li> <a href ="#">Sandals</a></li>
                            
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Kids</li>
                            <li role="separator" class="divider"></li>
                            
                            <li> <a href ="#">Shirts</a></li>
                            <li> <a href ="#">T-Shirts</a></li>
                            <li> <a href ="#">Jeans</a></li>
                            <li> <a href ="#">Capri</a></li>
                            <li> <a href ="#">Shoes</a></li>
                            
                            </ul>
                    </li>
                     <li><a href="signup_page.aspx">Signup</a></li>
                    <li><a href="login_page.aspx">Login</a></li>
                </div>
                </div>



       <div>
            <h2 class="form-signin-heading">Registration</h2>
           <hr />
           <asp:Label Text="Username" runat="server" AssociatedControlID="txtUsername" />
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter Username" required="required" />
            <br />
           <asp:Label Text="Email" runat="server" AssociatedControlID="txtEmail" />
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="Enter Email" required="required" />
           <br />
            <asp:Label Text="Password" runat="server" AssociatedControlID="txtPassword" />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ToolTip="Password must contain: Minimum 8 characters at-least 1 Uppercase ,1 Number and 1 special character"
                CssClass="form-control" placeholder="Enter Password" required="required" pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&+=])[A-Za-z\d@#$%^&+=]{8,}$" />
            <br />
            <asp:Label Text="Confirm Password" runat="server" AssociatedControlID="txtConfirmPassword" />
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm Password" required="required" />
           <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:CompareValidator><br />
            
            <hr />
            <asp:Button ID="btnSignup" runat="server" Text="Sign up" CssClass="btn btn-primary" OnClick="btnSignup_Click" />
        </div>

            <br />
            <div>
            <footer class="footer-pos">
             <div class="container">
                  <p class="pull-left">   &copy;xv.com &middot; <a href ="Default.aspx">Home</a>&middot; <a href ="Default.aspx">About</a>&middot; <a href ="Default.aspx">Contact</a>&middot; <a href ="Default.aspx">Products</a>&middot;
                 </p>
</div>
             </div>
         </footer>

    </form>
</body>
</html>
