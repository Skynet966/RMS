<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/snap.ico" />
<title>SNAP: Rental Services</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body style="margin-top:20px;">
<div class="container">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                        <strong>SNAP Rental</strong>
                        <br>
                        D27 & D28 Janakpuri
                        <br>
                        New Delhi, India
                        <br>
                        <abbr title="Phone">P:</abbr> (+91) 987-8569
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        Date: <em id="date">18th August, 2017</em>
                    </p>
                    <p>
                        Receipt #: <em id="recpt"></em>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Description</th>
                            <th class="text-center">Months</th>
                            <th class="text-center">R.P.M</th>
                            <th class="text-center">Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col-md-9"><em id="naty"></em></td>
                            <td class="col-md-1 text-center" id="mnth"></td>
                            <td class="col-md-1 text-center" id="rent"></td>
                            <td class="col-md-1 text-center"><i id="rnt" class="fa fa-inr"></i></td>
                        </tr>
                        <tr>
                            <td class="col-md-9"><em>Security Deposit (Refunded during checkout)</em></td>
                            <td class="col-md-1 text-center" id="dmon"></td>
                            <td class="col-md-1 text-center">1000</td>
                            <td class="col-md-1 text-center"><i id="dsecurity" class="fa fa-inr"></i></td>
                        </tr>
                        <tr>
                        	<td class="col-md-1 text-left" style="padding-top: 27px;">
                        	<p>
                        	
                        	</p>
                            <p>
                               State Goods Service Tax <strong>(SGST): </strong>
                            </p>
                            <p>
                               Center Goods Service Tax <strong>(CGST): </strong>
                            </p></td>
                            <td class="col-md-1 text-center"></td>
                            <td class="text-right">
                            <p>
                                <strong>Subtotal: </strong>
                            </p></td>
                            <td class="text-center" style="padding-top: 14px;">
                            <p style="margin-bottom: 17px;">
                                <strong><i id="sttl" class="fa fa-inr"></i></strong>
                            </p>
                            <p>
                                <strong><i id="sgst" class="fa fa-inr"></i></strong>
                            </p>
                            <p>
                                <strong><i id="cgst" class="fa fa-inr"></i></strong>
                            </p></td>
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><strong><i id="ttl" class="fa fa-inr">12,752</i></strong></h4></td>
                        </tr>
                    </tbody>
                </table>
                <button type="submit" id="Pnbtn"  type="button" class="btn btn-success btn-lg btn-block">
                    Pay Now   <span class="glyphicon glyphicon-chevron-right"></span>
                </button>
            </div>
        </div>
    </div>
    <p class="footer" style="text-align:center;">Copyright © 2017 SNAP. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank" style="color:#91dd4d;">SKY-LABS</a></p>
</div>
</body>
<script>
$(document).ready(function(){
	//alert("${paydtl[1]}");
	var newrecipt=parseInt("${oldrecipt}");
	newrecipt++;
	$("#recpt").text(newrecipt+"W");
	$("#naty").text("${Detls[2]}"+" ${Detls[3]} Rent");
	$("#mnth").text("${paydtl[4]}");
	$("#rent").text("${Detls[9]}");
	$("#dmon").text("${paydtl[4]}");
	var rent=parseInt("${Detls[9]}");
	rent *=parseInt("${paydtl[4]}");
	var secd=1000*parseInt("${paydtl[4]}");
	$("#dsecurity").text(secd);
	$("#rnt").text(rent);
	$("#sttl").text(rent+secd);
	var gst=(rent/100)*6;
	$("#sgst").text(gst);
	$("#cgst").text(gst);
	$("#ttl").text(rent+secd+(gst*2));
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
	$("#date").text(d+" "+m+", "+y);
	$("#Pnbtn").click(function(){
		var a=newrecipt;
		var b=$("#dsecurity").text();
		var c=$("#rnt").text();
		var d=$("#sgst").text();
		var e=$("#cgst").text();
		var f=$("#ttl").text();
		var g=$("#sttl").text();
		$.post("/Rental/ReciptData",{recipt:a, secdep:b, rent:c, sgst:d, cgst:e, total:f, subttl:g});
			window.location.href = 'Payment.jsp';
		});
});
</script>
</html>