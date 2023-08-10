<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>
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

        .auto-style1 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                        <li><a href="signup_page.aspx">Signup</a></li>
                        <li><a href="login_page.aspx">Login</a></li>
                </div>
            </div>
            <div class="container">
                <div class="form-horizontal">
                    <br />
                    <br />
                    <h2>Recover Password</h2>
                    <hr />
                    <h3>Enter email, we will send password change link to your email</h3>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="auto-style1" placeholder="Enter Email" required="required" Width="412px" />
                    <br />
                    <asp:Button ID="btnlogin" runat="server" Text="Send" CssClass="btn btn-primary" OnClick="btnlogin_Click" />
                    <asp:Label ID="resetpassmsg_lbl" runat="server" CssClass="text-success"></asp:Label>
                </div>
            </div>
        </div>
    </form>
    <div class="footer">
        <footer>
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
