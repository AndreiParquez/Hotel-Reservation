﻿        <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Admin.login" %>


<!DOCTYPE html>
<html lang="en">
<head>
  
  <title>Login Form</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap');
*{
    margin: 0;
    padding: 0;
    font-family: 'poppins',sans-serif;
}
body{
   background-color:#9b59b6;
    background-position: center;
    background-size: cover;
}

        section {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            width: 100%;
           
        }
.form-box{
    position: relative;
    width: 400px;
    height: 450px;
    background-color: #C5B4E3;
    border: 2px solid #2e3f7f;
    border-radius: 20px;
    backdrop-filter: blur(15px);
    display: flex;
    justify-content: center;
    align-items: center;
    box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
}
h2{
    font-size: 1.6em;
    color: #1e1e2d;
    text-align: center;
}
.inputbox{
    position: relative;
    margin: 30px 0;
    width: 310px;
    border-bottom: 2px solid #435ebe;
}
.inputbox label{
    position: absolute;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    color: #ffffff;
    font-size: 1em;
    pointer-events: none;
    transition: .5s;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}
input:focus ~ label,
input:valid ~ label{
top: -5px;
}
.inputbox .input {
    width: 100%;
    height: 50px;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    padding:0 35px 0 5px;
    color: #435ebe;
}
.inputbox ion-icon{
    position: absolute;
    right: 8px;
    color: #1e1e2d;
    font-size: 1.2em;
    top: 20px;
}
.forget{
    margin: -15px 0 15px ;
    font-size: .9em;
    color: #f817cf;
    display: flex;
    justify-content: space-between;  
}

.forget label input{
    margin-right: 3px;
    
}
.forget label a{
    color: #ff00e6;
    text-decoration: none;
}
.forget label a:hover{
    text-decoration: underline;
}
.button{
    color:#C5B4E3;
    width: 100%;
    height: 40px;
    border-radius: 40px;
    background: #fff;
    border: none;
    outline: none;
    cursor: pointer;
    font-size: 1em;
    font-weight: 600;
    box-shadow: rgba(0, 0, 0, 0.147) 0px 54px 55px, rgba(0, 0, 0, 0.053) 0px -12px 30px, rgba(0, 0, 0, 0.064) 0px 4px 6px, rgba(0, 0, 0, 0.086) 0px 12px 13px, rgba(0, 0, 0, 0.032) 0px -3px 5px;
}
.button:hover{
   background-color:#C5B4E3;
   color:#fff;
   transform: scale(1.1);
   transition: 0.3s;
   box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
   
   border: 1px solid white;

}
.register{
    font-size: .7em;
    color: #fff;
    text-align: center;
    margin: 25px 0 10px;
}
.register p a{
    text-decoration: none;
    color: cornflowerblue;
    font-weight: 600;
}
.register p a:hover{
    text-decoration: underline;
}
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
 background-color: rgba(197,180,227);
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
    

    <div class="logo">
      
    </div>
    <section>
        
        <div class="form-box" >
            <div class="form-value">
                <form action="" runat="server">
                   
                    <h2>Hotel Del Luna</h2>
                    <div class="inputbox">
                        <ion-icon name="person-outline"></ion-icon>
                        <asp:Textbox ID="username" class="input" runat="server" type="text" required></asp:Textbox>
                        <label for="">Username</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <asp:Textbox ID="password" class="input" runat="server" type="password" required></asp:Textbox>
                        <label for="">Password</label>
                    </div>
                    <div class="forget">
                     <asp:Label ID="invalid" runat="server" ForeColor="Red" Font-Italic="True" Font-Size="13px"></asp:Label>
                    </div>
                    <asp:button id="login_btn" class="button" text="Login" runat="server" OnClick="login_btn_Click"></asp:button>
                    <div class="register">
                        <p>Don't have a account? Contact <a href="#">Admin</a></p>
                    </div>
                </form>
            </div>
        </div>
    </section>
       
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
              var btnLoad = document.getElementById("login_btn");
              btnLoad.addEventListener("click", function () {
                  loader.style.display = "flex";
                  // Here you can add the code to load data or perform any other action that may take some time

              });
          };
      </script>
    
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
