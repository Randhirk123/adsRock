<!-- meta tags and other links -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AdsROCK - Admin Login</title>
    <!-- site favicon -->
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

    <!--Newly Added Icon  -->
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
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


	<style type="text/css">
     .allowed-submit{opacity: .5;cursor: not-allowed;}
  .valid-input{
    border:1px solid green !important;
  }
  .invalid-input{
    border:1px solid red !important;
  }
  .invalid-msg{
    color: red;
  }

.form-wrapper{
  border:1px solid orange;
  width:50%;
  background:#dad9d9;
  padding:10px 30px;
}
.form-wrapper .form-group{
  margin:15px 0px;
}
.form-wrapper .form-group input{
  padding:10px;
  width:99%;
  boz-sizing:border-box;
   border:none;
   border:1px solid grey;
}
.form-wrapper .form-group input:focus{
 outline:unset;
}
.form-wrapper .form-group input[type="submit"]{
  width:100%;
 
  background:orange;
  font-size:20px;
  color:white;
}
  </style>

    </head>
<body>
    <div class="page-wrapper default-version">
        <div class="form-area bg_img" data-background="https://adjuction.in/assets/admin/images/1.jpg">
            <div class="form-wrapper">
                <h4 class="logo-text mb-15">Welcome to <strong>AdsROCK</strong></h4>
                <p>Admin Login to  AdsROCK dashboard</p>
                <form:form action="/dashboard" modelAttribute="admin" method="POST" class="cmn-form mt-30" id="myForm">
                    <input type="hidden" name="_token" value="5Wv2WFdGNHZUa05Tt2jLop6TZgtSYtJ8KCYlwYPZ">                    <div class="form-group">
                        <label for="email">Username</span></label>
                        <form:input type="text" path="userName" name="name" class="form-control b-radius--capsule" id="uname"  placeholder="Enter your username"></form:input>
                        <i class="las la-user input-icon" ></i>
						<div class="first-name-msg"></div>
                    </div>
                    <div class="form-group">
                        <label for="pass">Password</label>
                        <form:input type="password" path="password" name="password" class="form-control b-radius--capsule" id="password" placeholder="Enter your password"></form:input>
                        <i class="las la-lock input-icon"></i>
						<div class="password-msg"></div> 
                    </div>
                    <div class="form-group d-flex justify-content-between align-items-center">
                        <a href="/reset" class="text-muted text--small"><i class="las la-lock"></i>Forgot password?</a>
                    </div>
                       <div class="form-group">
                        <button type="submit" id="submit-btn" class="submit-btn mt-25 b-radius--capsule" class="allowed-submit" disabled="desabled">Login <i class="las la-sign-in-alt"></i></button>
                    </div>
  
                </form:form>
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


<script src="https://adjuction.in/assets/admin/js/nicEdit.js"></script>

<!-- code preview js -->
<script src="https://adjuction.in/assets/admin/js/vendor/prism.js"></script>
<!-- seldct 2 js -->
<script src="https://adjuction.in/assets/admin/js/vendor/select2.min.js"></script>
<!-- main js -->
<script src="https://adjuction.in/assets/admin/js/app.js"></script>




<!-- form validation -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>

	$(document).ready(function () {
  
//validation for First Name
$('#uname').on('input', function () {

   var firstName = $(this).val();
   var validName = /^[a-zA-Z ]*$/;
   if (firstName.length == 0) {

      $('.first-name-msg').addClass('invalid-msg').text("First Name is required");
      $(this).addClass('invalid-input').removeClass('valid-input');
      
   }
   else if (!validName.test(firstName)) {

      $('.first-name-msg').addClass('invalid-msg').text('only characters & Whitespace are allowed');
      $(this).addClass('invalid-input').removeClass('valid-input');
      
   }
   else {
      $('.first-name-msg').empty();
      $(this).addClass('valid-input').removeClass('invalid-input');
   }
  });


// valiadtion for Password
$('#password').on('input', function () {

   var password = $(this).val();
   var cpassword = $('#cpassword').val();

   var uppercasePassword = /(?=.*?[A-Z])/;
   var lowercasePassword = /(?=.*?[a-z])/;
   var digitPassword = /(?=.*?[0-9])/;
   var spacesPassword = /^$|\s+/;
   var symbolPassword = /(?=.*?[#?!@$%^&*-])/;
   var minEightPassword = /.{8,}/;

if (password.length == 0) {

   $('.password-msg').addClass('invalid-msg').text('Password is required');
   $(this).addClass('invalid-input').removeClass('valid-input');
}
else if (!uppercasePassword.test(password)) {

   $('.password-msg').addClass('invalid-msg').text('At least one Uppercase');
   $(this).addClass('invalid-input').removeClass('valid-input');
}
else if (!lowercasePassword.test(password)) {

   $('.password-msg').addClass('invalid-msg').text('At least one Lowercase');
   $(this).addClass('invalid-input').removeClass('valid-input');
}
else if (!digitPassword.test(password)) {

   $('.password-msg').addClass('invalid-msg').text('At least one digit');
   $(this).addClass('invalid-input').removeClass('valid-input');

} else if (!symbolPassword.test(password)) {

   $('.password-msg').addClass('invalid-msg').text('At least one special character');
   $(this).addClass('invalid-input').removeClass('valid-input');
}
else if (spacesPassword.test(password)) {

   $('.password-msg').addClass('invalid-msg').text('Whitespaces are not allowed');
   $(this).addClass('invalid-input').removeClass('valid-input');
}
else if (!minEightPassword.test(password)) {

   $('.password-msg').addClass('invalid-msg').text('Minimum length 8');
   $(this).addClass('invalid-input').removeClass('valid-input');
}
else {
   $('.password-msg').empty();
   $(this).addClass('valid-input').removeClass('invalid-input');
}
});

// validation to submit the form
$('input').on('input',function(e){
   if($('#myForm').find('.valid-input').length==2){

       $('#submit-btn').removeClass('allowed-submit');
       $('#submit-btn').removeAttr('disabled');
   }
  else{
       e.preventDefault();
       $('#submit-btn').attr('disabled','disabled')
       
      }
});

});
</script>


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
