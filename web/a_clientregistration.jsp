<%-- 
    Document   : a_clientregistration
    Created on : 9 Jan, 2019, 3:14:06 AM
    Author     : ASUS
--%>
<%@page import="modal.usermastermodal" %>
<%@page import="controller.user_mastercontroller" %>
<%@page import="java.util.regex.Pattern" %>

<%
    String email = "";
    if (request.getParameter("save") != null) {
        String no=request.getParameter("txtmobileno");
            
        
        
        usermastermodal umModal = new usermastermodal();
        umModal.setuserrole_id(1);
        umModal.setcontactperson_name(request.getParameter("txtContactName"));
        umModal.setuser_name(request.getParameter("txtname"));

        umModal.setemail(request.getParameter("txtemail"));
        umModal.setmobile_no(request.getParameter("txtmobileno"));
        umModal.setpassword(request.getParameter("txtpassword"));
        umModal.setstatus("activate");
        umModal.setlast_logindate("");
        umModal.setregister_date("");

        user_mastercontroller umController = new user_mastercontroller();
        String val = umController.user_masterInsertUpdate(umModal);
        if (val.equals("0")) {
            
            
            out.print("<script>alert('Successfully Register With Us.')</script>");
        } else {
            out.print("<script>alert('Something Went Wrong')</script>");
        }
        }
        
    

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta name="description" content="Crypto ICO admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities with bitcoin dashboard.">
        <meta name="keywords" content="admin template, crypto ico admin template, dashboard template, flat admin template, responsive admin template, web app, crypto dashboard, bitcoin dashboard">
        <meta name="author" content="PIXINVENT">
        <title>Account Register - Crypto ICO - Cryptocurrency Website Landing Page HTML + Dashboard Template + Bitcoin Dashboard</title>
        <link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.png">
        <link rel="shortcut icon" type="image/x-icon" href="https://pixinvent.com/demo/crypto-ico-admin/app-assets/images/ico/favicon.ico">
        <link href="https://fonts.googleapis.com/css?family=Muli:300,300i,400,400i,600,600i,700,700i|Comfortaa:300,400,500,700" rel="stylesheet">
        <!-- BEGIN VENDOR CSS-->
        <link rel="stylesheet" type="text/css" href="app-assets/css/vendors.min.css">
        <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/forms/icheck/icheck.css">
        <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/forms/icheck/custom.css">
        <!-- END VENDOR CSS-->
        <!-- BEGIN MODERN CSS-->
        <link rel="stylesheet" type="text/css" href="app-assets/css/app.min.css">
        <!-- END MODERN CSS-->
        <!-- BEGIN Page Level CSS-->
        <link rel="stylesheet" type="text/css" href="app-assets/css/core/menu/menu-types/vertical-compact-menu.min.css">
        <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/cryptocoins/cryptocoins.css">
        <link rel="stylesheet" type="text/css" href="app-assets/css/pages/account-register.min.css">
        <!-- END Page Level CSS-->
        <!-- BEGIN Custom CSS-->
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <!-- END Custom CSS-->

    </head>
    <body class="vertical-layout vertical-compact-menu 1-column  bg-full-screen-image menu-expanded blank-page blank-page" data-open="click" data-menu="vertical-compact-menu" data-col="1-column">
        <div class="app-content content">
            <div class="content-wrapper">
                <div class="content-header row">
                </div>
                <div class="content-body">
                    <!-- Demo options menu -->
                    <div class="demo-options">
                        <ul class="demo-options-list">
                            <li>
                                <button type="button" class="btn btn-sm btn-settings fullscreen-overlay-open" data-toggle="tooltip" data-placement="left" title="View all demos"><i class="la la-desktop"></i></button>
                            </li>
                            <li>
                                <a href="https://goo.gl/dKwTQf" class="btn btn-sm btn-cart open-fullscreen-overlay" target="_blank" data-toggle="tooltip" data-placement="left" title="Buy now"><i class="la la-cart-arrow-down"></i></a>
                            </li>
                            <li>
                                <a href="https://pixinvent.com/demo/crypto-ico-admin/html/rtl/vertical-menu/" class="btn btn-rtl-mode open-fullscreen-overlay" data-toggle="tooltip" data-placement="left" title="RTL mode">RTL</a>
                            </li>
                        </ul>
                    </div>
                    <!--/ Demo options menu -->
                    <!-- Demo fullscreen-overlay -->
                    <div class="fullscreen-overlay">
                        <div class="wrap mt-2">
                            <button class="btn btn-default btn-sm btn-close fullscreen-overlay-open float-right"><i class="la la-times"></i></button>
                            <!-- Add Banner -->
                            <div class="crypto-ico-add my-4">
                                <div class="row">
                                    <div class="col-12 col-12 text-center">
                                        <img class="img-fluid img-add-banner" src="../crypto-ico/images/demo/offer-banner.jpg" alt="Crypto ICO add banner">
                                    </div>
                                </div>
                            </div>
                            <!--/ Add Banner -->
                            <div class="crypto-ico-demo">
                                <div class="row">
                                    <div class="col-12 col-md-4">
                                        <p class="ico-demo-sub-title mb-1">Semi Light Layout</p>
                                        <h6 class="ico-demo-title text-uppercase font-weight-bold">Counter Landing Page</h6>
                                        <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-counter/">
                                            <img class="img-fluid mb-1 mt-2" src="../crypto-ico/images/demo/template-counter.jpg" alt="Counter Landing Page">
                                        </a>
                                        <ul class="nav justify-content-center mt-1">
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-counter/template-counter-ripple.html" class="ico-demo-link nav-link btn btn-outline-light">Ripple</a>
                                            </li>
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-counter/template-counter-particle.html" class="ico-demo-link nav-link btn btn-outline-light">Particle</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-counter/template-counter-classic.html" class="ico-demo-link nav-link btn btn-outline-light">Classic</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <p class="ico-demo-sub-title mb-1">Dark + Light Layout</p>
                                        <h6 class="ico-demo-title text-uppercase font-weight-bold">3D Graphic Landing Page</h6>
                                        <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-graphics/">
                                            <img class="img-fluid mb-1 mt-2" src="../crypto-ico/images/demo/template-3d-graphics.jpg" alt="Template with Counter">
                                        </a>
                                        <ul class="nav justify-content-center mt-1">
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-graphics/template-3d-graphic-ripple.html" class="ico-demo-link nav-link btn btn-outline-light">Ripple</a>
                                            </li>
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-graphics/template-3d-graphic-particle.html" class="ico-demo-link nav-link btn btn-outline-light">Particle</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-graphics/template-3d-graphic-classic.html" class="ico-demo-link nav-link btn btn-outline-light">Classic</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <p class="ico-demo-sub-title mb-1">ICO Dashboard</p>
                                        <h6 class="ico-demo-title text-uppercase font-weight-bold">Crypto ICO admin panel</h6>
                                        <a href="index-2.html" target="_blank">
                                            <img class="img-fluid mb-1 mt-2" src="../crypto-ico/images/demo/ico-dashboard.jpg" alt="Crypto ICO admin panel">
                                        </a>
                                        <ul class="nav justify-content-center mt-1">
                                            <li class="nav-item mr-2">
                                                <a href="index-2.html" class="ico-demo-link nav-link btn btn-outline-light">LTR</a>
                                            </li>
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico-admin/html/rtl/vertical-menu/" target="_blank" class="ico-demo-link nav-link btn btn-outline-light">RTL</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row py-4">
                                    <div class="col-12 col-md-4">
                                        <p class="ico-demo-sub-title mb-1">Dark Layout</p>
                                        <h6 class="ico-demo-title text-uppercase font-weight-bold">3D Animated Graphic Landing Page</h6>
                                        <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-animation/">
                                            <img class="img-fluid mb-1 mt-2" src="../crypto-ico/images/demo/template-3d-animation.jpg" alt="Template with Counter">
                                        </a>
                                        <ul class="nav justify-content-center mt-1">
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-animation/template-3d-animation-ripple.html" class="ico-demo-link nav-link btn btn-outline-light">Ripple</a>
                                            </li>
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-animation/template-3d-animation-particle.html" class="ico-demo-link nav-link btn btn-outline-light">Particle</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-3d-animation/template-3d-animation-classic.html" class="ico-demo-link nav-link btn btn-outline-light">Classic</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <p class="ico-demo-sub-title mb-1">Light Layout</p>
                                        <h6 class="ico-demo-title text-uppercase font-weight-bold">Intro Video Landing Page </h6>
                                        <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-intro-video/">
                                            <img class="img-fluid mb-1 mt-2" src="../crypto-ico/images/demo/template-intro-video.jpg" alt="Intro Video Landing Page">
                                        </a>
                                        <ul class="nav justify-content-center mt-1">
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-intro-video/template-intro-video-ripple.html" class="ico-demo-link nav-link btn btn-outline-light">Ripple</a>
                                            </li>
                                            <li class="nav-item mr-2">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-intro-video/template-intro-video-particle.html" class="ico-demo-link nav-link btn btn-outline-light">Particle</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="https://pixinvent.com/demo/crypto-ico/html/ltr/template-intro-video/template-intro-video-classic.html" class="ico-demo-link nav-link btn btn-outline-light">Classic</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/ Demo fullscreen-overlay --><section id="account-register" class="flexbox-container">    
                        <div class="col-12 d-flex align-items-center justify-content-center">
                            <!-- image -->
                            <%-- <div class="col-xl-3 col-lg-4 col-md-5 col-sm-5 col-12 p-0 text-center d-none d-md-block">
                                <div class="border-grey border-lighten-3 m-0 box-shadow-0 card-account-left height-630">
                                    <img src="app-assets/images/pages/account-login.png" class="card-account-img width-200" alt="card-account-img">
                                </div>
                    </div> --%>
                            <!-- login form -->
                            <div class="col-xl-4 col-lg-5 col-md-5 col-sm-5 col-12 p-0">
                                <div class="card border-grey border-lighten-3 m-0 box-shadow-0 card-account-right height-610">                
                                    <div class="card-content">                    
                                        <div class="card-body p-3">
                                            <p class="text-center h5 text-capitalize">Started with GROW FUNDS!</p>
                                            <p class="mb-3 text-center">Create your account</p>
                                            <form class="form-horizontal form-signin" method="post">  
                                                <fieldset class="form-label-group">
                                                    <input type="text" class="form-control" id="txtContactName" name="txtContactName" placeholder="Your Name" required="" autofocus=""  onkeypress="return onlyAlphabets(event,this);">
                                                    <label for="Name">Name :</label>
                                                </fieldset>
                                                <div class="row">
                                                    <div class="col-6">
                                                        <fieldset class="form-label-group">
                                                            <input type="text" class="form-control" id="user-name" name="txtname" placeholder="Your Name" required="" autofocus="" onkeypress="return onlyAlphabets(event,this);" >
                                                            <label for="User Name">Username</label>
                                                        </fieldset>
                                                    </div>
                                                    <div class="col-6">
                                                        <fieldset class="form-label-group">
                                                            <input type="email" class="form-control" id="user-name" name="txtemail" placeholder="Your Email" required="" autofocus="">
                                                            <label for="Your Email">Your Email</label>
                                                        </fieldset>
                                                    </div>
                                                </div>


                                                <fieldset class="form-label-group">
                                                    <input type="number" class="form-control" id="txtPhoneNo" name="txtmobile" placeholder="Your MobileNo" required="" autofocus=""   onblur="checkNumber(this)"  onkeypress="return isNumberKey(event)">
                                                    <label for="user-name">Mobile No:</label>
                                                    
                                                </fieldset>
                                                <div class="row">
                                                   
                                                    </script>

                                                    <div class="col-6">
                                                        <fieldset class="form-label-group">
                                                            

                                                            <input type="password" class="form-control" id="password" name="txtpassword" placeholder="Your password" required="" autofocus="" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$">
                                                          
                                                            <label for="password">password</label>
                                                        </fieldset>
                                                    </div>
                                                    <div class="col-6">
                                                        <fieldset class="form-label-group">
                                                            

                                                                <input type="password" class="form-control" id="confirm_password" name="txtcpassword" placeholder="Confirm Password" required="" autofocus="" onchange="checkPasswordMatch">
                                                         
                                                         <label for="Confirm password">Confirm password</label>
                                                        </fieldset>
                                                    </div>
                                                </div>




                                                <div class="form-group row">
                                                    <div class="col-12 text-center text-sm-left">
                                                        <fieldset>
                                                            <input type="checkbox" id="remember-me" class="chk-remember">
                                                            <label for="remember-me"> I agree to GROW FUNDS's terms</label>
                                                        </fieldset>
                                                    </div>                                
                                                </div>
                                                <button type="submit" class="btn-gradient-primary btn-block my-1" name="save" onclick="validateno">Sign Up</button>
                                                <p class="text-center"><a href="a_clientlogin.jsp" class="card-link">Log In</a></p>
                                            </form>
                                        </div>                    
                                    </div>
                                </div>
                            </div>        
                        </div>    
                    </section>

                </div>
            </div>
        </div>

        <!-- BEGIN VENDOR JS-->
        <script src="app-assets/vendors/js/vendors.min.js" type="text/javascript"></script>
        <!-- BEGIN VENDOR JS-->
        <!-- BEGIN PAGE VENDOR JS-->
        <script src="app-assets/vendors/js/forms/icheck/icheck.min.js" type="text/javascript"></script>
        <!-- END PAGE VENDOR JS-->
        <!-- BEGIN MODERN JS-->
        <script src="app-assets/js/core/app-menu.min.js" type="text/javascript"></script>
        <script src="app-assets/js/core/app.min.js" type="text/javascript"></script>
        <script src="app-assets/js/scripts/demo.min.js" type="text/javascript">//- For demo only</script>
        <!-- END MODERN JS-->
        <!-- BEGIN PAGE LEVEL JS-->
        <script src="app-assets/js/scripts/forms/form-login-register.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL JS-->

        
<script type="text/javascript">
          
    var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
  }

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;

    function checkNumber(check)
    {   
        var a = document.getElementById("txtPhoneNo").value;
        //var x=check.which;
        //var x = a.charCode;
        var x = a.keyCode;
        if(!(a >= 48 || a <= 57))
        {
            alert("enter only numbers");
            return false;
        }       
        else if(a=="" || a==null)
        {
            alert("field is blank");
            return false;
        }
// if no is more then the value 
        else if (a.length <= 9 || a.length > 10)
        {
            alert("enter minimum 10 characters");
            return false;
        }
        alert("done");
        return true;        
    }


      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode;
         if (charCode > 31 && (charCode < 48 || charCode > 57))
             return false;
         
         return true;
             //var phoneNo = document.getElementById('txtmobile');

            
            

         
         
                   

      }/*
      onkeypress="return isNumberKey(event)"
      function validateno()
      {
          var phoneNo = document.getElementById('txtmobile');
             if (phoneNo.value.length < 10 || phoneNo.value.length > 10) {
                alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
                return false;
                }
           return true;
          
          
      }
      */
      
              function onlyAlphabets(e, t) {

            try {

                if (window.event) {

                    var charCode = window.event.keyCode;

                }

                else if (e) {

                    var charCode = e.which;

                }

                else { return true; }

                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))

                    return true;

                else

                    return false;

            }

            catch (err) {

                alert(err.Description);

            }

        } 

 




</script>
    </body>
</html>
