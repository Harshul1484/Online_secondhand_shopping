<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Get-Secondhand-site </title>

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
                    <li><a href="signup_page.aspx">Signup</a></li>
                    <li><a href="login_page.aspx">Login</a></li>
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
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class ="img-circle" src="Images/green-img.jpg" alt="Mobilephone" width="200" height="250">
                    <h2>OnePlus nord e21</h2>
                    <p>Combining powerful performance with a user-friendly experience, the OnePlus Nord 2T 5G Smartphone is a must-have. It boasts up to 16.33 cm (6.43) AMOLED display with a resolution of up to 1080x2400p, ensuring sharp and clear images. In addition, the screen supports HDR10+ and has a refresh rate of up to 90 Hz, providing an immersive viewing experience. Furthermore, the high-performance camera setup of the smartphone allows for capturing stunning selfies, and it supports 1080p video recording at up to 30 fps.</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
        </div>
                <div class="row">
                <div class="col-lg-4">
                    <img class ="img-square" src="Images/phone1.jpg" alt="Mobilephone" width="200" height="250">
                    <h2>Vivo 5g</h2>
                    <p>With the superb Vivo T2x 5G, you can take advantage of great pictures and a flawless user experience. With the Vivo T2x 5G, you can experience exceptional performance owing to its 7 nm 5G CPU, the octa-core Dimensity 6020, with a top clock speed of 2.2 GHz. Additionally, the 50 MP main camera on this smartphone beautifully catches every detail you see. Additionally, Super Night Selfie employs noise cancellation technology in conjunction with an Aura Screen Light to produce a calming light that is effective in low light. The pioneering Extended RAM 3.0 technology also uses ROM to expand RAM with a maximum capacity of 8 GB. This enables smooth app switching and allows up to 27 active applications to run in the background.</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
        </div>
                    <div class="row">
                <div class="col-lg-4">
                    <img class ="img-square" src="Images/poco.jpg" alt="Mobilephone" width="200" height="250">
                    <h2>Poco c51</h2>
                    <p>
Give your inner tech nerd a treat with the POCO C51 smartphone, which mesmerises you from the minute you switch it on thanks to its top-notch performance. The POCO C51's MediaTek Helio G36 octa-core Processor, clocked at up to 2.2 GHz, has all the power needed for responsive web surfing and multimedia tasks. Also, the POCO C51 includes a fantastic Turbo RAM function that allows you access to up to 7 GB of RAM whenever you need it. This feature enables you to play visually demanding games and easily consume high-quality material. Also, the big 16.56 cm (6.52) HD+ display on this phone is perfect for all of your surfing and gaming demands. Also, the POCO C51 smartphone has an 8 MP dual camera and a 5 MP selfie camera that allows you to record the enthralling moments in your daily life with sharp images.</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
        </div>

         <footer>
             <div class="container">
                 <p class="pull-right"><a href ="Default.aspx">Back to top</a></p>
                  <p class="pull-left">   &copy;xv.com &middot; <a href ="Default.aspx">Home</a>&middot; <a href ="Default.aspx">About</a>&middot; <a href ="Default.aspx">Contact</a>&middot; <a href ="Default.aspx">Products</a>&middot;
                 </p>

             </div>
         </footer>
    </form>

</body>
</html>
