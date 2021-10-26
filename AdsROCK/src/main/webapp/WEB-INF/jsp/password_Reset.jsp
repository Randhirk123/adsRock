<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- meta tags and other links -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AdsROCK - Account Recovery</title>
    <!-- site favicon -->
	<!--Newly Added Icon  -->
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="shortcut icon" type="image/png" href="https://adjuction.in/assets/images/logoIcon/favicon.png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap">
    <!-- bootstrap 4  -->
    <link rel="stylesheet" href="https://adjuction.in/assets/admin/css/vendor/bootstrap.min.css">
    <!-- bootstrap toggle css -->
    <link rel="stylesheet" href="https://adjuction.in/assets/admin/css/vendor/bootstrap-toggle.min.css">
    <!-- fontawesome 5  -->
    <link rel="stylesheet" href="https://adjuction.in/assets/admin/css/all.min.css">
    <!-- line-awesome webfont -->
    <link rel="stylesheet" href="https://adjuction.in/assets/admin/css/line-awesome.min.css">

    
    <!-- custom select box css -->
    <link rel="stylesheet" href="https://adjuction.in/assets/admin/css/vendor/nice-select.css">
    <!-- code preview css -->
    <link rel="stylesheet" href="https://adjuction.in/assets/admin/css/vendor/prism.css">
    <!-- select 2 css -->
    <link rel="stylesheet" href="https://adjuction.in/assets/admin/css/vendor/select2.min.css">
    <!-- jvectormap css -->
    <link rel="stylesheet" href="https://adjuction.in/assets/admin/css/vendor/jquery-jvectormap-2.0.5.css">
    <!-- datepicker css -->
    <link rel="stylesheet" href="https://adjuction.in/assets/admin/css/vendor/datepicker.min.css">
    <!-- timepicky for time picker css -->
    <link rel="stylesheet" href="https://adjuction.in/assets/admin/css/vendor/jquery-timepicky.css">
    <!-- bootstrap-clockpicker css -->
    <link rel="stylesheet" href="https://adjuction.in/assets/admin/css/vendor/bootstrap-clockpicker.min.css">
    <!-- bootstrap-pincode css -->
    <link rel="stylesheet" href="https://adjuction.in/assets/admin/css/vendor/bootstrap-pincode-input.css">
    <!-- dashdoard main css -->
    <link rel="stylesheet" href="https://adjuction.in/assets/admin/css/app.css">
  </style>


    </head>
<body>
    <div class="page-wrapper default-version">
        <div class="form-area bg_img" data-background="https://adjuction.in/assets/admin/images/1.jpg">
            <div class="form-wrapper">
                <h4 class="logo-text mb-15"><strong>Recover Account</strong></h4>
                <form action="https://adjuction.in/admin/password/reset" method="POST" class="cmn-form mt-30">
                    <input type="hidden" name="_token" value="Rd8yU2jojrcYkp8xtWcs6AMr1Qr2dyVrxX66gVtm">                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" name="email" class="form-control b-radius--capsule" id="username" value="" placeholder="Enter your email">
                        <i class="las la-user input-icon"></i>
                    </div>
                    <div class="form-group d-flex justify-content-between align-items-center">
                        <a href="login.html" class="text-muted text--small"><i class="las la-lock"></i>Login Here</a>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="submit-btn mt-25 b-radius--capsule">Send Reset Code <i class="las la-sign-in-alt"></i></button>
                    </div>
                </form>
            </div>
        </div><!-- login-area end -->
    </div>


<!-- jQuery library -->
<script src="https://adjuction.in/assets/admin/js/vendor/jquery-3.5.1.min.js"></script>
<!-- bootstrap js -->
<script src="https://adjuction.in/assets/admin/js/vendor/bootstrap.bundle.min.js"></script>
<!-- bootstrap-toggle js -->
<script src="https://adjuction.in/assets/admin/js/vendor/bootstrap-toggle.min.js"></script>

<!-- slimscroll js for custom scrollbar -->
<script src="https://adjuction.in/assets/admin/js/vendor/jquery.slimscroll.min.js"></script>
<!-- custom select box js -->
<script src="https://adjuction.in/assets/admin/js/vendor/jquery.nice-select.min.js"></script>


<link rel="stylesheet" href="https://adjuction.in/assets/admin/css/iziToast.min.css">
<script src="https://adjuction.in/assets/admin/js/iziToast.min.js"></script>

<script>
"use strict";
    function notify(status,message) {
        iziToast[status]({
            message: message,
            position: "topRight"
        });
    }
</script>

<script src="https://adjuction.in/assets/admin/js/nicEdit.js"></script>

<!-- code preview js -->
<script src="https://adjuction.in/assets/admin/js/vendor/prism.js"></script>
<!-- seldct 2 js -->
<script src="https://adjuction.in/assets/admin/js/vendor/select2.min.js"></script>
<!-- main js -->
<script src="https://adjuction.in/assets/admin/js/app.js"></script>


<script>
    (function($,document){
        "use strict";
        bkLib.onDomLoaded(function() {
            $( ".nicEdit" ).each(function( index ) {
                $(this).attr("id","nicEditor"+index);
                new nicEditor({fullPanel : false}).panelInstance('nicEditor'+index,{hasPanel : true});
            });
        });
        $( document ).on('mouseover ', '.nicEdit-main,.nicEdit-panelContain',function(){
            $('.nicEdit-main').focus();
        });
    })(jQuery, document);
</script>



</body>
</html>
