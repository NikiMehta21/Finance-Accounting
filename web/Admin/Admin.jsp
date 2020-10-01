<%-- 
    Document   : Admin
    Created on : 20 Dec, 2018, 3:52:51 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="controller.user_mastercontroller"%>
<%@page import="modal.usermastermodal"%>
<%
    String name = "",id="";
    //.print(session.getAttribute("user"));
    if (session.getAttribute("user") != null) {
        out.print(session.getAttribute("user"));
        id=session.getAttribute("user").toString();
        usermastermodal umModal = new usermastermodal();
        umModal.setuser_id(Integer.parseInt(session.getAttribute("user").toString()));
        user_mastercontroller userccontroller = new user_mastercontroller();

        ResultSet rs = userccontroller.user_mastergetdata(umModal);
        if (rs.next()) {
            name = rs.getString("user_name");
        }

    }

%>
s
<!DOCTYPE html>
<html  class="loading" lang="en" data-textdirection="ltr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta name="description" content="Crypto ICO admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities with bitcoin dashboard.">
        <meta name="keywords" content="admin template, crypto ico admin template, dashboard template, flat admin template, responsive admin template, web app, crypto dashboard, bitcoin dashboard">
        <meta name="author" content="PIXINVENT">
        <title>Financer</title>
        <link rel="apple-touch-icon" href="../app-assets/images/ico/apple-icon-120.png">
        <link rel="shortcut icon" type="image/x-icon" href="https://pixinvent.com/demo/crypto-ico-admin/app-assets/images/ico/favicon.ico">
        <link href="https://fonts.googleapis.com/css?family=Muli:300,300i,400,400i,600,600i,700,700i|Comfortaa:300,400,500,700" rel="stylesheet">
        <!-- BEGIN VENDOR CSS-->
        <link rel="stylesheet" type="text/css" href="../app-assets/css/vendors.min.css">
        <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/charts/chartist.css">
        <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/charts/chartist-plugin-tooltip.css">
        <!-- END VENDOR CSS-->
        <!-- BEGIN MODERN CSS-->
        <link rel="stylesheet" type="text/css" href="../app-assets/css/app.min.css">
        <!-- END MODERN CSS-->
        <!-- BEGIN Page Level CSS-->
        <link rel="stylesheet" type="text/css" href="../app-assets/css/core/menu/menu-types/vertical-compact-menu.min.css">
        <link rel="stylesheet" type="text/css" href="../app-assets/vendors/css/cryptocoins/cryptocoins.css">
        <link rel="stylesheet" type="text/css" href="../app-assets/css/pages/timeline.min.css">
        <link rel="stylesheet" type="text/css" href="../app-assets/css/pages/dashboard-ico.min.css">
        <!-- END Page Level CSS-->
        <!-- BEGIN Custom CSS-->
        <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
        <!-- END Custom CSS-->
        <script src="../js/jquery.js" type="text/javascript"></script>
        <script src="../js/getFilePreview.js" type="text/javascript"></script>
    </head>
    <body class="vertical-layout vertical-compact-menu 2-columns   menu-expanded fixed-navbar" data-open="click" data-menu="vertical-compact-menu" data-col="2-columns">
        <form method="post">
            <!-- fixed-top-->
            <nav class="header-navbar navbar-expand-md navbar navbar-with-menu navbar-without-dd-arrow fixed-top navbar-light navbar-bg-color">
                <div class="navbar-wrapper">
                    <div class="navbar-header d-md-none">
                        <ul class="nav navbar-nav flex-row">
                            <li class="nav-item mobile-menu d-md-none mr-auto"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i class="ft-menu font-large-1"></i></a></li>
                            <li class="nav-item d-md-none"><a class="navbar-brand" href="index.html"><img class="brand-logo d-none d-md-block" alt="crypto ico admin logo" src="../app-assets/images/logo/logo.png"><img class="brand-logo d-sm-block d-md-none" alt="crypto ico admin logo sm" src="../app-assets/images/logo/logo-sm.png"></a></li>
                            <li class="nav-item d-md-none"><a class="nav-link open-navbar-container" data-toggle="collapse" data-target="#navbar-mobile"><i class="la la-ellipsis-v">   </i></a></li>
                        </ul>
                    </div>
                    <div class="navbar-container">
                        <div class="collapse navbar-collapse" id="navbar-mobile">
                            <ul class="nav navbar-nav mr-auto float-left">
                                <li class="nav-item d-none d-md-block"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i class="ft-menu">         </i></a></li>
                                <li class="nav-item nav-search"><a class="nav-link nav-link-search" href="#"><i class="ficon ft-search"></i></a>
                                    <div class="search-input">
                                        <input class="input" type="text" placeholder="Explore Crypto ICO...">
                                    </div>
                                </li>
                            </ul>
                            <ul class="nav navbar-nav float-right">         
                                <%-- <li class="dropdown dropdown-language nav-item"><a class="dropdown-toggle nav-link" id="dropdown-flag" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="flag-icon flag-icon-gb"></i><span class="selected-language"></span></a>
                                    <div class="dropdown-menu" aria-labelledby="dropdown-flag"><a class="dropdown-item" href="#"><i class="flag-icon flag-icon-gb"></i> English</a><a class="dropdown-item" href="#"><i class="flag-icon flag-icon-fr"></i> French</a><a class="dropdown-item" href="#"><i class="flag-icon flag-icon-cn"></i> Chinese</a><a class="dropdown-item" href="#"><i class="flag-icon flag-icon-de"></i> German</a></div>
                                </li> --%>
                                                         <li class="dropdown dropdown-notification nav-item"><a class="nav-link nav-link-label" href="wallet.html"><i class="ficon icon-wallet"></i></a></li>
                                <li class="dropdown dropdown-user nav-item"><a class="dropdown-toggle nav-link dropdown-user-link" href="#" data-toggle="dropdown">             <span class="avatar avatar-online"><img src="../app-assets/images/portrait/small/avatar-s-1.png" alt="avatar"></span><span class="mr-1"><span class="user-name text-bold-700">Admin</span></span></a>
                                    <div class="dropdown-menu dropdown-menu-right">             <a class="dropdown-item" href="account-profile.html"><i class="ft-award"></i><Admin></a>
                                        
                                        <div class="dropdown-divider"></div><a class="dropdown-item" href="logout.jsp"><i class="ft-power"></i> Logout</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>

            <!-- ////////////////////////////////////////////////////////////////////////////-->


            <div class="main-menu menu-fixed menu-dark menu-bg-default rounded menu-accordion menu-shadow">
                <div class="main-menu-content"><a class="navigation-brand d-none d-md-block d-lg-block d-xl-block" href="index.html"><img class="brand-logo" alt="crypto ico admin logo" src="../app-assets/images/logo/logo.svg"/></a>
                    <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
                        
                        <li class="active"><a href="Admin.jsp?page=financermanage.jsp"><i class="icon-grid"></i><span class="menu-title" data-i18n="">Dashboard</span></a>
                        </li>
                        <li class=" nav-item"><a href="Admin.jsp?page=financerdaily.jsp"><i class="icon-layers"></i><span class="menu-title" data-i18n="">Today Register</span></a>
                        </li>
                        <li class=" nav-item"><a href="Admin.jsp?page=totalfinancer.jsp"><i class="icon-wallet"></i><span class="menu-title" data-i18n="">Total financer</span></a>
                        </li>
                        <li class=" nav-item"><a href="Admin.jsp?page=monthly.jsp"><i class="icon-shuffle"></i><span class="menu-title" data-i18n="">Monthly Register</span></a>
                        </li>
                         
                    </ul>
                   
                </div>
            </div>

            <div class="app-content content">

                <%
                    if (request.getParameter("page") != null) {
                        String val = request.getParameter("page").toString();
                %>
                <jsp:include page="<%=val%>"></jsp:include>
                <%
                } else {
                %>
                <jsp:include page="dashboard_2.jsp"></jsp:include>
                <%
                    }

                %>


            </div>
            <!-- ////////////////////////////////////////////////////////////////////////////-->


            <footer class="footer footer-static footer-transparent">
                <p class="clearfix blue-grey lighten-2 text-sm-center mb-0 px-2"><span class="float-md-left d-block d-md-inline-block">Copyright  &copy; 2018 <a class="text-bold-800 grey darken-2" href="#" target="_blank">Pramukh Finance </a>, All rights reserved. </span><span class="float-md-right d-block d-md-inline-blockd-none d-lg-block">Hand-crafted & Made with <i class="ft-heart pink"></i></span></p>
            </footer>
        </form>
        <!-- BEGIN VENDOR JS-->
        <script src="../app-assets/vendors/js/vendors.min.js" type="text/javascript"></script>
        <!-- BEGIN VENDOR JS-->
        <!-- BEGIN PAGE VENDOR JS-->
        <!-- <script src="../app-assets/vendors/js/charts/chartist.min.js" type="text/javascript"></script>-->
        <!--<script src="../app-assets/vendors/js/charts/chartist-plugin-tooltip.min.js" type="text/javascript"></script>-->
        <script src="../app-assets/vendors/js/timeline/horizontal-timeline.js" type="text/javascript"></script>
        <!-- END PAGE VENDOR JS-->
        <!-- BEGIN MODERN JS-->
        <script src="../app-assets/js/core/app-menu.min.js" type="text/javascript"></script>
        <script src="../app-assets/js/core/app.min.js" type="text/javascript"></script>
        <script src="../app-assets/js/scripts/demo.min.js" type="text/javascript">//- For demo only</script>
        <!-- END MODERN JS-->
        <!-- BEGIN PAGE LEVEL JS-->
        <script src="../app-assets/js/scripts/pages/dashboard-ico.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL JS-->

















    </body>
</html>

