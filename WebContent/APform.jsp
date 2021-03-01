<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<html lang="en">
<head>
<link rel="shortcut icon" href="images/snap.ico" />
		<title>SNAP: Rental Services</title>
	<!-- Meta tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Modish Appointment Form Widget Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- Meta tags -->
<!-- font-awesome icons -->
   <link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!--stylesheets-->
<link href="css/style12.css" rel='stylesheet' type='text/css' media="all">
<!--//style sheet end here-->
<link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Muli:300,400,600,600i,700" rel="stylesheet">


</head>
<body scroll="no" style="overflow: hidden">
     <h1 class="header-w3ls">
Apartment Details Form</h1>
 <div class="appointment-w3" style="color:white;">
    <form action="APformInput" method="POST">

         <div class="form-control-w3l">
         
               <input type="text" id="name" name="Aname" placeholder="Apartment Name...">
               <input type="number" id="name" name="Aprice" placeholder="Rent of Apartment per month">
          </div>
		  <div class="form-control-w3l">
               <input type="radio" id="name" name="Atype" value="1BHK">1BHK
			   <input type="radio" id="name" name="Atype" value="2BHK">2BHK
			   <input type="radio" id="name" name="Atype" value="3BHK">3BHK
			   <input type="radio" id="name" name="Atype" value="4BHK">4BHK
          </div>
		  <div class="form-control-w3l">
               <input type="text" id="name" name="Adrs" placeholder="Apartment Address">
			   <input type="text" id="name" name="Aloc" placeholder="City">
          </div>
		  Apartment Images
		  <div class="form-control-w3l">
		  <br>
		  </div>
		  <div class="form-control-w3l">
               <input type="file" name="pic1" accept="image/*">
			   <input type="file" name="pic2" accept="image/*">
          </div>
		  <div class="form-control-w3l">
		  <br>
		  </div>
		  <div class="form-control-w3l">
               <input type="file" name="pic3" accept="image/*">
			   <input type="file" name="pic4" accept="image/*">
          </div>
		  <div class="form-control-w3l">
		  <br>
		  </div>
<div class="form-control-w3l">
 <textarea id="message" name="Atext" placeholder="Additional information about your Apartment"></textarea>
 </div>
 <input type="button" value="Cancel" onclick="location.href = 'index.jsp';">
 <input type="submit" value="Submit Details">
</form>
   </div>
		<!-- js -->
  <script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
<!-- //js -->
</body>
</html>