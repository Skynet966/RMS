<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="shortcut icon" href="images/snap.ico" />
<title>SNAP: Rental Services</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link href="css/flatpagelogin.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
</style>
<script type="text/javascript">
function showlogin(){
document.getElementById("id01").style.display="block";
}
</script>
<body class="w3-light-grey">
<!-- Navigation Bar -->
<div class="w3-bar w3-white w3-large">
  <a href="index.jsp" class="w3-bar-item w3-button w3-red w3-mobile"><i class="fa fa-bed w3-margin-right"></i>SNAP</a>
  <a href="#output" class="w3-bar-item w3-button w3-mobile">Rooms</a>
  <a href="#about" class="w3-bar-item w3-button w3-mobile">About</a>
  <a href="#ourhotels" class="w3-bar-item w3-button w3-mobile">Locations</a>
  <!-- Login Module -->
						<% 
							if(session!=null)
							{
								if(session.getAttribute("uname")!=null)
								{
									out.print("<button class='w3-bar-item w3-button w3-mobile' id='login2' style='color: white;background-color: #f44336!important;'>Login</button>");
								}else{
									out.print("<button class='w3-bar-item w3-button w3-mobile' onclick='showlogin()' id='login1' style='color: white;background-color: #f44336!important;'>Login</button>");
								}
							}
							%>
<!-- //Login -->
  <!-- Search Bar -->
  	<form action="SearchBar" method="post">
  	<div class="col-lg-6 in-gp-tb w3-bar-item w3-button w3-mobile" style="padding:21px 16px;height: 0px;margin: 0px auto;float:none;">
	<div class="input-group" style="bottom:17px;">
	<input type="text" name="sbarval" style="margin-left:1px;border-color:black;" class="form-control" placeholder="Search for Apartments...">
	<div class="input-group-btn">
	<button type="button" style="border-radius:0px;border-color:black;" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Any BHK <span class="caret"></span></button>
	<ul class="dropdown-menu dropdown-menu-left" style="font-size:14px;min-width:90px;text-align:center;">
	<li><input type="checkbox">1 BHK</li>
	<li role="separator" class="divider"></li>
	<li><input type="checkbox">2 BHK</li>
	<li role="separator" class="divider"></li>
	<li><input type="checkbox">3 BHK</li>
	<li role="separator" class="divider"></li>
	<li><input type="checkbox">4 BHK</li>
	</ul>
	</div><span class="input-group-btn">
	<button class="btn btn-default" id="searchbtn" style="border-color:black;" type="button">Go!</button>
	</span></div>
	</div>
	</form>
  <!-- //Search Bar -->
</div>
<!-- Header -->
<% /**
<header class="w3-display-container w3-content" style="max-width:1500px;">
  <img class="w3-image" src="/w3images/hotel.jpg" alt="The Hotel" style="min-width:1000px" width="1500" height="800">
  <div class="w3-display-left w3-padding w3-col l6 m8">
    <div class="w3-container w3-red">
      <h2><i class="fa fa-bed w3-margin-right"></i>Hotel Name</h2>
    </div>
    <div class="w3-container w3-white w3-padding-16">
      <form action="/action_page.php" target="_blank">
        <div class="w3-row-padding" style="margin:0 -16px;">
          <div class="w3-half w3-margin-bottom">
            <label><i class="fa fa-calendar-o"></i> Check In</label>
            <input class="w3-input w3-border" type="text" placeholder="DD MM YYYY" name="CheckIn" required>
          </div>
          <div class="w3-half">
            <label><i class="fa fa-calendar-o"></i> Check Out</label>
            <input class="w3-input w3-border" type="text" placeholder="DD MM YYYY" name="CheckOut" required>
          </div>
        </div>
        <div class="w3-row-padding" style="margin:8px -16px;">
          <div class="w3-half w3-margin-bottom">
            <label><i class="fa fa-male"></i> Adults</label>
            <input class="w3-input w3-border" type="number" value="1" name="Adults" min="1" max="6">
          </div>
          <div class="w3-half">
            <label><i class="fa fa-child"></i> Kids</label>
          <input class="w3-input w3-border" type="number" value="0" name="Kids" min="0" max="6">
          </div>
        </div>
        <button class="w3-button w3-dark-grey" type="submit"><i class="fa fa-search w3-margin-right"></i> Search availability</button>
      </form>
    </div>
  </div>
</header> **/
%>
<!-- Page content -->
<div class="w3-content" style="max-width:1532px;">

  <div class="w3-container w3-margin-top" id="rooms">
    <h3>Rooms</h3>
    <p>Make yourself at home is our slogan. We offer the best beds in the industry. Sleep well and rest well.</p>
  </div>
  
 <% /* <div class="w3-row-padding">
    <div class="w3-col m3">
      <label><i class="fa fa-calendar-o"></i> Check In</label>
      <input class="w3-input w3-border" type="text" placeholder="DD MM YYYY">
    </div>
    <div class="w3-col m3">
      <label><i class="fa fa-calendar-o"></i> Check Out</label>
      <input class="w3-input w3-border" type="text" placeholder="DD MM YYYY">
    </div>
    <div class="w3-col m2">
      <label><i class="fa fa-male"></i> Adults</label>
      <input class="w3-input w3-border" type="number" placeholder="1">
    </div>
    <div class="w3-col m2">
      <label><i class="fa fa-child"></i> Kids</label>
      <input class="w3-input w3-border" type="number" placeholder="0">
    </div>
    <div class="w3-col m2">
      <label><i class="fa fa-search"></i> Search</label>
      <button class="w3-button w3-block w3-black">Search</button>
    </div>
  </div> */ %>

  <div class="w3-row-padding w3-padding-16" id="output">
  
  </div>
    
  </div>

  <div class="w3-row-padding" id="about">
    <div class="w3-col l4 m7">
      <h3>About</h3>
      <h6>We are the fastest growing company in the online real estate space. Born out of the need to simplify the search for a home, free of fake listings and endless site visits, we created a unique property search platform that filled the gaps left by others in the market. Led by passionate problem-solvers, and backed by top investors from around the world, we are poised to become the most trusted place to find a home in India.</h6>
      <h6>As Housing leapfrogs into the future, we make the most of our present. We are a group of ambitious and fun-loving people, many of whom have come from across the globe and made it to the Housing family. The only thing that matches the enthusiasm of our employees is the audacity of what we do. While we don't sweat the small stuff, we don’t compromise on quality either.</h6>
    <p>We accept: <i class="fa fa-credit-card w3-large"></i> <i class="fa fa-cc-mastercard w3-large"></i> <i class="fa fa-cc-amex w3-large"></i> <i class="fa fa-cc-cc-visa w3-large"></i><i class="fa fa-cc-paypal w3-large"></i></p>
    </div>
    <div class="w3-col l8 m5">
      <div id="googleMap" style="width: 100%; height: 400px; position: relative; overflow: hidden;" class="w3-grayscale"><div style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);"><div class="gm-err-container"><div class="gm-err-content"><div class="gm-err-icon"><img src="https://maps.gstatic.com/mapfiles/api-3/images/icon_error.png" draggable="false" style="user-select: none;"></div><div class="gm-err-title">Oops! Something went wrong.</div><div class="gm-err-message">This page didn't load Google Maps correctly. See the JavaScript console for technical details.</div></div></div></div></div>
    </div>
  </div>
  
  <div class="w3-row w3-large w3-center" style="margin:32px 0">
    <div class="w3-third"><i class="fa fa-map-marker w3-text-red"></i> D27 Janakpuri, Delhi, India </div>
    <div class="w3-third"><i class="fa fa-phone w3-text-red"></i> +91 954 0473811</div>
    <div class="w3-third"><i class="fa fa-envelope w3-text-red"></i> snapcareaboutyou@gamil.com</div>
  </div>

  

  <div id="ourhotels" class="w3-container">
    <h3>Our Flats</h3>
    <h6>You can find our Flats anywhere in the India:</h6>
  </div>
  
  <div class="w3-row-padding w3-padding-16 w3-text-white w3-large">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-display-container">
        <img src="w3images/UP.jpg" alt="Cinque Terre" style="width:100%">
        <span class="w3-display-bottomleft w3-padding">Uttar Pradesh</span>
      </div>
    </div>
    <div class="w3-half">
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="w3images/Delhi.jpg" alt="New York" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">New Delhi</span>
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="w3images/Rajasthan.jpg" alt="San Francisco" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Rajasthan</span>
          </div>
        </div>
      </div>
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="w3images/Banglor.jpg" alt="Pisa" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Bangalore</span>
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="w3images/Mumbai.jpg" alt="Paris" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Mumbai</span>
          </div>
        </div>
      </div>
    </div>
  </div>

  

  <% /* <div class="w3-container" id="contact">
    <h2>Contact</h2>
    <p>If you have any questions, do not hesitate to ask them.</p>
    <i class="fa fa-map-marker w3-text-red" style="width:30px"></i> Chicago, US<br>
    <i class="fa fa-phone w3-text-red" style="width:30px"></i> Phone: +00 151515<br>
    <i class="fa fa-envelope w3-text-red" style="width:30px"> </i> Email: mail@mail.com<br>
    <form action="/action_page.php" target="_blank">
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Name" required="" name="Name"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Email" required="" name="Email"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Message" required="" name="Message"></p>
      <p><button class="w3-button w3-black w3-padding-large" type="submit">SEND MESSAGE</button></p>
    </form>
  </div> */ %>

<!-- End page content -->

<!-- Footer -->
<footer class="w3-padding-32 w3-black w3-center w3-margin-top">
  <h5>Find Us On</h5>
  <div class="w3-xlarge w3-padding-16">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>© 2017 SNAP. All Rights Reserved | Design by <a href="http://www.google.com" target="_blank" style="color:#91dd4d;">SKY-LABS</a></p>
</footer>

<!-- Add Google Maps -->
<script>
function myMap()
{
  myCenter=new google.maps.LatLng(28.613939, 77.209021);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&amp;callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->
<!-- Login -->
<div id="id01" class="modal">
<div class="container-w3l" style="width: 400px;">
			<div class="image">
			</div>
			<div class="main-head" style="width: 400px;">
				<form action="Login" method="post" class="form-1">
					<h2>login</h2>
					<p class="field">
						<input type="text" name="Luser" placeholder="Username or email" required>
						<i class="fa fa-user-circle-o fa-4"></i>
					</p>
						<p class="field">
							<input type="password" name="Lpass1" placeholder="Password" required>
							<i class="fa fa-lock fa-4"></i>
					   </p>
					<p class="submit">
						<button type="submit" name="submit" value="submit"><i class="fa fa-arrow-right fa-4"></i></button>
					</p>
					<p class="submit" style="float:left;">
					   <button onclick="document.getElementById('id01').style.display='none'"><i class="fa fa-window-close-o"></i></button>
					   </p>
				</form>
			</div>	
			<div class="clearfix"></div>
	</div>
</div>
<!-- //Login -->
</body>
<script>
$(document).ready(function(){  
	$("#output")("${result}");
	if("${logdtl[1]}"!=""&&"${logdtl[1]}"!=null){
		$("#login2")("<i class='fa fa-user-circle-o'></i>"+"  ${logdtl[1]}");
	}
});
</script>
</html>
