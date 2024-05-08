<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Admin.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
     <style>
      #load{
    display:none;
        
      }
       .load{
        width: 100vw;
        height: 100vh;
        position: fixed;
        top: 0;
        left: 0;
        align-items: center;
        justify-content: center;
        display: flex;
        transition: opacity 3.75s, visibility 3.75s;
       backdrop-filter: blur(5px);
       z-index: 99999;
        
       
      }

        .load--hidden {
         opacity: 0;
        visibility: hidden;
      }
      .loader {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: row;
      }
      
      .spinner {
 width: 44px;
 height: 44px;
 animation: spinner-y0fdc1 2s infinite ease;
 transform-style: preserve-3d;
}

.spinner > div {
 background-color: rgba(0,77,255,0.2);
 height: 100%;
 position: absolute;
 width: 100%;
 border: 2px solid #004dff;
}

.spinner div:nth-of-type(1) {
 transform: translateZ(-22px) rotateY(180deg);
}

.spinner div:nth-of-type(2) {
 transform: rotateY(-270deg) translateX(50%);
 transform-origin: top right;
}

.spinner div:nth-of-type(3) {
 transform: rotateY(270deg) translateX(-50%);
 transform-origin: center left;
}

.spinner div:nth-of-type(4) {
 transform: rotateX(90deg) translateY(-50%);
 transform-origin: top center;
}

.spinner div:nth-of-type(5) {
 transform: rotateX(-90deg) translateY(50%);
 transform-origin: bottom center;
}

.spinner div:nth-of-type(6) {
 transform: translateZ(22px);
}

@keyframes spinner-y0fdc1 {
 0% {
  transform: rotate(45deg) rotateX(-25deg) rotateY(25deg);
 }

 50% {
  transform: rotate(45deg) rotateX(-385deg) rotateY(25deg);
 }

 100% {
  transform: rotate(45deg) rotateX(-385deg) rotateY(385deg);
 }
}
      
       
            
    </style>
</head>
<body>
   
       <header>
        <a href="#" class="logo">Hotel Transylvania</a>
        <ul>
            <li><a href="#">Home</a></li> 
            <li><a href="#">About</a></li>
            <li><a href="#">Reservation</a></li>
            <li><a href="#">Contact</a></li>    
        </ul>
    </header>
    <section>
        <img src="stars.png" id="stars"/>
        <img src="moon.png" id="moon"/>
        <img src="burjkhalifa.png" id="mountains_behind"/>
         
        <img src="building.png" id="mountains_front"/>
    </section>
    <form id="form1" runat="server">
    <div class="sec" id="sec">
        <h2>A Place to Stay?</h2>
      
      <p>Welcome to Hotel Transylvania, your perfect destination for a luxurious and comfortable stay.<br> <br>Our hotel offers the finest amenities and services to make your stay with us unforgettable.<br> <br>Our beautifully designed rooms and suites are equipped with modern amenities to ensure you have a pleasant and restful stay.</p>
      <div class="main"><br /><br /><br />
        <h2>Rooms Rate</h2>
        <ul class="cards">
          <li class="cards_item">
            <div class="card">
              <div class="card_image"><img src="room.jpg"></div>
              <div class="card_content">
                <h1 class="card_title">Room 1</h1>
                <p class="card_text">Deluxe</p>
                <button class="btn card_btn">₱500 / Night</button>
              </div>
            </div>
          </li>
          <li class="cards_item">
            <div class="card">
              <div class="card_image"><img src="room.jpg"></div>
              <div class="card_content">
                <h1 class="card_title">Room 2</h1>
                <p class="card_text">Deluxe Room</p>
                <button class="btn card_btn">₱500 / Night</button>
              </div>
            </div>
          </li>
          <li class="cards_item">
            <div class="card">
              <div class="card_image"><img src="room.jpg"></div>
              <div class="card_content">
                <h1 class="card_title">Room 3</h1>
                <p class="card_text">Deluxe Room</p>
                <button class="btn card_btn">₱500 / Night</button>
              </div>
            </div>
          </li></div><div style="display:flex; align-items:center;justify-content:center">
            <input type="submit" id="btn" value="Reserve Now" data-toggle="modal" data-target="#formInsert" />
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
             <br /> <label for="email1">Email:</label>
              <asp:Textbox ID="Address" runat="server"  class="form-control" type="text" placeholder="Enter your Address"></asp:Textbox>
             <br /> <label for="email1">Check In:</label>
              <asp:Textbox ID="CheckIn" runat="server" class="form-control" type="date" required />
            <br />  <label for="email1">Check Out:</label>
              <asp:Textbox ID="CheckOut" runat="server" class="form-control" type="date" required />
             <br /> <label for="email1">Room No:</label>
              <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
											<asp:ListItem>1</asp:ListItem>
											<asp:ListItem>2</asp:ListItem>
											<asp:ListItem>3</asp:ListItem>
										</asp:DropDownList>
           <br />   <label for="email1">Children Number:</label>
			<Asp:Textbox ID="ChildrenNum" runat="server" class="form-control" type="text" placeholder="No. of Children"></Asp:Textbox>
           <br />   <label for="email1">Adults Number:</label>
              <Asp:Textbox ID="AdultsNum" runat="server" class="form-control" type="text" placeholder="No. of Adults"></Asp:Textbox>
              <br /><label for="email1">Contact No:</label>
  
              <Asp:Textbox ID="ContactNumber" runat="server" class="form-control" type="text" placeholder="Contact Number"></Asp:Textbox>
                      <div class="modal-footer border-top-0 d-flex justify-content-center">
  <asp:Button style="background-color:darkblue; border-radius:6px;color:white;border:1px solid white;margin-left:0px " runat="server" ID="Enter" text="Book Now" Height="53px" Width="213px" OnClick="Enter_Click1" Font-Bold="True" Font-Size="Large" />

         
        </div>
        </div>


</div></div></div></div></div></div></div>
      
      
        <div class="load" id="load">
  
    <section class="loader">

      <div class="spinner">
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
</div>
      </section>
    

</div>

        <script>
            window.onload = function () {
                var loader = document.getElementById("load");
                var btnLoad = document.getElementById("Enter");
                btnLoad.addEventListener("click", function () {
                    loader.style.display = "flex";
                    // Here you can add the code to load data or perform any other action that may take some time

                });
            };
        </script>

    <script>
        let stars = document.getElementById("stars");
        let moon = document.getElementById("moon");
        let mountains_front = document.getElementById("mountains_front");
        let mountains_behind = document.getElementById("mountains_behind");
        let text = document.getElementById("text");
        let btn = document.getElementById("btn");
        let header = document.querySelector("header");
  
        function debounce(func, delay) {
  let timer;
  return function() {
    clearTimeout(timer);
    timer = setTimeout(() => func.apply(this, arguments), delay);
  }
}

window.addEventListener("scroll", debounce(function() {
  let value = window.scrollY;
  
  stars.style.left = value * 0.25 + "px";
  moon.style.top = value * 1.05 + "px";
  
  mountains_behind.style.top = value * 0.5 + "px";
  mountains_front.style.top = value * 0 + "px";
  
  text.style.marginRight = value * 4 + "px";
  text.style.marginTop = value * 1.5 + "px";
  btn.style.marginTop = value * 1.5 + "px";
  
  header.style.top = value * 0.5 + "px";
}, 20));
    </script>
    </form>
</body>
</html>
