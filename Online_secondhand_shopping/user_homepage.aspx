<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_homepage.aspx.cs" Inherits="user_homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="css/StyleSheet.css" rel="stylesheet" />
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
                    <li class="active">
                        <a href ="Default.aspx">Home</a>
                    </li>
                    <li><a herf="#">About</a></li>
                    <li><a herf="#">Contact</a></li>
                    <li><a herf="#">Blog</a></li>
                    <li class="dropdown">
                    <a herf ="#" class ="dropdown-toggle" data-toggle="dropdown">Category<b class ="caret"></b> </a>
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
                    <li>
                        <asp:Button ID="logout_btn" cssClass="btn btn-default navbar-btn" runat="server" Text="Logout" OnClick="btnlogout_Click" /></li>
                </div>
                </div>
              <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#" data-slide-to="0" class="active"></li>
      <li data-target="#" data-slide-to="1"></li>
      <li data-target="#" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="Images/ad1.jpg" alt="ad1" style="width:100%;">
      </div>

      <div class="item">
        <img src="Images/ad2.jpg" alt="ad2" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="Images/ad3.jpg" alt="ad3" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

    </form>
</body>
</html>
