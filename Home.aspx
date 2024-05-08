<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Admin._try" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Hotel Transylvania</title>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="stylesheet" href="assets/css/main/app.css">
    <link rel="stylesheet" href="assets/css/main/app-dark.css">
    <link rel="shortcut icon" href="assets/images/logo/favicon.svg" type="image/x-icon">
    <link rel="shortcut icon" href="assets/images/logo/favicon.png" type="image/png">
    
<link rel="stylesheet" href="assets/css/shared/iconly.css">

<style>
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
        
      }
      #web:hover{
          transform:scale(1.1);
          transition:1s;
           filter: none;
            filter: grayscale(0%);

      }
      #web{
          height:390px; width:810px;align-items:center;display:flex;border-radius:10px;
          filter: grayscale(80%);
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
      
      .slider {
        overflow: hidden;
        background-color: white;
        margin: 0 15px;
        height: 80px;
        width: 20px;
        border-radius: 30px;
        box-shadow: 15px 15px 20px rgba(0, 0, 0, 0.1), -15px -15px 30px #fff,
          inset -5px -5px 10px rgba(0, 0, 255, 0.1),
          inset 5px 5px 10px rgba(0, 0, 0, 0.1);
        position: relative;
      }
      
      .slider::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        height: 20px;
        width: 20px;
        border-radius: 100%;
        box-shadow: inset 0px 0px 0px rgba(0, 0, 0, 0.3), 0px 420px 0 400px #2697f3,
          inset 0px 0px 0px rgba(0, 0, 0, 0.1);
        animation: animate_2 2.5s ease-in-out infinite;
        animation-delay: calc(-0.5s * var(--i));
      }
      
      @keyframes animate_2 {
        0% {
          transform: translateY(250px);
          filter: hue-rotate(0deg);
        }
      
        50% {
          transform: translateY(0);
        }
      
        100% {
          transform: translateY(250px);
          filter: hue-rotate(180deg);
        }
      }
      
      
       
            
    </style>


</head>
<body id="page-top">
    <form id="form1" runat="server">

<!-- loader -->

        <div class="load">
  
    <section class="loader">

        <div class="slider" style="--i:0">
        </div>
        <div class="slider" style="--i:1">
        </div>
        <div class="slider" style="--i:2">
        </div>
        <div class="slider" style="--i:3">
        </div>
        <div class="slider" style="--i:4">
        </div>
      </section>
    
    
    

</div>

<!-- Page Wrapper -->
    



         <div id="app">
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
    <div class="sidebar-header position-relative">
        <div class="d-flex justify-content-between align-items-center">
            <div class="logo">
                <a href="index.html"><h5>Hotel Transylvania</h5></a>
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
                class="sidebar-item active ">
                <a href="#" class='sidebar-link'>
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
            
            <li class="sidebar-item  ">
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
                class="sidebar-item">
                <a href="Rooms.aspx" class='sidebar-link'>
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
    <h3>Hotel Analytics</h3>
</div>
<div class="page-content">
    <section class="row">
        <div class="col-12 col-lg-9">
            <div class="row">
                <div class="col-6 col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body px-4 py-4-5">
                            <div class="row">
                                <div class="col-md-4 col-lg-12 col-xl-12 col-xxl-5 d-flex justify-content-start ">
                                    <div class="stats-icon purple mb-2">
                                        <i class="iconly-boldCalendar"></i>
                                    </div>
                                </div>
                                <div class="col-md-8 col-lg-12 col-xl-12 col-xxl-7">
                                    <h6 class="text-subtitle text-muted">Total Booking</h6>
                                    <h6 class="font-extrabold mb-0"><asp:Label ID="RLabel" runat="server"></asp:Label></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body px-4 py-4-5">
                            <div class="row">
                                <div class="col-md-4 col-lg-12 col-xl-12 col-xxl-5 d-flex justify-content-start ">
                                    <div class="stats-icon blue mb-2">
                                        <i class="iconly-boldHome"></i>
                                    </div>
                                </div>
                                <div class="col-md-8 col-lg-12 col-xl-12 col-xxl-7">
                                    <h6 class="text-muted font-semibold">Available Rooms</h6>
                                    <h6 class="font-extrabold mb-0"><asp:Label ID="lblAvailableRooms" runat="server"></asp:Label>/3</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body px-4 py-4-5">
                            <div class="row">
                                <div class="col-md-4 col-lg-12 col-xl-12 col-xxl-5 d-flex justify-content-start ">
                                    <div class="stats-icon green mb-2">
                                        <i class="iconly-boldWallet"></i>
                                    </div>
                                </div>
                                <div class="col-md-8 col-lg-12 col-xl-12 col-xxl-7">
                                    <h6 class="text-muted font-semibold">Revenue</h6>
                                    <h6 class="font-extrabold mb-0"><asp:Label ID="LabelTotalCost" runat="server"></asp:Label></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body px-4 py-4-5">
                            <div class="row">
                                <div class="col-md-4 col-lg-12 col-xl-12 col-xxl-5 d-flex justify-content-start ">
                                    <div class="stats-icon red mb-2">
                                        <i class="iconly-boldUser"></i>
                                    </div>
                                </div>
                                <div class="col-md-8 col-lg-12 col-xl-12 col-xxl-7">
                                    <h6 class="text-muted font-semibold">Staffs</h6>
                                    <h6 class="font-extrabold mb-0">4</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Reservations in Months</h4>
                        </div>
                         <canvas id="reservationChart"></canvas>
                      </div></div>
                
            </div>
            
        </div>
        <div class="col-12 col-lg-3">
            <div class="card">
                <div class="card-body py-4 px-4">
                    <div class="d-flex align-items-center">
                        <div class="avatar avatar-xl">
                            <img src="assets/images/faces/9.jpg" alt="Face 1">
                        </div>
                        <div class="ms-3 name">
                            <h5 class="font-bold">Hotelier</h5>
                            <h6 class="text-muted mb-0">@admin</h6>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h4>Staffs/Admin</h4>
                </div>
                <div class="card-content pb-4">
                    <div class="recent-message d-flex px-4 py-3">
                        <div class="avatar avatar-lg">
                            <img src="assets/images/faces/9.jpg">
                        </div>
                        <div class="name ms-4">
                            <h5 class="mb-1">Hotelier2</h5>
                            <h6 class="text-muted mb-0">@johnducky</h6>
                        </div>
                    </div>
                    <div class="recent-message d-flex px-4 py-3">
                        <div class="avatar avatar-lg">
                            <img src="assets/images/faces/9.jpg">
                        </div>
                        <div class="name ms-4">
                            <h5 class="mb-1">Hotelier3</h5>
                            <h6 class="text-muted mb-0">@imdean</h6>
                        </div>
                    </div>
                    <div class="recent-message d-flex px-4 py-3">
                        <div class="avatar avatar-lg">
                            <img src="assets/images/faces/9.jpg">
                        </div>
                        <div class="name ms-4">
                            <h5 class="mb-1">Hotelier4</h5>
                            <h6 class="text-muted mb-0">@dodoljohn</h6>
                        </div>
                    </div>
                    <div class="px-4">
                       <a href="login.aspx" class='btn btn-block btn-xl btn-outline-primary font-bold mt-3'>Logout</a>
                    </div>
                </div>
            
     
    </section>
</div>
            <footer>
                <div class="footer clearfix mb-0 text-muted">

                </div>
            </footer>
        </div>
    </div>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/app.js"></script>
    
<!-- Need: Apexcharts -->
<script src="assets/extensions/apexcharts/apexcharts.min.js"></script>
<script src="assets/js/pages/dashboard.js"></script>

<script>
    window.addEventListener("load", () => {
        const loader = document.querySelector(".load");

        loader.classList.add("load--hidden");

        loader.addEventListener("transitionend", () => {
            document.body.removeChild(load);
        });
    });

</script>
       <script>
           const reservationData = {
               labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August','September'],
               datasets: [{
                   label: 'Reservation Count',
                   data: [5, 8, 2, 3,1, 10,7,6,3,7],
                   backgroundColor: '#C5B4E3',
                   borderColor: '#C5B4E3',
                   borderWidth: 1
               }]
           };

           // Get the canvas element
           const canvas = document.getElementById('reservationChart');

           // Create the chart
           const chart = new Chart(canvas, {
               type: 'bar',
               data: reservationData,
               options: {
                   scales: {
                       y: {
                           beginAtZero: true,
                           ticks: {
                               stepSize: 10
                           }
                       }
                   }
               }
           });
       </script>
</form>
  
</body>

