<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="shortcut icon" href="images/snap.ico" />
<title>SNAP: Rental Services</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
.mySlides {display:none}
</style>
<body class="w3-content w3-border-left w3-border-right">
<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-light-grey w3-collapse w3-top" style="z-index:3;width:260px" id="mySidebar">
  <div class="w3-container w3-display-container w3-padding-16">
    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-transparent w3-display-topright"></i>
    <h6><a style="text-decoration:none;" href="Flats.jsp">Go to Back</a></h6>
    <h3><a href="index.jsp" style="text-decoration:none;color:red;">SNAP</a> Rental</h3>
    <h3 id="Rprice"></h3>
    <h6>per Month</h6>
    <hr>
    <form action="PayProcess" method="post" autocomplete="off">
      <p><label><i class="fa fa-calendar-check-o"></i> Check In Date</label></p>
      <input class="w3-input w3-border" value="" type="date" name="CheckIn" id="cidate">          
      <p><label><i class="fa fa-user"></i> Renter Name</label></p>
      <input class="w3-input w3-border" type="text" placeholder="Name of User" name="RName" >         
      <p><label><i class="fa fa-envelope"></i> Email ID</label></p>
      <input class="w3-input w3-border" type="email" placeholder="email Address" name="RMail" >              
      <p><label><i class="fa fa-calendar"></i> Months</label></p>
      <input class="w3-input w3-border" type="number" placeholder="Enter months of stay" min=1 max=12 maxlength="10" value="1" name="RMonths" >
      <p><label><i class="fa fa-phone-square"></i> Phone No.</label></p>
      <input class="w3-input w3-border" type="text" placeholder="Mobile Number" maxlength="10" pattern="\d{10}" name="RPhone" >
      <p><label><i class="fa fa-vcard"></i> Select ID</label></p>
		<select id="idselect" name="RDN" class="w3-input w3-border">
  		<option value="Aadhar Card">Aadhar Card</option>
  		<option value="PAN Card">PAN Card</option>
  		<option value="Voter Card">Voter Card</option>
  		<option value="DL">Driving Licence</option>
		</select>
      <input class="w3-input w3-border" type="text" placeholder="Identity Number" id="idno" name="RId" >
      <input type="hidden" value="" id="Fid" name="Fid">
      <input type="hidden" value="" id="Aid" name="Aid">
      <p><button id="SearchAV" class="w3-button w3-block w3-green w3-left-align" type="submit"><i class="fa fa-search w3-margin-right"></i>Rent Flat Now</button></p>
    </form>
  </div>
  <div class="w3-bar-block">
    <a href="#apartment" class="w3-bar-item w3-button w3-padding-16"><i class="fa fa-building"></i> Apartment</a>
    <a href="javascript:void(0)" id="reva" class="w3-bar-item w3-button w3-padding-16"  onclick="document.getElementById('subscribe').style.display='block'"><i class="fa fa-eye"></i> Review</a>
    <a href="#contact" class="w3-bar-item w3-button w3-padding-16"><i class="fa fa-envelope"></i> Contact</a>
  </div>
</nav>

<!-- Top menu on small screens -->
<header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
  <span class="w3-bar-item">Rental</span>
  <a href="javascript:void(0)" class="w3-right w3-bar-item w3-button" onclick="w3_open()"><i class="fa fa-bars"></i></a>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main w3-white" style="margin-left:260px">

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:80px"></div>

  <!-- Slideshow Header -->
  <div class="w3-container" id="apartment">
    <h2 id="Rname" class="w3-text-green">The Apartment</h2>
    <div class="w3-display-container mySlides">
    <img id="Rlimg" src="" style="width:100%;margin-bottom:-6px">
      <div class="w3-display-bottomleft w3-container w3-black">
        <p>Living Room</p>
      </div>
    </div>
    <div class="w3-display-container mySlides">
    <img id="Rdimg" src="" style="width:100%;margin-bottom:-6px">
      <div class="w3-display-bottomleft w3-container w3-black">
        <p>Dining Room</p>
      </div>
    </div>
    <div class="w3-display-container mySlides">
    <img id="Rbimg" src="" style="width:100%;margin-bottom:-6px">
      <div class="w3-display-bottomleft w3-container w3-black">
        <p>Bedroom</p>
      </div>
    </div>
    <div class="w3-display-container mySlides">
    <img id="Rllimg" src="" style="width:100%;margin-bottom:-6px">
      <div class="w3-display-bottomleft w3-container w3-black">
        <p>Living Room II</p>
      </div>
    </div>
  </div>
  <div class="w3-row-padding w3-section">
    <div class="w3-col s3">
      <img id="limg" class="demo w3-opacity w3-hover-opacity-off" src="" style="width:100%;cursor:pointer" onclick="currentDiv(1)" title="Living room">
    </div>
    <div class="w3-col s3">
      <img id="dimg" class="demo w3-opacity w3-hover-opacity-off" src="" style="width:100%;cursor:pointer" onclick="currentDiv(2)" title="Dining room">
    </div>
    <div class="w3-col s3">
      <img id="bimg" class="demo w3-opacity w3-hover-opacity-off" src="" style="width:100%;cursor:pointer" onclick="currentDiv(3)" title="Bedroom">
    </div>
    <div class="w3-col s3">
      <img id="llimg" class="demo w3-opacity w3-hover-opacity-off" src="" style="width:100%;cursor:pointer" onclick="currentDiv(4)" title="Second Living Room">
    </div>
  </div>

  <div class="w3-container">
    <h4><strong>The space</strong></h4>
    <div class="w3-row w3-large">
      <div class="w3-col s6">
        <p><i class="fa fa-fw fa-bath"></i> Bathrooms: 2</p>
        <p id="Rtype"></p>
      </div>
      <div class="w3-col s6">
        <p><i class="fa fa-fw fa-clock-o"></i> Gate Closed After: 10 PM</p>
        <p><i class="fa fa-fw fa-clock-o"></i> Gate Open Before: 4AM</p>
      </div>
    </div>
    <hr>
    
    <h4><strong>Amenities</strong></h4>
    <div class="w3-row w3-large">
      <div class="w3-col s6">
        <p><i class="fa fa-fw fa-shower"></i> Shower</p>
        <p><i class="fa fa-fw fa-wifi"></i> WiFi</p>
        <p><i class="fa fa-fw fa-tv"></i> TV</p>
      </div>
      <div class="w3-col s6">
        <p><i class="fa fa-fw fa-cutlery"></i> Kitchen</p>
        <p><i class="fa fa-fw fa-thermometer"></i> Heating</p>
        <p><i class="fa fa-fw fa-wheelchair"></i> Accessible</p>
      </div>
    </div>
    <hr>
    
    <h4><strong>Extra Info</strong></h4>
    <p id="Rinfo"></p>
    <p>We accept: <i class="fa fa-credit-card w3-large"></i> <i class="fa fa-cc-mastercard w3-large"></i> <i class="fa fa-cc-amex w3-large"></i> <i class="fa fa-cc-cc-visa w3-large"></i><i class="fa fa-cc-paypal w3-large"></i></p>
    <hr>
    
    <h4><strong>Rules</strong></h4>
    <p>Depending on the circumstances, the most likely house rules you all want to consider implementing to protect your investments and retain good tenants are as follows:<pre>
Details regarding late rentS
Garbage removal
Outside upkeep and landscaping
Quiet hours
Appropriate use of kitchen appliances
Attachment of satellite dishes
Pet policies
    </pre></p>
    <p>Review of customer is very important part for satisfying the customer.</p>
    <p><button class="w3-button w3-green w3-third" onclick="document.getElementById('subscribe').style.display='block'" id="revb">Review</button></p>
  </div>
  <hr>
  
  <!-- Contact -->
  <div class="w3-container" id="contact">
    <h2>Contact</h2>
    <i class="fa fa-map-marker" style="width:30px"></i> D27 Janakpuri, Delhi, India<br>
    <i class="fa fa-phone" style="width:30px"></i> Phone: +91 954 0473811<br>
    <i class="fa fa-envelope" style="width:30px"> </i> Email: snapcareaboutyou@gamil.com<br>
    <p>Questions? Go ahead, ask them:</p>
    <form action="ContactUs" method="post" autocomplete="off">
      <p><input name="cname" class="w3-input w3-border" type="text" placeholder="Name" pattern="[A-Za-z]{1,}" title="Enter Only Characters" required></p>
      <p><input name="cmail" class="w3-input w3-border" type="text" placeholder="Email" required></p>
      <p><input name="cphno" class="w3-input w3-border" type="text" placeholder="Phone Number" maxlength="10" pattern="\d{10}" title="Enter Only Numbers (0-9)" required></p>
      <p><input name="cmsg1" class="w3-input w3-border" type="text" placeholder="Message" required></p>
    <button id="cbtn" type="submit" class="w3-button w3-green w3-third">Send a Message</button>
    </form>
  </div>
  
  <footer class="w3-container w3-padding-16" style="margin-top:32px">© 2017 SNAP. All Rights Reserved | Design by  <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" style="color:#91dd4d;">SKY-LABS</a></footer>

<!-- End page content -->
</div>
<!-- Subscribe Modal -->
<div id="subscribe" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom w3-padding-large">
    <div class="w3-container w3-white w3-center">
      <i onclick="document.getElementById('subscribe').style.display='none'" class="fa fa-remove w3-button w3-xlarge w3-right w3-transparent"></i>
      <h2 class="w3-wide">Review US</h2>
      <form action="Review" method="post">
      <p>Write a Review can help us to inprove our Services in the future.</p>
      <p><input class="w3-input w3-border" type="text" name="RMsg" placeholder="Type your review...." required></p>
      <input type="hidden" name="Revname" id="Revname1">
      <input type="hidden" name="Revid" id="Revid1">
      <button type="submit" class="w3-button w3-padding-large w3-green w3-margin-bottom" onclick="document.getElementById('subscribe').style.display='none'">Submit Review</button>
    </form>
    </div>
  </div>
</div>
<!-- Model popup for availbility -->

<script>
// Script to open and close sidebar when on tablets and phones
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}

// Slideshow Apartment Images
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
  }
  x[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " w3-opacity-off";
}
</script>
</body>
<script>
$("#idno").keyup(function(){
	var a=$("#idselect").val()
	if(a=="Aadhar Card"){
		$(this).val($(this).val().replace(/(\d{4})\-?(\d{4})\-?(\d{4})/,'$1-$2-$3'));
	    $(this).attr('maxlength',12);	
	}else if(a=="PAN Card"){
		$(this).val($(this).val().replace(/(\D{5})\-?(\d{4})\-?(\D{1})/,'$1-$2-$3'));
	    $(this).attr('maxlength',10);
	}else if(a=="Voter Card"){
		$(this).val($(this).val().replace(/(\D{2})\-?(\d{4})\-?(\d{6})/,'$1-$2-$3'));
	    $(this).attr('maxlength',12);
	}else if(a=="DL"){
		$(this).val($(this).val().replace(/(\D{2})\-?(\d{13})/,'$1-$2'));
	    $(this).attr('maxlength',15);
	}
});
</script>
<script>
$(document).ready(function(){
	n =  new Date();
	var y = n.getFullYear();
	var month = new Array();
	month[0] = "01";
	month[1] = "02";
	month[2] = "03";
	month[3] = "04";
	month[4] = "05";
	month[5] = "06";
	month[6] = "07";
	month[7] = "08";
	month[8] = "09";
	month[9] = "10";
	month[10] = "11";
	month[11] = "12";
	var m = month[n.getMonth()];
	var d = n.getDate();
	$("#cidate").attr({value:y+"-"+m+"-"+d,min:y+"-"+m+"-"+d});
	$("#Fid").attr('value',"${Detls[1]}");
	$("#Aid").attr('value',"${Detls[1]}");
	$("#Rname").text("${Detls[2]}");
	$("#Rprice")("From <i class='fa fa-inr'></i> ${Detls[9]}/-");
	var bed="${Detls[3]}";
	$("#Rtype")("<i class='fa fa-fw fa-bed'></i> Bedrooms: "+bed.slice(0,1)+"");
	$("#Rlimg").attr('src',"${Detls[5]}");
	$("#Rdimg").attr('src',"${Detls[6]}");
	$("#Rbimg").attr('src',"${Detls[7]}");
	$("#Rllimg").attr('src',"${Detls[8]}");
	$("#Rinfo").text("${Detls[10]}");
	var av="${Detls[11]}";
	var a1="${Detls[5]}";
	var a2="${Detls[6]}";
	var a3="${Detls[7]}";
	var a4="${Detls[8]}";
	if(av==0){
		$("#SearchAV").attr({disabled:"true"});
		$("#SearchAV").text("Flat Not Available");
	}
	if(a1==""){
		$("#limg").attr({title:"",onclick:""});	
	}else{
		$("#limg").attr({src:"${Detls[5]}",title:"Living Room"});	
	}
	if(a2==""){
		$("#dimg").attr({title:"",onclick:""});
	}else{
		$("#dimg").attr({src:"${Detls[6]}",title:"Dining Room"});	
	}
	if(a3==""){
		$("#bimg").attr({title:"",onclick:""});
	}else{
		$("#bimg").attr({src:"${Detls[7]}",title:"BedRoom"});	
	}
	if(a4==""){
		$("#llimg").attr({title:"",onclick:""});
	}else{
		$("#llimg").attr({src:"${Detls[8]}",title:"Living Room II"});	
	}	
	//document.getElementById("mySidebar").style.display = "none";
});
</script>
<script>
	if("${logdtl[1]}"!=""&&"${logdtl[1]}"!=null){
		$("#Revname1").attr("value","${logdtl[1]}");
		$("#Revid1").attr("value","${logdtl[0]}");
	}else{
		$("#revb").text("Login First");
		$("#revb").attr('disabled',true);
		$("#reva").css("pointer-events", "none");
	}
</script>
</html>