<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<link rel="shortcut icon" href="images/snap.ico" />
	<title>SNAP: Rental Services</title>
	<meta name="description" content="Learn how to recreate the preloader from Cantina Negrar. Tutorial for a passionate front-end web developers by Petr Tichy.">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!--iOS -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/main.css">
	<script src="js/vendor/modernizr-2.6.2.min.js"></script>
	<style type="text/css">
	.back-link a {
		color: #4ca340;
		text-decoration: none; 
		border-bottom: 1px #4ca340 solid;
	}
	.back-link a:hover,
	.back-link a:focus {
		color: #408536; 
		text-decoration: none;
		border-bottom: 1px #408536 solid;
	}
	h1 {
		height: 100%;
		/* The html and body elements cannot have any padding or margin. */
		margin: 0;
		font-size: 14px;
		font-family: 'Open Sans', sans-serif;
		font-size: 32px;
		margin-bottom: 3px;
	}
	.entry-header {
		text-align: left;
		margin: 0 auto 50px auto;
		width: 80%;
        max-width: 978px;
		position: relative;
		z-index: 10001;
	}
	#demo-content {
		padding-top: 100px;
	}
	p,h2,h3,h4,h5,h6,li{
	text-align:justify;
	font-family:Constantia;
	}
	span,a{
	color:firebrick;
	}
	
	</style>
	<script>
	function printDiv() 
	{

	  var divToPrint=document.getElementById('DivIdToPrint');

	  var newWin=window.open('','Print-Window');

	  newWin.document.open();

	  newWin.document.write('<html><body onload="window.print()">'+divToPrint.innerHTML+'</body></html>');

	  newWin.document.close();

	  setTimeout(function(){newWin.close();},10);

	}
	function Close(){
    	window.location.href="index.jsp";
    }
	</script>
</head>
<body class="demo">
<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->

	<!-- Demo content -->			
	<div id="demo-content">

		<header class="entry-header">
			<h1 class="entry-title" id="dytext">Your Payment is on The Way Please Wait.</h1>
		</header>

		<div id="loader-wrapper">
			<div id="loader"></div>

			<div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

		</div>

		<div id="content" style="width:94%">
		<button onclick="printDiv()">Print</button> <button onclick="Close()">Close</button>
			<div id="DivIdToPrint" style="margin: 0% 0%;border: 3px solid darkolivegreen;padding: 32px;">
	<img src="images/stpaper.jpg" style="width:100%;"></img>
	<hr>
	<h1 style="text-align:center;">RENT DEED</h1>
	<hr>
	<h3 style="color:black;">This Rent Deed is made at Delhi, on <span id="day"></span> of <span id="myear"></span> between <a>SNAP: Rental Services Pvt. Ltd. , Janakpuri, New Delhi.</a> Hereinafter called the 'Middle-Man' THE PARTY OF THE THIRD PART.</h3>
	<h3 style="color:black;">Mr./Mrs <span id="name"></span> hereinafter called the 'TENANT' THE PARTY OF THE SECOND PART</h3>
	<h4>The Expression both the parties shall mean and include unless repugnant to the context, their respective legal heirs, executors. Representatives, nominee and assigns respectively. WHERE AS the third party is the middiator of the property <span id="falname"></span> WHERE AS the second party has approached the first party to take on rent,<span id="ftype"></span> in the above said property (hereinafter called the said premises) and the first party has agreed to let out the said premises to the second party, on a monthly rent of <span id="trent"></span> for a period of <span id="rmonth"></span> starting with effect from <span id="cindate"></span> and ending on <span id="coutdate"></span> and the second party has also payed <span id="totalrent"></span> by Online Payment System with Recipt Number:<span id="reciptno"></span>, in advance with the third party, towards the security deposit of <span id="sdep"></span> shall be refund without any interest at the time of vacation of the above said premises.</h4>
	<h4>The following terms and conditions have been settled between the above said parties, WITNESSED AS UNDER :</h4>
	<ol>
		<li>That the settled rent neither shall be reduced nor shall be enhanced either party during the settled period.</li>
		<li>That the said monthly rent shall be payable on or before 7th day of each English calendar month in advance.</li>
		<li>That the Bills of the electric and water shall be payable by the second party, but the House tax of the said
			premises shall be payable by the first party.
		</li>
		<li>That the above said premises shall be used by the second party only for the residential/commercial purposes and	shall not be used for any other purposes and if he/she shall do so then he/she shall be liable for immediate ejectment from the said premises without any prior notice in this regard.
		</li>
		<li>That either party can terminate this RENT DEED either with one month notice in advance or with one months rent in lieu thereof.
		</li>
		<li>That the first party and/or his/her representatives, surveyors and workmen shall have right to enter into the premises
			at all reasonable times for the purpose either for inspection of the said premises or for repairs.
		</li>
		<li>That the second party shall abide by the Bye-laws, rules and regulations of D.D.A., M.C.D., D.V.B., and other local 
			authorities concerned.
		</li>
		<li>That the second party shall not sub-let the said premises under his/her tenancy and if he/she shall do so then he/she 
			shall be liable for ejectment from the said premises, immediately, and without any prior notice in this regard.
		</li>
		<li>That the said security amount which is deposited by the second party with the first   party, shall be returned back by 
			the first party to the second party, (without any interest thereon) after adjustment of outstanding dues, if any, towards 
			the second party at the time of vacating the said premises.
		</li>
		<li>That the second party shall not make any additions or alterations in the said premises under his/her tenancy without the 
			written permission from the first party, and if the second party shall do so then this rent deed shall stand cancelled 
			automatically and the second party shall be bound to vacate the said premises immediately.
		</li>
		<li>That after the expiry of the settled period, if both the parties mutually agreed to extend this rent deed for any further
			period, then a fresh rent deed shall be got executed between the above said parties, on the fresh terms and conditions and if 
			the first party will not agree to give the said premises on rent for any further period then the second party shall be bound 
			to vacate the said premises and deliver the actual, physical and vacant possession of the said premises to the first party 
			immediately, without any prior notice in this regard and if the second party does not vacate the said premises then the first
			party shall be entitled to get the said premises vacated from the second party through  the court of law, and in the event of
			court proceedings, all the expenses of the first party, shall be payable by the second party.IN WITNESSES WHEREOF the above 
			said parties have put their respective signature on this RENT DEED on the date mentioned above.
		</li>
	</ol>
	<h4 style="margin: 8px auto;">Signature: <img src="images/a.png" style="vertical-align: bottom;"></img></h4>
	<h5>CEO: Satish Kumar Yadav</h5>
	<h5 style="color:green;margin:1px auto;">Note: This is computer generated receipt and digitaly signatured so it does't require any Signature/Stamp.</h5>
</div>
		</div>

	</div>
	<!-- /Demo content -->

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.1.min.js"><\/script>')</script>
	<script src="js/maen.js"></script>
<!-- here we call the function that makes PDF -->
<a href="#" onclick="HTMLtoPDF()">Download PDF</a>
<script src="js/jspdf.js"></script>
<script src="js/pdfFromHTML.js"></script>
</body>
<script>
$(document).ready(function(){
	var t = ["Your Payment is on The Way Please Wait..", "Your Payment is on The Way Please Wait...", "Your Payment is on The Way Please Wait....","Your Payment is on The Way Please Wait.....","Your Payment is Successfull"];
	var c=0;
	window.setInterval(function(){
	$("#dytext").text(t[c]);
	c++;
	// this will execute on every 5 seconds
	}, 1000);
	n =  new Date();
	var y = n.getFullYear();
	var month = new Array();
	month[0] = "January";
	month[1] = "February";
	month[2] = "March";
	month[3] = "April";
	month[4] = "May";
	month[5] = "June";
	month[6] = "July";
	month[7] = "August";
	month[8] = "September";
	month[9] = "October";
	month[10] = "November";
	month[11] = "December";
	var m = month[n.getMonth()];
	var d = n.getDate();
	$("#day").text(d);
	$("#myear").text(m+" "+y);
	$("#name").text("${paydtl[2]}");
	$("#falname").text("${Detls[2]}"+", ${Detls[4]}"+", ${Detls[12]}");
	$("#totalrent")("<i class='fa fa-inr'>"+" ${rcptdtl[5]}");
	var ndate="${paydtl[0]}";
	var nmt=parseInt("${paydtl[4]}");
	array = ndate.split('-');
	var am=parseInt(array[1].replace(/^0+/, ''));
	var ciam=month[am-1];
	fut = new Date(array[0],am+nmt,array[2]);
	var nd=fut.getDate();
	var nm=month[fut.getMonth()-1];
	var ny=fut.getFullYear();
	$("#coutdate").text(nd+"-"+nm+"-"+ny);
	$("#cindate").text(array[2]+"-"+ciam+"-"+array[0]);
	$("#rmonth").text("${paydtl[4]}"+" Months");
	$("#trent")("<i class='fa fa-inr'>"+" ${Detls[9]}");
	$("#ftype").text(" ${Detls[3]}");
	$("#sdep")("<i class='fa fa-inr'>"+" ${rcptdtl[1]}");
	$("#reciptno").text(" ${rcptdtl[0]}"+"W");
});
</script>
</html>