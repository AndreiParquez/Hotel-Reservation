<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Website.aspx.cs" Inherits="Admin.Website" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css" />
       <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="hotelassests/bootstrap.min.css">
    <link rel="stylesheet" href="hotelassests/slick.css" type="text/css" /> 
    <link rel="stylesheet" href="hotelassests/templatemo-style.css"> 
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
  
</head>
<body>
    <form runat="server">
  
   <video autoplay muted loop id="bg-video">
        <source src="hotelassests/gfp-astro-timelapse.mp4" type="video/mp4">
    </video>
    <div class="page-container">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-12">
            <div class="cd-slider-nav">
              <nav class="navbar navbar-expand-lg" id="tm-nav">
                <a class="navbar-brand" href="#">Hotel Del Luna</a>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-supported-content" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbar-supported-content">
                    <ul class="navbar-nav mb-2 mb-lg-0">
                      <li class="nav-item selected">
                        <a class="nav-link" aria-current="page" href="#0" data-no="1">Home</a>
                        <div class="circle"></div>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#0" data-no="2">Rooms</a>
                        <div class="circle"></div>
                      </li>
                   
                      <li class="nav-item">
                        <a class="nav-link" href="#0" data-no="4">Contact</a>
                        <div class="circle"></div>
                      </li>
                    </ul>
                  </div>
              </nav>
            </div>
          </div>          
        </div>        
      </div>      
      <div class="container-fluid tm-content-container">
 
            <div class="page-width-1 page-left">
              <div class="d-flex position-relative tm-border-top tm-border-bottom intro-container">
                <div class="intro-left tm-bg-dark">
                  <h2 class="mb-4">Welcome to Hotel Del Luna</h2>
                  <p class="mb-4">
                    Welcome to our exquisite hotel, where luxury meets unparalleled hospitality. Nestled in the heart of a vibrant city, our establishment offers a haven of comfort and indulgence for discerning travelers like you
                  <p class="mb-0">
                </div>
                <div class="intro-right">
                  <img src="hotelassests/home-img-1.jpg" alt="Image" class="img-fluid intro-img-1">
                  <img src="hotelassests/home-img-2.jpg" alt="Image" class="img-fluid intro-img-2">
                </div>
                <div class="circle intro-circle-1"></div>
                <div class="circle intro-circle-2"></div>
                <div class="circle intro-circle-3"></div>
                <div class="circle intro-circle-4"></div>
              </div>
              <div class="text-center">
              
                  
              </div>            
            </div>    <input type="submit" id="btn" value="Reserve Now" data-toggle="modal" data-target="#formInsert" />        
          </li>
          <li data-page-no="2">
            <!-- Image Carousel -->
            <div class="mx-auto position-relative gallery-container">
              <div class="circle intro-circle-1"></div>
              <div class="circle intro-circle-2"></div>
              <div class="mx-auto tm-border-top gallery-slider">
                <figure class="effect-julia item">
                    <img src="hotelassests/room.jpg" alt="Image">
                    <figcaption>
                        <div>
                            <p>Room 1: Deluxe ₱500/night</p>
                        </div>
                        <a href="#">View more</a>
                    </figcaption>
                </figure>
                <figure class="effect-julia item">
                    <img src="hotelassests/room.jpg" alt="Image">
                    <figcaption>
                        <div>
                            <p>Room 1: Deluxe ₱500/night</p>
                        </div>
                        <a href="#">View more</a>
                    </figcaption>
                </figure>
       
                
                
             
               
                <figure class="effect-julia item">
                    <img src="hotelassests/room.jpg" alt="Image">
                    <figcaption>
                        <div>
                            <p>Room 1: Deluxe ₱500/night</p>
                        </div>
                        <a href="#">View more</a>
                    </figcaption>
                </figure>
              
              </div>
            </div>
          </li>
          <li data-page-no="3" class="px-3">
            <div class="position-relative page-width-1 page-right tm-border-top tm-border-bottom">
              <div class="circle intro-circle-1"></div>
              <div class="circle intro-circle-2"></div>
              <div class="circle intro-circle-3"></div>
              <div class="circle intro-circle-4"></div>
              <div class="tm-bg-dark content-pad">
                <h2 class="mb-4">About our company</h2>
                <p class="mb-4">
                  You are <span class="highlight">allowed</span> to use Astro Motion HTML Template for your websites. You are not allowed to re-distribute this template ZIP file on any Free CSS template collection website. Illegal redistribution is strongly prohibited.
                </p>
                <p>
                  Praesent auctor rhoncus arcu, vitae blandit est vestibulum sit amet. Integer erat
                  turpis, vestibulum pellentesque aliquam ultricies, finibus nec dui. Donec bibendum
                  enim mi, at tristique leo feugiat at. Thank you for visiting Template Mo.
                </p>
              </div>              
            </div>
          </li>
          <li data-page-no="4">
            <div class="mx-auto page-width-2">
              <div class="row">
                <div class="col-md-6 me-0 ms-auto">
                  <h2 class="mb-4">Contact Us</h2>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6 tm-contact-left">
                  <form action="#" method="POST" class="contact-form">
                    <div class="input-group tm-mb-30">
                        <input name="name" type="text" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Name">
                    </div>
                    <div class="input-group tm-mb-30">
                        <input name="email" type="text" class="form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Email">
                    </div>
                    <div class="input-group tm-mb-30">
                        <textarea rows="5" name="message" class="textarea form-control rounded-0 border-top-0 border-end-0 border-start-0" placeholder="Message"></textarea>
                    </div>
                    <div class="input-group justify-content-end">
                        <input type="submit" class="btn btn-primary tm-btn-pad-2" value="Send">
                    </div>
                  </form>
                </div>
                <div class="col-md-6 tm-contact-right">                  
              
                  <div>
                    Email: <a href="mailto:info@company.com" class="tm-link-white">info@company.com</a>
                  </div>
                  <div class="tm-mb-45">
                    Tel: <a href="tel:0100200340" class="tm-link-white">010-020-0340</a>
                  </div>
                  <!-- Map -->
                  <div class="mapouter"><div class="gmap_canvas"><iframe class="gmap_iframe" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=690&amp;height=400&amp;hl=en&amp;q=cavite bacoor&amp;t=&amp;z=10&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe><a href="https://thepasswordgame.com/">The Password Game</a></div><style>.mapouter{position:relative;text-align:right;width:690px;height:400px;}.gmap_canvas {overflow:hidden;background:none!important;width:690px;height:400px;}.gmap_iframe {width:690px!important;height:400px!important;}</style></div>
                </div>
              </div>
            </div>            
          </li>
        </ul>
    </div>
    <div class="container-fluid">
    
    </div>
  </div>
          <!-- Modal-->
          <div style="margin-top:170px">
            <div class="modal fade" id="formInsert" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"><div style="margin-top:-20px">
              <div class="modal-dialog modal-dialog-centered" role="document">
               
                  <div class="modal-content">
                  <div class="modal-header border-bottom-0">
                  
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                 
                    <div class="modal-body">
                      <div class="form-group">
                      Name: <Asp:Textbox ID="FullName" runat="server" class="form-control" type="text" placeholder="Enter your Fullname"></Asp:Textbox>
                         <br /> <label for="email1">Address:</label>
                          <asp:Textbox ID="Address" runat="server"  class="form-control" type="text" placeholder="Enter your Address"></asp:Textbox>
                         <br /> <label for="email1">Check In:</label>
                          <asp:Textbox ID="CheckIn" runat="server" class="form-control" type="date" required />
                        <br />  <label for="email1">Check Out:</label>
                          <asp:Textbox ID="CheckOut" runat="server" class="form-control" type="date" required />
                         <br /> <label for="email1">Room Type:</label>
                          <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                  <asp:ListItem>Family Room</asp:ListItem>
                                  <asp:ListItem>Deluxe Room</asp:ListItem>
                                  <asp:ListItem>Suite Room</asp:ListItem>
                                </asp:DropDownList>
                       <br />   <label for="email1">Children Number:</label>
                  <Asp:Textbox ID="ChildrenNum" runat="server" class="form-control" type="text" placeholder="No. of Children"></Asp:Textbox>
                       <br />   <label for="email1">Adults Number:</label>
                          <Asp:Textbox ID="AdultsNum" runat="server" class="form-control" type="text" placeholder="No. of Adults"></Asp:Textbox>
                          <br /><label for="email1">Contact No:</label>
              
                          <Asp:Textbox ID="ContactNumber" runat="server" class="form-control" type="text" placeholder="Contact Number"></Asp:Textbox>
                                  <div class="modal-footer border-top-0 d-flex justify-content-center">
              <asp:Button style="background-color:mediumpurple; border-radius:6px;color:white;border:1px solid white;margin-left:0px " runat="server" ID="Enter" text="Book Now" Height="53px" Width="213px" OnClick="Enter_Click1" Font-Bold="True" Font-Size="Large" />
            
                     
                    </div>
                    </div>
            </div></div></div></div></div>



  <script src="hotelassests/slick.js"></script>
  <script src="hotelassests/templatemo-script.js"></script>



                        </form>
</body>
</html>