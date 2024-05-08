<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="Admin.Rooms" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Hotel Del Luna</title><script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="assets/css/main/app.css">
    <link rel="stylesheet" href="assets/css/main/app-dark.css">
    <link rel="shortcut icon" href="assets/images/logo/favicon.svg" type="image/x-icon">
    <link rel="shortcut icon" href="assets/images/logo/favicon.png" type="image/png">
    
<link rel="stylesheet" href="assets/css/shared/iconly.css">


       <link rel="stylesheet" href="assets/css/pages/fontawesome.css">
<link rel="stylesheet" href="assets/extensions/datatables.net-bs5/css/dataTables.bootstrap5.min.css">
<link rel="stylesheet" href="assets/css/pages/datatables.css">
    

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
<body id="page-top">
    <form id="form1" runat="server">

 

 <div id="app">
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
    <div class="sidebar-header position-relative">
        <div class="d-flex justify-content-between align-items-center">
            <div class="logo">
                <a href="index.html"><h5>Hotel Del Luna</h5></a>
            </div>&nbsp;
            <div class="theme-toggle d-flex gap-2  align-items-center mt-2">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" class="iconify iconify--system-uicons" width="20" height="20" preserveAspectRatio="xMidYMid meet" viewBox="0 0 21 21"><g fill="none" fill-rule="evenodd" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"><path d="M10.5 14.5c2.219 0 4-1.763 4-3.982a4.003 4.003 0 0 0-4-4.018c-2.219 0-4 1.781-4 4c0 2.219 1.781 4 4 4zM4.136 4.136L5.55 5.55m9.9 9.9l1.414 1.414M1.5 10.5h2m14 0h2M4.135 16.863L5.55 15.45m9.899-9.9l1.414-1.415M10.5 19.5v-2m0-14v-2" opacity=".3"></path><g transform="translate(-210 -1)"><path d="M220.5 2.5v2m6.5.5l-1.5 1.5"></path><circle cx="220.5" cy="11.5" r="4"></circle><path d="m214 5l1.5 1.5m5 14v-2m6.5-.5l-1.5-1.5M214 18l1.5-1.5m-4-5h2m14 0h2"></path></g></g></svg>
                <div class="form-check form-switch fs-6">
                    <input class="form-check-input  me-0" type="checkbox" id="toggle-dark" >
                    <label class="form-check-label" ></label>
                </div>
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" class="iconify iconify--mdi" width="20" height="20" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill="currentColor" d="m17.75 4.09l-2.53 1.94l.91 3.06l-2.63-1.81l-2.63 1.81l.91-3.06l-2.53-1.94L12.44 4l1.06-3l1.06 3l3.19.09m3.5 6.91l-1.64 1.25l.59 1.98l-1.7-1.17l-1.7 1.17l.59-1.98L15.75 11l2.06-.05L18.5 9l.69 1.95l2.06.05m-2.28 4.95c.83-.08 1.72 1.1 1.19 1.85c-.32.45-.66.87-1.08 1.27C15.17 23 8.84 23 4.94 19.07c-3.91-3.9-3.91-10.24 0-14.14c.4-.4.82-.76 1.27-1.08c.75-.53 1.93.36 1.85 1.19c-.27 2.86.69 5.83 2.89 8.02a9.96 9.96 0 0 0 8.02 2.89m-1.64 2.02a12.08 12.08 0 0 1-7.8-3.47c-2.17-2.19-3.33-5-3.49-7.82c-2.81 3.14-2.7 7.96.31 10.98c3.02 3.01 7.84 3.12 10.98.31Z"></path></svg>
            </div>
            <div class="sidebar-toggler  x">
                <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
            </div>
        </div>
    </div>
    <div class="sidebar-menu">
        <ul class="menu">
            <li class="sidebar-title">Menu</li>
            
            <li
                class="sidebar-item ">
                <a href="Home.aspx" class='sidebar-link'>
                    <i class="bi bi-grid-fill"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            
            <li class="sidebar-title">Reservations</li>
            
            <li
                class="sidebar-item ">
                <a href="Reservation2.aspx" class='sidebar-link'>
                    <i class="bi bi-file-earmark-spreadsheet-fill"></i>
                    <span>List of All Reservations</span>
                </a>
            </li>
            
            <li class="sidebar-item ">
                <a href="Reservation1.aspx" class='sidebar-link'>
                    <i class="bi bi-pen-fill"></i>
                    <span>Add/Edit Reservation</span>
                </a>
            </li>
            <li class="sidebar-item  ">
                <a href="Guests.aspx" class='sidebar-link'>
                    <i class="bi bi-person-fill"></i>
                    <span>Guests</span>
                </a>
            </li>
            <li class="sidebar-title">Rooms</li>
            <li
                class="sidebar-item active">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-journal-check"></i>
                    <span>List Of Rooms/Add/edit</span>
                </a>
            </li>
       
        
            
        </ul>
    </div>
</div>
        </div>
        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>
            
            <div class="page-heading">
                <div class="page-title">
                    <div class="row">
                        <div class="col-12 col-md-6 order-md-1 order-last">
                            <h3>Rooms</h3>
                            <p class="text-subtitle text-muted">Rooms details</p>
                        </div>
                        <div class="col-12 col-md-6 order-md-2 order-first">
                            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Room</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Rooms Details</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
                <br><br>
<!-- // Basic multiple Column Form section start -->
<section id="multiple-column-form">
    <div class="row match-height">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Room Details</h4>
                </div>
          
            <div class="card-body">
                <asp:GridView ID="GridView1" CssClass="table"  CssId="table1" runat="server" GridLines="Horizontal" CellPadding="1">
    

        
                                </asp:GridView>
                    </div>
                </div>
          
                <div class="card-content">
                    <div class="card-body">
                                                 
                                <div class="col-12 d-flex justify-content-end">
                                    <asp:Button ID="Enter" runat="server" class="btn btn-primary me-1 mb-1" Text="Add New Room" OnClick="Enter_Click"></asp:Button>
                                
                                </div>
                            </div>
                        </form>
                        </form>
            </div>
        </div>
    </div>
</section>






</div>
            <footer>
                <div class="footer clearfix mb-0 text-muted">

                    <div class="float-end">
                        <p>Developed<span class="text-danger"></span> by Andrei Parquez</a></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/app.js"></script>
    
<!-- Need: Apexcharts -->
<script src="assets/extensions/apexcharts/apexcharts.min.js"></script>
<script src="assets/js/pages/dashboard.js"></script>

 <script src="assets/extensions/jquery/jquery.min.js"></script>
<script src="https://cdn.datatables.net/v/bs5/dt-1.12.1/datatables.min.js"></script>
<script src="assets/js/pages/datatables.js"></script>

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
</form>


    <script>
        $(document).ready(function () {
            $("table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>
</body>

</html>

