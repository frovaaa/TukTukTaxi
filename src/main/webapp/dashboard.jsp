<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="../src/main/webapp/assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../src/main/webapp/assets/img/favicon.png">
    <title>
        Dashboard Dipendente
    </title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet"/>
    <!-- Nucleo Icons -->
    <link href="assets/css/nucleo-icons.css" rel="stylesheet"/>
    <link href="assets/css/nucleo-svg.css" rel="stylesheet"/>
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="assets/css/nucleo-svg.css" rel="stylesheet"/>
    <!-- CSS Files -->
    <link id="pagestyle" href="assets/css/soft-ui-dashboard.css?v=1.0.5" rel="stylesheet"/>
</head>

<body class="g-sidenav-show  bg-gray-100">
<aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3 "
       id="sidenav-main">
    <div class="sidenav-header">
        <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
           aria-hidden="true" id="iconSidenav"></i>
        <a class="navbar-brand m-0" href=" https://demos.creative-tim.com/soft-ui-dashboard/pages/dashboard.html "
           target="_blank">
            <img src="../src/main/webapp/assets/img/logo-ct.svg" class="navbar-brand-img h-100" alt="main_logo">
            <span class="ms-1 font-weight-bold">TukTuk Taxi</span>
        </a>
    </div>
    <hr class="horizontal dark mt-0">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link  active" href="dashboardEmployee.html">
                    <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-house" viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
                                  d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                            <path fill-rule="evenodd"
                                  d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
                        </svg>
                    </div>
                    <span class="nav-link-text ms-1">Dashboard</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="listaDipendenti_servlet">
                    <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-people-fill" viewBox="0 0 16 16">
                            <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                            <path fill-rule="evenodd"
                                  d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
                            <path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
                        </svg>
                    </div>
                    <span class="nav-link-text ms-1">Lista Dipendenti</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link  " href="tables.html">
                    <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-table" viewBox="0 0 16 16">
                            <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z"/>
                        </svg>
                    </div>
                    <span class="nav-link-text ms-1">Tables</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link  " href="billing.html">
                    <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-credit-card-2-back-fill" viewBox="0 0 16 16">
                            <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v5H0V4zm11.5 1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h2a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-2zM0 11v1a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-1H0z"/>
                        </svg>
                    </div>
                    <span class="nav-link-text ms-1">Billing</span>
                </a>
            </li>
            <li class="nav-item mt-3">
                <h6 class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6">Account pages</h6>
            </li>
            <li class="nav-item">
                <a class="nav-link  " href="profile.html">
                    <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                        <svg width="12px" height="12px" viewBox="0 0 46 42" version="1.1"
                             xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <title>customer-support</title>
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-1717.000000, -291.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                    <g transform="translate(1716.000000, 291.000000)">
                                        <g transform="translate(1.000000, 0.000000)">
                                            <path class="color-background opacity-6"
                                                  d="M45,0 L26,0 C25.447,0 25,0.447 25,1 L25,20 C25,20.379 25.214,20.725 25.553,20.895 C25.694,20.965 25.848,21 26,21 C26.212,21 26.424,20.933 26.6,20.8 L34.333,15 L45,15 C45.553,15 46,14.553 46,14 L46,1 C46,0.447 45.553,0 45,0 Z"></path>
                                            <path class="color-background"
                                                  d="M22.883,32.86 C20.761,32.012 17.324,31 13,31 C8.676,31 5.239,32.012 3.116,32.86 C1.224,33.619 0,35.438 0,37.494 L0,41 C0,41.553 0.447,42 1,42 L25,42 C25.553,42 26,41.553 26,41 L26,37.494 C26,35.438 24.776,33.619 22.883,32.86 Z"></path>
                                            <path class="color-background"
                                                  d="M13,28 C17.432,28 21,22.529 21,18 C21,13.589 17.411,10 13,10 C8.589,10 5,13.589 5,18 C5,22.529 8.568,28 13,28 Z"></path>
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </div>
                    <span class="nav-link-text ms-1">Profile</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link  " href="sign-in.html">
                    <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                        <svg width="12px" height="12px" viewBox="0 0 40 44" version="1.1"
                             xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <title>document</title>
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-1870.000000, -591.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                    <g transform="translate(1716.000000, 291.000000)">
                                        <g transform="translate(154.000000, 300.000000)">
                                            <path class="color-background opacity-6"
                                                  d="M40,40 L36.3636364,40 L36.3636364,3.63636364 L5.45454545,3.63636364 L5.45454545,0 L38.1818182,0 C39.1854545,0 40,0.814545455 40,1.81818182 L40,40 Z"></path>
                                            <path class="color-background"
                                                  d="M30.9090909,7.27272727 L1.81818182,7.27272727 C0.814545455,7.27272727 0,8.08727273 0,9.09090909 L0,41.8181818 C0,42.8218182 0.814545455,43.6363636 1.81818182,43.6363636 L30.9090909,43.6363636 C31.9127273,43.6363636 32.7272727,42.8218182 32.7272727,41.8181818 L32.7272727,9.09090909 C32.7272727,8.08727273 31.9127273,7.27272727 30.9090909,7.27272727 Z M18.1818182,34.5454545 L7.27272727,34.5454545 L7.27272727,30.9090909 L18.1818182,30.9090909 L18.1818182,34.5454545 Z M25.4545455,27.2727273 L7.27272727,27.2727273 L7.27272727,23.6363636 L25.4545455,23.6363636 L25.4545455,27.2727273 Z M25.4545455,20 L7.27272727,20 L7.27272727,16.3636364 L25.4545455,16.3636364 L25.4545455,20 Z"></path>
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </div>
                    <span class="nav-link-text ms-1">Sign In</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link  " href="sign-up.html">
                    <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                        <svg width="12px" height="20px" viewBox="0 0 40 40" version="1.1"
                             xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <title>spaceship</title>
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-1720.000000, -592.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                    <g transform="translate(1716.000000, 291.000000)">
                                        <g transform="translate(4.000000, 301.000000)">
                                            <path class="color-background"
                                                  d="M39.3,0.706666667 C38.9660984,0.370464027 38.5048767,0.192278529 38.0316667,0.216666667 C14.6516667,1.43666667 6.015,22.2633333 5.93166667,22.4733333 C5.68236407,23.0926189 5.82664679,23.8009159 6.29833333,24.2733333 L15.7266667,33.7016667 C16.2013871,34.1756798 16.9140329,34.3188658 17.535,34.065 C17.7433333,33.98 38.4583333,25.2466667 39.7816667,1.97666667 C39.8087196,1.50414529 39.6335979,1.04240574 39.3,0.706666667 Z M25.69,19.0233333 C24.7367525,19.9768687 23.3029475,20.2622391 22.0572426,19.7463614 C20.8115377,19.2304837 19.9992882,18.0149658 19.9992882,16.6666667 C19.9992882,15.3183676 20.8115377,14.1028496 22.0572426,13.5869719 C23.3029475,13.0710943 24.7367525,13.3564646 25.69,14.31 C26.9912731,15.6116662 26.9912731,17.7216672 25.69,19.0233333 L25.69,19.0233333 Z"></path>
                                            <path class="color-background opacity-6"
                                                  d="M1.855,31.4066667 C3.05106558,30.2024182 4.79973884,29.7296005 6.43969145,30.1670277 C8.07964407,30.6044549 9.36054508,31.8853559 9.7979723,33.5253085 C10.2353995,35.1652612 9.76258177,36.9139344 8.55833333,38.11 C6.70666667,39.9616667 0,40 0,40 C0,40 0,33.2566667 1.855,31.4066667 Z"></path>
                                            <path class="color-background opacity-6"
                                                  d="M17.2616667,3.90166667 C12.4943643,3.07192755 7.62174065,4.61673894 4.20333333,8.04166667 C3.31200265,8.94126033 2.53706177,9.94913142 1.89666667,11.0416667 C1.5109569,11.6966059 1.61721591,12.5295394 2.155,13.0666667 L5.47,16.3833333 C8.55036617,11.4946947 12.5559074,7.25476565 17.2616667,3.90166667 L17.2616667,3.90166667 Z"></path>
                                            <path class="color-background opacity-6"
                                                  d="M36.0983333,22.7383333 C36.9280725,27.5056357 35.3832611,32.3782594 31.9583333,35.7966667 C31.0587397,36.6879974 30.0508686,37.4629382 28.9583333,38.1033333 C28.3033941,38.4890431 27.4704606,38.3827841 26.9333333,37.845 L23.6166667,34.53 C28.5053053,31.4496338 32.7452344,27.4440926 36.0983333,22.7383333 L36.0983333,22.7383333 Z"></path>
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </div>
                    <span class="nav-link-text ms-1">Sign Up</span>
                </a>
            </li>
        </ul>
    </div>
</aside>
<main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur"
         navbar-scroll="true">
        <div class="container-fluid py-1 px-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                    <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a>
                    </li>
                    <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Dashboard</li>
                </ol>
                <h6 class="font-weight-bolder mb-0">Dashboard</h6>
            </nav>
            <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                </div>
                <ul class="navbar-nav  justify-content-end">
                    <li class="nav-item d-flex align-items-center">
                        <a href="javascript:;" class="nav-link text-body font-weight-bold px-0">
                            <i class="fa fa-user me-sm-1"></i>
                            <span class="d-sm-inline d-none">Sign In</span>
                        </a>
                    </li>
                    <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
                        <a href="javascript:;" class="nav-link text-body p-0" id="iconNavbarSidenav">
                            <div class="sidenav-toggler-inner">
                                <i class="sidenav-toggler-line"></i>
                                <i class="sidenav-toggler-line"></i>
                                <i class="sidenav-toggler-line"></i>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item px-3 d-flex align-items-center"></li>
                    <li class="nav-item dropdown pe-2 d-flex align-items-center">
                        <a href="javascript:;" class="nav-link text-body p-0" id="dropdownMenuButton"
                           data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fa fa-bell cursor-pointer"></i>
                        </a>
                        <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4"
                            aria-labelledby="dropdownMenuButton">
                            <li class="mb-2">
                                <a class="dropdown-item border-radius-md" href="javascript:;">
                                    <div class="d-flex py-1">
                                        <div class="my-auto">
                                            <img src="../src/main/webapp/assets/img/team-2.jpg"
                                                 class="avatar avatar-sm  me-3 ">
                                        </div>
                                        <div class="d-flex flex-column justify-content-center">
                                            <h6 class="text-sm font-weight-normal mb-1">
                                                <span class="font-weight-bold">New message</span> from Laur
                                            </h6>
                                            <p class="text-xs text-secondary mb-0 ">
                                                <i class="fa fa-clock me-1"></i>
                                                13 minutes ago
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="mb-2">
                                <a class="dropdown-item border-radius-md" href="javascript:;">
                                    <div class="d-flex py-1">
                                        <div class="my-auto">
                                            <img src="../src/main/webapp/assets/img/small-logos/logo-spotify.svg"
                                                 class="avatar avatar-sm bg-gradient-dark  me-3 ">
                                        </div>
                                        <div class="d-flex flex-column justify-content-center">
                                            <h6 class="text-sm font-weight-normal mb-1">
                                                <span class="font-weight-bold">New album</span> by Travis Scott
                                            </h6>
                                            <p class="text-xs text-secondary mb-0 ">
                                                <i class="fa fa-clock me-1"></i>
                                                1 day
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item border-radius-md" href="javascript:;">
                                    <div class="d-flex py-1">
                                        <div class="avatar avatar-sm bg-gradient-secondary  me-3  my-auto">
                                            <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1"
                                                 xmlns="http://www.w3.org/2000/svg"
                                                 xmlns:xlink="http://www.w3.org/1999/xlink">
                                                <title>credit-card</title>
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF"
                                                       fill-rule="nonzero">
                                                        <g transform="translate(1716.000000, 291.000000)">
                                                            <g transform="translate(453.000000, 454.000000)">
                                                                <path class="color-background"
                                                                      d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"
                                                                      opacity="0.593633743"></path>
                                                                <path class="color-background"
                                                                      d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </g>
                                            </svg>
                                        </div>
                                        <div class="d-flex flex-column justify-content-center">
                                            <h6 class="text-sm font-weight-normal mb-1">
                                                Payment successfully completed
                                            </h6>
                                            <p class="text-xs text-secondary mb-0 ">
                                                <i class="fa fa-clock me-1"></i>
                                                2 days
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Navbar -->
    <div class="container-fluid py-4">
        <!--Grafico Guadagni Mensili-->
        <div class="row">
            <div class="col-xl-12 col-sm-6 mb-xl-0 mb-4">
                <div class="card">
                    <div class="card-body p-3">
                        <div class="row">
                            <div class="col-8">
                                <div class="numbers">
                                    <p class="text-sm mb-0 text-capitalize font-weight-bold">Guadagni Mensili</p>
                                    <h5 class="font-weight-bolder mb-0">
                                        €15,555
                                        <!--<span class="text-success text-sm font-weight-bolder">+55%</span>-->
                                    </h5>
                                </div>
                            </div>
                            <div class="col-4 text-end">
                                <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                                    <i class="ni ni-money-coins text-lg opacity-10" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="card mb-3">
                                <div class="card-body p-3">
                                    <div class="chart">
                                        <canvas id="moneyChart" class="chart-canvas" height="300px"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Sezione Corse-->
        <div class="row mt-4">
            <div class="col-xl-12 col-sm-6 mb-xl-0 mb-4">
                <div class="card">
                    <div class="card-body p-3">
                        <!--Totale Corse Mensili-->
                        <div class="row">
                            <div class="col-8">
                                <div class="numbers">
                                    <p class="text-sm mb-0 text-capitalize font-weight-bold">Corse Mensili</p>
                                    <h5 class="font-weight-bolder mb-0">
                                        13
                                        <!--<span class="text-success text-sm font-weight-bolder">+55%</span>-->
                                    </h5>
                                </div>
                            </div>
                            <div class="col-4 text-end">
                                <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                                    <i class="ni ni-delivery-fast text-lg opacity-10" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                        <!--Tabella Corse Registrate-->
                        <div class="row">
                            <div class="card">
                                <div class="table-responsive"
                                     style="max-height: 399px; overflow-y: scroll; overflow-x: hidden;">
                                    <table class="table align-items-center mb-0"
                                           style="position: sticky; top: 0; width: 100%;">
                                        <thead>
                                        <tr>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Numero Corsa
                                            </th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                TukTuk
                                            </th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Data Inizio
                                            </th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Data Fine
                                            </th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Chilometri
                                            </th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Tariffa
                                            </th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Opzioni
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <!--TODO: Inserire corse effettive da DB-->
                                        <tr class="text-center">
                                            <td>
                                                <div class="d-flex px-2">
                                                    <div class="my-auto">
                                                        <h6 class="mb-0 text-sm">Corsa n.
                                                            <script>document.write(Math.floor((Math.random() * 100) + 1))</script>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <!--TargaTukTuk-->
                                                <p class="text-xs font-weight-bold mb-0">DHFUI24</p>
                                            </td>
                                            <td>
                                                <!--DataInizio-->
                                                <p class="text-xs font-weight-bold mb-0">11:25:31</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--DataFine-->
                                                <p class="text-xs font-weight-bold mb-0">11:45:17</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--Chilometri-->
                                                <p class="text-xs font-weight-bold mb-0">10 Km</p>
                                            </td>
                                            <td>
                                                <!--Tariffa-->
                                                <p class="text-xs font-weight-bold mb-0">1,25 € / Km</p>
                                            </td>
                                            <td>
                                                <!--Modifica-->
                                                <button href="#" type="button"
                                                        class="btn bg-gradient-primary mb-0 text-center">
                                                    Modifica
                                                </button>
                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <div class="d-flex px-2">
                                                    <div class="my-auto">
                                                        <h6 class="mb-0 text-sm">Corsa n.
                                                            <script>document.write(Math.floor((Math.random() * 100) + 1))</script>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <!--TargaTukTuk-->
                                                <p class="text-xs font-weight-bold mb-0">DHFUI24</p>
                                            </td>
                                            <td>
                                                <!--DataInizio-->
                                                <p class="text-xs font-weight-bold mb-0">11:25:31</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--DataFine-->
                                                <p class="text-xs font-weight-bold mb-0">11:45:17</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--Chilometri-->
                                                <p class="text-xs font-weight-bold mb-0">10 Km</p>
                                            </td>
                                            <td>
                                                <!--Tariffa-->
                                                <p class="text-xs font-weight-bold mb-0">1,25 € / Km</p>
                                            </td>
                                            <td>
                                                <!--Modifica-->
                                                <button href="#" type="button"
                                                        class="btn bg-gradient-primary mb-0 text-center">
                                                    Modifica
                                                </button>
                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <div class="d-flex px-2">
                                                    <div class="my-auto">
                                                        <h6 class="mb-0 text-sm">Corsa n.
                                                            <script>document.write(Math.floor((Math.random() * 100) + 1))</script>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <!--TargaTukTuk-->
                                                <p class="text-xs font-weight-bold mb-0">DHFUI24</p>
                                            </td>
                                            <td>
                                                <!--DataInizio-->
                                                <p class="text-xs font-weight-bold mb-0">11:25:31</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--DataFine-->
                                                <p class="text-xs font-weight-bold mb-0">11:45:17</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--Chilometri-->
                                                <p class="text-xs font-weight-bold mb-0">10 Km</p>
                                            </td>
                                            <td>
                                                <!--Tariffa-->
                                                <p class="text-xs font-weight-bold mb-0">1,25 € / Km</p>
                                            </td>
                                            <td>
                                                <!--Modifica-->
                                                <button href="#" type="button"
                                                        class="btn bg-gradient-primary mb-0 text-center">
                                                    Modifica
                                                </button>
                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <div class="d-flex px-2">
                                                    <div class="my-auto">
                                                        <h6 class="mb-0 text-sm">Corsa n.
                                                            <script>document.write(Math.floor((Math.random() * 100) + 1))</script>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <!--TargaTukTuk-->
                                                <p class="text-xs font-weight-bold mb-0">DHFUI24</p>
                                            </td>
                                            <td>
                                                <!--DataInizio-->
                                                <p class="text-xs font-weight-bold mb-0">11:25:31</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--DataFine-->
                                                <p class="text-xs font-weight-bold mb-0">11:45:17</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--Chilometri-->
                                                <p class="text-xs font-weight-bold mb-0">10 Km</p>
                                            </td>
                                            <td>
                                                <!--Tariffa-->
                                                <p class="text-xs font-weight-bold mb-0">1,25 € / Km</p>
                                            </td>
                                            <td>
                                                <!--Modifica-->
                                                <button href="#" type="button"
                                                        class="btn bg-gradient-primary mb-0 text-center">
                                                    Modifica
                                                </button>
                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <div class="d-flex px-2">
                                                    <div class="my-auto">
                                                        <h6 class="mb-0 text-sm">Corsa n.
                                                            <script>document.write(Math.floor((Math.random() * 100) + 1))</script>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <!--TargaTukTuk-->
                                                <p class="text-xs font-weight-bold mb-0">DHFUI24</p>
                                            </td>
                                            <td>
                                                <!--DataInizio-->
                                                <p class="text-xs font-weight-bold mb-0">11:25:31</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--DataFine-->
                                                <p class="text-xs font-weight-bold mb-0">11:45:17</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--Chilometri-->
                                                <p class="text-xs font-weight-bold mb-0">10 Km</p>
                                            </td>
                                            <td>
                                                <!--Tariffa-->
                                                <p class="text-xs font-weight-bold mb-0">1,25 € / Km</p>
                                            </td>
                                            <td>
                                                <!--Modifica-->
                                                <button href="#" type="button"
                                                        class="btn bg-gradient-primary mb-0 text-center">
                                                    Modifica
                                                </button>
                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <div class="d-flex px-2">
                                                    <div class="my-auto">
                                                        <h6 class="mb-0 text-sm">Corsa n.
                                                            <script>document.write(Math.floor((Math.random() * 100) + 1))</script>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <!--TargaTukTuk-->
                                                <p class="text-xs font-weight-bold mb-0">DHFUI24</p>
                                            </td>
                                            <td>
                                                <!--DataInizio-->
                                                <p class="text-xs font-weight-bold mb-0">11:25:31</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--DataFine-->
                                                <p class="text-xs font-weight-bold mb-0">11:45:17</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--Chilometri-->
                                                <p class="text-xs font-weight-bold mb-0">10 Km</p>
                                            </td>
                                            <td>
                                                <!--Tariffa-->
                                                <p class="text-xs font-weight-bold mb-0">1,25 € / Km</p>
                                            </td>
                                            <td>
                                                <!--Modifica-->
                                                <button href="#" type="button"
                                                        class="btn bg-gradient-primary mb-0 text-center">
                                                    Modifica
                                                </button>
                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <div class="d-flex px-2">
                                                    <div class="my-auto">
                                                        <h6 class="mb-0 text-sm">Corsa n.
                                                            <script>document.write(Math.floor((Math.random() * 100) + 1))</script>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <!--TargaTukTuk-->
                                                <p class="text-xs font-weight-bold mb-0">DHFUI24</p>
                                            </td>
                                            <td>
                                                <!--DataInizio-->
                                                <p class="text-xs font-weight-bold mb-0">11:25:31</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--DataFine-->
                                                <p class="text-xs font-weight-bold mb-0">11:45:17</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--Chilometri-->
                                                <p class="text-xs font-weight-bold mb-0">10 Km</p>
                                            </td>
                                            <td>
                                                <!--Tariffa-->
                                                <p class="text-xs font-weight-bold mb-0">1,25 € / Km</p>
                                            </td>
                                            <td>
                                                <!--Modifica-->
                                                <button href="#" type="button"
                                                        class="btn bg-gradient-primary mb-0 text-center">
                                                    Modifica
                                                </button>
                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <div class="d-flex px-2">
                                                    <div class="my-auto">
                                                        <h6 class="mb-0 text-sm">Corsa n.
                                                            <script>document.write(Math.floor((Math.random() * 100) + 1))</script>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <!--TargaTukTuk-->
                                                <p class="text-xs font-weight-bold mb-0">DHFUI24</p>
                                            </td>
                                            <td>
                                                <!--DataInizio-->
                                                <p class="text-xs font-weight-bold mb-0">11:25:31</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--DataFine-->
                                                <p class="text-xs font-weight-bold mb-0">11:45:17</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--Chilometri-->
                                                <p class="text-xs font-weight-bold mb-0">10 Km</p>
                                            </td>
                                            <td>
                                                <!--Tariffa-->
                                                <p class="text-xs font-weight-bold mb-0">1,25 € / Km</p>
                                            </td>
                                            <td>
                                                <!--Modifica-->
                                                <button href="#" type="button"
                                                        class="btn bg-gradient-primary mb-0 text-center">
                                                    Modifica
                                                </button>
                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <div class="d-flex px-2">
                                                    <div class="my-auto">
                                                        <h6 class="mb-0 text-sm">Corsa n.
                                                            <script>document.write(Math.floor((Math.random() * 100) + 1))</script>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <!--TargaTukTuk-->
                                                <p class="text-xs font-weight-bold mb-0">DHFUI24</p>
                                            </td>
                                            <td>
                                                <!--DataInizio-->
                                                <p class="text-xs font-weight-bold mb-0">11:25:31</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--DataFine-->
                                                <p class="text-xs font-weight-bold mb-0">11:45:17</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--Chilometri-->
                                                <p class="text-xs font-weight-bold mb-0">10 Km</p>
                                            </td>
                                            <td>
                                                <!--Tariffa-->
                                                <p class="text-xs font-weight-bold mb-0">1,25 € / Km</p>
                                            </td>
                                            <td>
                                                <!--Modifica-->
                                                <button href="#" type="button"
                                                        class="btn bg-gradient-primary mb-0 text-center">
                                                    Modifica
                                                </button>
                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <div class="d-flex px-2">
                                                    <div class="my-auto">
                                                        <h6 class="mb-0 text-sm">Corsa n.
                                                            <script>document.write(Math.floor((Math.random() * 100) + 1))</script>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <!--TargaTukTuk-->
                                                <p class="text-xs font-weight-bold mb-0">DHFUI24</p>
                                            </td>
                                            <td>
                                                <!--DataInizio-->
                                                <p class="text-xs font-weight-bold mb-0">11:25:31</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--DataFine-->
                                                <p class="text-xs font-weight-bold mb-0">11:45:17</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--Chilometri-->
                                                <p class="text-xs font-weight-bold mb-0">10 Km</p>
                                            </td>
                                            <td>
                                                <!--Tariffa-->
                                                <p class="text-xs font-weight-bold mb-0">1,25 € / Km</p>
                                            </td>
                                            <td>
                                                <!--Modifica-->
                                                <button href="#" type="button"
                                                        class="btn bg-gradient-primary mb-0 text-center">
                                                    Modifica
                                                </button>
                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <div class="d-flex px-2">
                                                    <div class="my-auto">
                                                        <h6 class="mb-0 text-sm">Corsa n.
                                                            <script>document.write(Math.floor((Math.random() * 100) + 1))</script>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <!--TargaTukTuk-->
                                                <p class="text-xs font-weight-bold mb-0">DHFUI24</p>
                                            </td>
                                            <td>
                                                <!--DataInizio-->
                                                <p class="text-xs font-weight-bold mb-0">11:25:31</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--DataFine-->
                                                <p class="text-xs font-weight-bold mb-0">11:45:17</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--Chilometri-->
                                                <p class="text-xs font-weight-bold mb-0">10 Km</p>
                                            </td>
                                            <td>
                                                <!--Tariffa-->
                                                <p class="text-xs font-weight-bold mb-0">1,25 € / Km</p>
                                            </td>
                                            <td>
                                                <!--Modifica-->
                                                <button href="#" type="button"
                                                        class="btn bg-gradient-primary mb-0 text-center">
                                                    Modifica
                                                </button>
                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <div class="d-flex px-2">
                                                    <div class="my-auto">
                                                        <h6 class="mb-0 text-sm">Corsa n.
                                                            <script>document.write(Math.floor((Math.random() * 100) + 1))</script>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <!--TargaTukTuk-->
                                                <p class="text-xs font-weight-bold mb-0">DHFUI24</p>
                                            </td>
                                            <td>
                                                <!--DataInizio-->
                                                <p class="text-xs font-weight-bold mb-0">11:25:31</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--DataFine-->
                                                <p class="text-xs font-weight-bold mb-0">11:45:17</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--Chilometri-->
                                                <p class="text-xs font-weight-bold mb-0">10 Km</p>
                                            </td>
                                            <td>
                                                <!--Tariffa-->
                                                <p class="text-xs font-weight-bold mb-0">1,25 € / Km</p>
                                            </td>
                                            <td>
                                                <!--Modifica-->
                                                <button href="#" type="button"
                                                        class="btn bg-gradient-primary mb-0 text-center">
                                                    Modifica
                                                </button>
                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <div class="d-flex px-2">
                                                    <div class="my-auto">
                                                        <h6 class="mb-0 text-sm">Corsa n.
                                                            <script>document.write(Math.floor((Math.random() * 100) + 1))</script>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <!--TargaTukTuk-->
                                                <p class="text-xs font-weight-bold mb-0">DHFUI24</p>
                                            </td>
                                            <td>
                                                <!--DataInizio-->
                                                <p class="text-xs font-weight-bold mb-0">11:25:31</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--DataFine-->
                                                <p class="text-xs font-weight-bold mb-0">11:45:17</p>
                                                <p class="text-xs font-weight-bold mb-0">22/04/2022</p>
                                            </td>
                                            <td>
                                                <!--Chilometri-->
                                                <p class="text-xs font-weight-bold mb-0">10 Km</p>
                                            </td>
                                            <td>
                                                <!--Tariffa-->
                                                <p class="text-xs font-weight-bold mb-0">1,25 € / Km</p>
                                            </td>
                                            <td>
                                                <!--Modifica-->
                                                <button href="#" type="button"
                                                        class="btn bg-gradient-primary mb-0 text-center">
                                                    Modifica
                                                </button>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!--Form di inserimento nuova corsa-->
                        <div class="row mt-4">
                            <p class="text-sm mb-0 text-capitalize font-weight-bold">Inserisci nuova corsa</p>
                            <!--TODO: Rendere effettivo l'inserimento-->
                            <form action="#" method="post">
                                <div class="input-group mb-3 mt-2">
                                    <div class="row">
                                        <div class="col">
                                            <label>TukTuk</label>
                                            <!--TODO: Inserire la select di TukTuk-->
                                            <select class="form-select" aria-label="Seleziona il TukTuk">
                                                <option selected>Seleziona il TukTuk</option>
                                                <option value="1">KRU392</option>
                                                <option value="2">ASD231</option>
                                                <option value="3">HJG395</option>
                                            </select>
                                        </div>
                                        <div class="col">
                                            <label>Data Inizio</label>
                                            <input type="datetime-local" class="form-control" placeholder="Data Inizio"
                                                   aria-label="Data Inizio" aria-describedby="button-addon2">
                                        </div>
                                        <div class="col">
                                            <label>Data Fine</label>
                                            <input type="datetime-local" class="form-control" placeholder="Data Fine"
                                                   aria-label="Data Fine" aria-describedby="button-addon2">
                                        </div>
                                        <div class="col">
                                            <label>Chilometri</label>
                                            <input type="text" class="form-control" placeholder="Chilometri"
                                                   aria-label="Chilometri"
                                                   aria-describedby="button-addon2">
                                        </div>
                                        <div class="col">
                                            <label>Tariffa</label>
                                            <input type="text" class="form-control" placeholder="Tariffa"
                                                   aria-label="Tariffa"
                                                   aria-describedby="button-addon2">
                                        </div>
                                        <div class="col">
                                            <label>Conferma inserimento</label>
                                            <br>
                                            <button class="btn btn-outline-primary mb-0" type="submit"
                                                    id="button-addon2">
                                                Inserisci
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<!--   Core JS Files   -->
<script src="../src/main/webapp/assets/js/core/popper.min.js"></script>
<script src="../src/main/webapp/assets/js/core/bootstrap.min.js"></script>
<script src="../src/main/webapp/assets/js/plugins/perfect-scrollbar.min.js"></script>
<script src="../src/main/webapp/assets/js/plugins/smooth-scrollbar.min.js"></script>
<script src="../src/main/webapp/assets/js/plugins/chartjs.min.js"></script>
<script src="../src/main/webapp/assets/js/plugins/sweetalert2.all.min.js"></script>

<script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
        var options = {
            damping: '0.5'
        }
        Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
</script>
<!-- Github buttons -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
<script src="../src/main/webapp/assets/js/soft-ui-dashboard.min.js?v=1.0.5"></script>
<!--Chart-->
<script>
    var ctx = document.getElementById("moneyChart").getContext("2d");

    var gradientStroke1 = ctx.createLinearGradient(0, 230, 0, 50);

    gradientStroke1.addColorStop(1, 'rgba(203,12,159,0.2)');
    gradientStroke1.addColorStop(0.2, 'rgba(72,72,176,0.0)');
    gradientStroke1.addColorStop(0, 'rgba(203,12,159,0)'); //purple colors

    new Chart(ctx, {
        type: "line",
        data: {
            labels: ["Gen", "Feb", "Mar", "Apr", "Mag", "Giu", "Lug", "Ago", "Set", "Ott", "Nov", "Dic"],
            datasets: [
                {
                    label: "Guadagni mensili",
                    tension: 0.4,
                    borderWidth: 0,
                    pointRadius: 0,
                    borderColor: "#cb0c9f",
                    borderWidth: 3,
                    backgroundColor: gradientStroke1,
                    fill: true,
                    data: [1300, 1350, 1250, 1250, 1300, 1200, 1400, 1240, 1345, 1275, 1325, 1320], //TODO: Inserire dati veritieri (non so come)
                    maxBarThickness: 6

                },
            ],
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    display: false,
                }
            },
            interaction: {
                intersect: false,
                mode: 'index',
            },
            scales: {
                y: {
                    grid: {
                        drawBorder: false,
                        display: true,
                        drawOnChartArea: true,
                        drawTicks: false,
                        borderDash: [5, 5]
                    },
                    ticks: {
                        display: true,
                        padding: 10,
                        color: '#79797c',
                        font: {
                            size: 18,
                            family: "Open Sans",
                            style: 'normal',
                            lineHeight: 2
                        },
                    }
                },
                x: {
                    grid: {
                        drawBorder: false,
                        display: false,
                        drawOnChartArea: false,
                        drawTicks: false,
                        borderDash: [5, 5]
                    },
                    ticks: {
                        display: true,
                        color: '#79797c',
                        padding: 20,
                        font: {
                            size: 18,
                            family: "Open Sans",
                            style: 'normal',
                            lineHeight: 2
                        },
                    }
                },
            },
        },
    });
</script>
</body>
</html>