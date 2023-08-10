<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_page.aspx.cs" Inherits="login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .login {
            width: 300px;
            height: 470px;
            position: absolute;
            top: 0px;
            bottom: 0px;
            left: 0px;
            right: 0px;
            margin: auto;
        }

        .footer {
            position: absolute;
            bottom: 10px;
            width: 100%;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>

                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span>
                            <img src="Images/7.jpg" alt="MySite" height="30" width="30" /></span>
                            MySite
                        </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                                <a href="Default.aspx">Home</a>
                            </li>
                            <li><a herf="#">About</a></li>
                            <li><a herf="#">Contact</a></li>
                            <li><a herf="#">Blog</a></li>
                            <li class="dropdown">
                                <a herf="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b> </a>
                                <ul class="dropdown-menu">

                                    <li class="dropdown-header">Men</li>
                                    <li role="separator" class="divider"></li>

                                    <li><a href="#">Shirts</a></li>
                                    <li><a href="#">Trousers</a></li>
                                    <li><a href="#">T-shirt</a></li>
                                    <li><a href="#">Shoes</a></li>

                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Women</li>
                                    <li role="separator" class="divider"></li>

                                    <li><a href="#">Skirts</a></li>
                                    <li><a href="#">Jeans</a></li>
                                    <li><a href="#">Sandals</a></li>

                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Kids</li>
                                    <li role="separator" class="divider"></li>

                                    <li><a href="#">Shirts</a></li>
                                    <li><a href="#">T-Shirts</a></li>
                                    <li><a href="#">Jeans</a></li>
                                    <li><a href="#">Capri</a></li>
                                    <li><a href="#">Shoes</a></li>

                                </ul>
                            </li>
                            <li><a href="signup_page.aspx">Signup</a></li>
                            <li><a href="login_page.aspx">Login</a></li>
                    </div>
                </div>
                <div class="login">

                    <h2 class="form-signin-heading">Login</h2>
                    <hr />
                    <asp:Label Text="Username" runat="server" AssociatedControlID="txtUsername" />
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter Username" required="required" />
                    <br />
                    <asp:Label Text="Password" runat="server" AssociatedControlID="txtPassword" />
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"
                        CssClass="form-control" placeholder="Enter Password" required="required" />
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    <asp:Label ID="Label1" runat="server" Text="Remember me"></asp:Label>
                    <br />
                    <br />

                    <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnlogin_Click" />
                    <asp:Label ID="error_mess01" runat="server" CssClass="text-danger"></asp:Label>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/forgetpassword.aspx">Forgot password?</asp:LinkButton>
                </div>

            </div>
    </form>
    <hr />
    <div class="footer">
        <footer>
            <hr />
            <div class="container">
                <p class="pull-right"><a href="Default.aspx">Back to top</a></p>
                <p class="pull-left">
                    &copy;xv.com &middot; <a href="Default.aspx">Home</a>&middot; <a href="Default.aspx">About</a>&middot; <a href="Default.aspx">Contact</a>&middot; <a href="Default.aspx">Products</a>&middot;
                </p>

            </div>
        </footer>
    </div>
</body>
</html>
