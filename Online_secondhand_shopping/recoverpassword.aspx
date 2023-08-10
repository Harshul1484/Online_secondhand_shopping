<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recoverpassword.aspx.cs" Inherits="recoverpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recover Password</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
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
                    <h2>Password reset</h2>
                    <hr />
                    <asp:Label ID="lbl0" Text="Password" runat="server" AssociatedControlID="txtPassword" />
                    <asp:Label ID="lbl1" Text="Password" runat="server" AssociatedControlID="txtPassword" />
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ToolTip="Password must contain: Minimum 8 characters at-least 1 Uppercase ,1 Number and 1 special character"
                        CssClass="auto-style1" placeholder="Enter Password" required="required" pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&+=])[A-Za-z\d@#$%^&+=]{8,}$" Width="403px" />
                    <br />
                    <asp:Label ID="lbl2" Text="Confirm Password" runat="server" AssociatedControlID="txtConfirmPassword" />
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="auto-style1" placeholder="Confirm Password" required="required" Width="403px" />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:CompareValidator><br />
                    <hr />
                    <asp:Button ID="btnchange" runat="server" Text="Reset" CssClass="btn btn-primary" OnClick="btnSignup_Click" />

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
