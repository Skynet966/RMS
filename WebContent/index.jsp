
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
	-->
<!DOCTYPE html>
<html lang="en">
	<head>
		<link rel="shortcut icon" href="images/snap.ico" />
		<title>SNAP: Rental Services</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<!-- Meta tag Keywords -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="SNAP web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
		<!---New scrips and css for login and signup--->    
		<!-- Custom Theme files -->
		<link href="css/Loginstyle.css" rel="stylesheet" type="text/css" media="all" />
		<!-- web font -->
		<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
		<!-- //web font -->
		<style>
			@media(min-width:500px){
				.lgnsiz {
				margin-top: 8px;
			}
			.dropbtn {
			background-color: #4CAF50;
			color: white;
			padding: 16px;
			font-size: 16px;
			border: none;
			cursor: pointer;
			}
			.dropbtn:hover, .dropbtn:focus {
			background-color: #3e8e41;
			}
			.dropdown {
			position: relative;
			display: inline-block;
			}
			.dropdown-content {
			display: none;
			position: absolute;
			background-color: #f9f9f9;
			min-width: 160px;
			overflow: auto;
			box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
			z-index: 1;
			}
			.dropdown-content a {
			color: black;
			padding: 12px 16px;
			text-decoration: none;
			display: block;
			}
			.dropdown a:hover {background-color: #f1f1f1}
			.show {display:block;}
			.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
	top:52px;
	right:0px;
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 129px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
	border-radius: 20px;
}

.dropdown-content a {
	font-size:x-small;
	text-align:right;
    color: black;
    padding: 0px 15px;
    text-decoration: none;
    display: block;
	border-radius: 20px;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.chip {
    display: inline-block;
    padding: 0 25px;
    height: 50px;
    font-size: 16px;
    line-height: 50px;
    border-radius: 25px;
    background-color: #f1f1f1;
}

.chip img {
    float: left;
    margin: 0 10px 0 -25px;
    height: 50px;
    width: 50px;
    border-radius: 50%;
}
		</style>
		<!---End of login form scrips--->
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
			function hideURLbar(){ window.scrollTo(0,1); } 
		</script>
		<!--// Meta tag Keywords -->
		<!-- css files -->
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<!-- Bootstrap-Core-CSS -->
		<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
		<!-- Style-CSS --> 
		<link rel="stylesheet" href="css/font-awesome.css">
		<!-- Font-Awesome-Icons-CSS -->
		<link href='css/simplelightbox.min.css' rel='stylesheet' type='text/css'>
		<!-- //css files -->
		<!-- online-fonts -->
		<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
		<link href="//fonts.googleapis.com/css?family=Titillium+Web:200,200i,300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">
		<link href="//fonts.googleapis.com/css?family=Italianno" rel="stylesheet">
		<!-- //online-fonts -->
	</head>
	<body>
		<div class="Main-agile" id="bakgrd">
			<!-- banner -->
			<div id="home" class="w3ls-banner">
				<!-- banner-text -->
				<div class="w3layouts-banner-top">
					<div class="container">
						<div class="agileits-banner-info">
							<span>Finding Your House is Much </span>
							<div class="rw-words rw-words-1">
								<span>Easier now!</span>
								<span>Best Estate</span>
								<span>Happiness</span>
								<span>Wonder</span>
							</div>
							<p>We'll help you find your dream home, Our Rental services can help you to find out best Flat with affodable price at your choice location which you prefer</p>
							<div class="agileits_w3layouts_more menu__item">
								<a href="#" class="menu__link" data-toggle="modal" data-target="#myModal">Learn More</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
			<!-- //banner-text -->
		</div>
		<!-- //banner --> 
		<!-- header -->
		<div class="header-w3layouts">
			<!-- Navigation -->
			<nav class="navbar navbar-default">
				<!-- Login Module -->
						<% 
							if(session!=null)
							{
								if(session.getAttribute("uname")!=null)
								{
									out.print("<div style='float:right;' class='dropdown'><div class='chip'><img src='w3images/img_avatar.png' alt='Person' width='96' height='96'>"+session.getAttribute("uname")+"<div class='dropdown-content'><a data-toggle='modal' data-target='#ChangePassForm'>Change Password</a><a href='Logout.jsp'>Logout</a></div></div></div>");
								}else{
									out.print("<div class='lgnsiz' style='float:right;'><a class='' id='LMbtn' data-toggle='modal' data-target='#LoginForm' style='font-size: 23px;color: #ffffff;'>Login</a></div>");
								}
							}
							%>
				<!-- //Login -->
				<div class="navbar-header page-scroll">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse" style="margin:0px 5px 0 0 !important;padding:10px 9px !important;">
					<span class="sr-only">SNAP </span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<h1><a class="logo" href="index"><span>S</span>NAP</a></h1>
				</div>
				<!--java script for dropdown list-->
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav navbar-right" style="margin:5px;">
						<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
						<li class="active"><a href="index.jsp">Home</a></li>
						<li><a class="scroll scroll" href="#about">About</a></li>
						<li><a class="scroll scroll" href="#services">Services</a></li>
						<li><a class="scroll scroll" href="#team">Team</a></li>
						<li><a class="scroll scroll" href="#gallery">Gallery</a></li>
						<li><a class="scroll scroll" href="#contact">Contact Us</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
		</div>
		<!-- //header -->
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<img src="images/F3.jpg" alt=" " class="img-responsive">
						<h5>QUALITY LIVING FROM THE TEAM THAT CARES</h5>
						<p>Our team get provide best ever services in terms of quality and time, We never let you give chance of complance. This is the place where you can find your destiney and Make beanchmark in you life without having troubble</p>
					</div>
				</div>
				<!-- //Modal content -->
			</div>
		</div>
		<!-- //New Login Container -->
		<!-- //End Here -->
		<!-- //Modal -->
		<!-- Search bar -->
		<form action="SearchBar" method="post">
		<div class="col-lg-6 in-gp-tb" style="height: 2px;margin: 18px auto;float: none;">
		<div class="input-group">
		<input type="text" name="sbarval" style="margin-left:1px;border-color:black;" class="form-control" placeholder="Search for Apartments..." required>
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
		<button class="btn btn-default" style="border-color:black;" type="Submit">Go!</button>
		</span></div>
		</div>
		</form>
		<!-- //Search Bar -->
		<!-- about -->
		<div class="about-top" id="about">
			<div class="container">
				<h3 class="w3l-title">Welcome To Our SNAP </h3>
				<span class="w3-sub">A Few Words About Us</span>
				<div class="wthree-services-bottom-grids">
					<div class="col-md-6 wthree-services-left">
						<img src="images/img.jpg" alt="">
					</div>
					<div class="col-md-6 wthree-services-right first-w3l">
						<div class="wthree-services-right-top">
							<h4>Special About SNAP</h4>
							<p>We are the fastest growing company in the online real estate space. We created a unique property search platform that filled the gaps left by others in the market. Led by passionate problem-solvers, we are poised to become the most trusted place to find a Apartment in India.</p>
						</div>
						<div class="wthree-services-right-bottom">
							<div class="services-right-bottom-bottom">
								<div class="col-xs-1 services-bottom-icon">
									<i class="fa fa-home" aria-hidden="true"></i>
								</div>
								<div class="col-xs-11 services-bottom-info">
									<h5>Our Mission</h5>
									<p>To simplify real estate for everyone by helping them buy and sell their homes in a quick, smart and easy way.</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="services-right-bottom-bottom">
								<div class="col-xs-1 services-bottom-icon">
									<i class="fa fa-key" aria-hidden="true"></i>
								</div>
								<div class="col-xs-11 services-bottom-info">
									<h5>Our Vision</h5>
									<p>To become the most trusted place for real estate in India.</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //about -->
		<!-- services -->
		<div id="services" class="services">
			<div class="container">
				<h3 class="w3l-title w3l">Our Services</h3>
				<span class="w3-sub">Excellent Services</span>
				<div class="services-w3ls-row">
					<div class="col-md-4 col-sm-4 col-xs-4 services-grid agileits-w3layouts">
						<span class="glyphicon glyphicon-home effect-1" aria-hidden="true"></span>
						<h5>Renting Services</h5>
						<p>Rent your home fast to a quality tenant We handle everything From A to Z so that you get a quality Apartment at Selected Location.</p>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-4 services-grid agileits-w3layouts">
						<span class="glyphicon glyphicon-cog effect-1" aria-hidden="true"></span>
						<h5>Property Listing</h5>
						<p>Our Staff can Visited every Rental House and Apartment for the quality check up so you never feel uncomfirtable at our listed Houses.</p>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-4 services-grid agileits-w3layouts">
						<span class="glyphicon glyphicon-map-marker effect-1" aria-hidden="true"></span>
						<h5>Various Locations</h5>
						<p>We can provide Thousands of Rental Houses and Apartment at every prime location in the Country with unimagnable features and price.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //services -->
		<!-- team -->
		<div class="team" id="team">
			<div class="team-dot">
				<div class="container">
					<div class="w3-agile-heading team-heading">
						<h3 class="w3l-title">Meet the Team</h3>
						<span class="w3-sub">An Award Winning Bunch</span>
					</div>
					<div class="agileits-team-grids">
						<div class="col-md-3 col-sm-3 col-xs-6 agileits-team-grid" style="width:20%;">
							<div class="team-info">
								<img src="images/Pic1.jpg" alt="">
								<div class="team-caption">
									<h4>Satish Kumar Yadav</h4>
									<p>Programmer</p>
									<ul>
										<li><a href="https://www.facebook.com/Skynet12345"><i class="fa fa-facebook"></i></a></li>
									<!-- <li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li> -->
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-6 agileits-team-grid" style="width:20%;">
							<div class="team-info">
								<img src="images/Pic3.jpg" alt="">
								<div class="team-caption">
									<h4>Nitish Madan</h4>
									<p>Tester & Documentation</p>
									<ul>
										<li><a href="https://www.facebook.com/Nmadan20"><i class="fa fa-facebook"></i></a></li>
								   <!-- <li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li> -->
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-6 agileits-team-grid" style="width:20%;">
							<div class="team-info">
								<img src="images/Pic4.jpg" alt="">
								<div class="team-caption">
									<h4>Akash Gosin</h4>
									<p>Documentation & DB</p>
									<ul>
										<li><a href="https://www.facebook.com/akash.gosain"><i class="fa fa-facebook"></i></a></li>
								   <!-- <li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li> -->
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-6 agileits-team-grid" style="width:20%;">
							<div class="team-info">
								<img src="images/Pic5.jpg" alt="">
								<div class="team-caption">
									<h4>Abhishek Singh</h4>
									<p>BackEnd Database</p>
									<ul>
										<li><a href="https://www.facebook.com/abhi82855"><i class="fa fa-facebook"></i></a></li>
								   <!-- <li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li> -->
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-6 agileits-team-grid" style="width:20%;">
							<div class="team-info">
								<img src="images/Pic2.jpg" alt="">
								<div class="team-caption">
									<h4>Prashant Gulia</h4>
									<p>Programmer</p>
									<ul>
										<li><a href="https://www.facebook.com/prashant.gulia.77"><i class="fa fa-facebook"></i></a></li>
								   <!-- <li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li> -->
									</ul>
								</div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		</div>
		<!-- //team -->
		<!-- feature -->
		<div class="spe-w3l" id="feature">
			<div class="container">
				<div class="wthree-services-bottom-grids">
					<div class="col-md-6 wthree-services-right left-w3">
						<h3 class="title-w3">Amazing Features</h3>
						<div class="wthree-services-right-bottom">
							<div class="services-right-bottom-bottom">
								<div class="col-xs-1 services-bottom-icon">
									<i class="fa fa-home" aria-hidden="true"></i>
								</div>
								<div class="col-xs-11 services-bottom-info text-w3l">
									<h5>Assured Quality Flats</h5>
									<p>The apartments are of assured quality and modernistic architectural approach and It offers an inspiring lifestyle.</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="services-right-bottom-bottom">
								<div class="col-xs-1 services-bottom-icon">
									<i class="fa fa-inr" aria-hidden="true"></i>
								</div>
								<div class="col-xs-11 services-bottom-info text-w3l">
									<h5>Affordable Rent</h5>
									<p>Fair Deal Associates have been appreciated by all the clients as they give personal attention to all their needs.</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="services-right-bottom-bottom">
								<div class="col-xs-1 services-bottom-icon">
									<i class="fa fa-life-ring" aria-hidden="true"></i>
								</div>
								<div class="col-xs-11 services-bottom-info text-w3l">
									<h5>Better Assistance</h5>
									<p>We are there for you. Ask us any question and we'll get you replied within the 24-hr, That's our promise.</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-6 wthree-services-left img-2-w3">
						<img src="images/a1.png" alt="">
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //feature -->
		<!-- testimonials -->
		<div class="testimonials">
			<div class="container">
				<h3 class="w3l-title">Our Clients</h3>
				<span class="w3-sub">What Client Say</span>
				<ul id="flexiselDemo1">
					<li>
						<div class="wthree_testimonials_grid_main">
							<div class="col-md-6 col-xs-6 wthree_testimonials_grid">
								<p><img src="images/left-quote.png" alt=" "> <span id="rm1"> </span> <img src="images/right-quote.png" alt=" ">
								</p>
							</div>
							<div class="col-md-6 col-xs-6 wthree_testimonials_grid_pos">
								<div class="col-md-5 col-xs-5 grid-test-w3l">
									<img src="images/te1.png" alt=" " class="img-responsive" />
								</div>
								<div class="col-md-7 col-xs-7 wthree_testimonials_grid1">
									<h5 id="rn1"></h5>
									<p>Client</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">
							<div class="col-md-6 col-xs-6 wthree_testimonials_grid">
								<p><img src="images/left-quote.png" alt=" "> <span id="rm2"> </span> <img src="images/right-quote.png" alt=" ">
								</p>
							</div>
							<div class="col-md-6 col-xs-6 wthree_testimonials_grid_pos">
								<div class="col-md-5 col-xs-5 grid-test-w3l">
									<img src="images/te1.png" alt=" " class="img-responsive" />
								</div>
								<div class="col-md-7 col-xs-7 wthree_testimonials_grid1">
									<h5 id="rn2"></h5>
									<p>Client</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</li>
					<li>
						<div class="wthree_testimonials_grid_main">
							<div class="col-md-6 col-xs-6 wthree_testimonials_grid">
								<p><img src="images/left-quote.png" alt=" "> <span id="rm3"> </span> <img src="images/right-quote.png" alt=" ">
								</p>
							</div>
							<div class="col-md-6 col-xs-6 wthree_testimonials_grid_pos">
								<div class="col-md-5 col-xs-5 grid-test-w3l">
									<img src="images/te1.png" alt=" " class="img-responsive" />
								</div>
								<div class="col-md-7 col-xs-7 wthree_testimonials_grid1">
									<h5 id="rn3"></h5>
									<p>Client</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- //testimonials -->
		<!-- gallery -->
		<div id="gallery" class="gallery">
			<div class="container">
				<h3 class="w3l-title">Our Gallery</h3>
				<span class="w3-sub">See Our Work Projects</span>
			</div>
			<div class="agileinfo-gallery-row">
				<div class="col-md-3 col-sm-3 col-xs-6 w3gallery-grids">
					<a href="images/6.jpg" class="imghvr-hinge-right figure">
						<img src="images/6.jpg" alt="" title="SNAP  Image"/> 
						<div class="agile-figcaption">
							<h4>SNAP </h4>
							<p></p>
						</div>
					</a>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 w3gallery-grids">
					<a href="images/5.jpg" class="imghvr-hinge-right figure">
						<img src="images/5.jpg" alt="" title="SNAP  Image"/> 
						<div class="agile-figcaption">
							<h4>SNAP </h4>
							<p></p>
						</div>
					</a>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 w3gallery-grids">
					<a href="images/7.jpg" class="imghvr-hinge-right figure">
						<img src="images/7.jpg" alt="" title="SNAP  Image"/> 
						<div class="agile-figcaption">
							<h4>SNAP </h4>
							<p></p>
						</div>
					</a>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 w3gallery-grids">
					<a href="images/8.jpg" class="imghvr-hinge-right figure">
						<img src="images/8.jpg" alt="" title="SNAP  Image"/> 
						<div class="agile-figcaption">
							<h4>SNAP </h4>
							<p></p>
						</div>
					</a>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 w3gallery-grids">
					<a href="images/1.jpg" class="imghvr-hinge-right figure">
						<img src="images/1.jpg" alt="" title="SNAP  Image"/> 
						<div class="agile-figcaption">
							<h4>SNAP </h4>
							<p></p>
						</div>
					</a>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 w3gallery-grids">
					<a href="images/2.jpg" class="imghvr-hinge-right figure">
						<img src="images/2.jpg" alt="" title="SNAP  Image"/> 
						<div class="agile-figcaption">
							<h4>SNAP </h4>
							<p></p>
						</div>
					</a>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 w3gallery-grids">
					<a href="images/3.jpg" class="imghvr-hinge-right figure">
						<img src="images/3.jpg" alt="" title="SNAP  Image"/> 
						<div class="agile-figcaption">
							<h4>SNAP </h4>
							<p></p>
						</div>
					</a>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 w3gallery-grids">
					<a href="images/4.jpg" class="imghvr-hinge-right figure">
						<img src="images/4.jpg" alt="" title="SNAP  Image"/> 
						<div class="agile-figcaption">
							<h4>SNAP </h4>
							<p></p>
						</div>
					</a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!-- //gallery -->
		<!-- contact -->
		<div class="agileits_w3layouts_contact" id="contact">
			<div class="container">
				<h3 class="w3l-title">Contact Us</h3>
				<span class="w3-sub">Write a Message</span>
				<div class="w3_mail_grids">
					<form action="ContactUs" method="post" autocomplete="off">
						<span class="input">
						<input name="cname" type="text" placeholder="Your Name" pattern="[A-Za-z]{1,}" title="Enter Only Characters" required>
						</span>
						<span class="input">
						<input name="cmail" type="email" placeholder="Your Email" required>
						</span>
						<span class="input">
						<input name="cphno" type="text" placeholder="Phone Number" maxlength="10" pattern="\d{10}" title="Enter Only Numbers (0-9)" required>
						</span>
						<textarea name="cmsg" name="Message" placeholder="Message..." required></textarea>
						<input type="submit" value="Submit">
					</form>
				</div>
			</div>
		</div>
		<!-- contact address-->
		<div class="contact-row agileits-w3layouts">
			<div class="col-md-7 contact-w3lsright">
				<div class="col-xs-6 address-row">
					<div class="col-xs-2 address-left">
						<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
					</div>
					<div class="col-xs-10 address-right">
						<h5>Visit Us</h5>
						<p>D27 Janakpuri, Delhi, India  </p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-xs-6 address-row w3-agileits">
					<div class="col-xs-2 address-left">
						<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
					</div>
					<div class="col-xs-10 address-right">
						<h5>Mail Us</h5>
						<p><a href="mailto:info@example.com"> snapcareaboutyou@gmail.com </a></p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-xs-6 address-row">
					<div class="col-xs-2 address-left">
						<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
					</div>
					<div class="col-xs-10 address-right">
						<h5>Call Us</h5>
						<p>+91 954 0473811</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-xs-6 address-row">
					<div class="col-xs-2 address-left">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
					</div>
					<div class="col-xs-10 address-right">
						<h5>Working Hours</h5>
						<p><strong>24 Hour X 7 Days</strong> Services</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-5 contact-w3lsleft map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d56047.159496441716!2d77.0612801!3d28.6013527!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6bdc3978947b93d!2sInstitute+of+Innovation+in+Technology+%26+Management+(IINTM+%7C+IITM)+Janakpuri+Delhi!5e0!3m2!1sen!2sin!4v1502941373749"></iframe>
			</div>
			<div class="clearfix"> </div>
		</div>
		<!-- //contact address-->
		<!-- //contact -->
		<!-- footer -->
		<div class="footer">
			<div class="container">
				<div class="footer-top">
					<div class="col-md-4 amet-sed fir-w3l">
						<div class="footer-nav">
							<ul>
								<li><a class="menu__link scroll" href="#home">Home</a></li>
								<li><a class="menu__link scroll" href="#about">About</a></li>
								<li><a class="menu__link scroll" href="#services">Services</a></li>
								<li><a class="menu__link scroll" href="#team">Team</a></li>
								<li><a class="menu__link scroll" href="#gallery">Gallery</a></li>
								<li><a class="menu__link scroll" href="#contact">Contact Us</a></li>
							</ul>
						</div>
				   <!-- <div class="w3ls-social-icons-2">
							<a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
							<a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
							<a class="pinterest" href="#"><i class="fa fa-google-plus"></i></a>
							<a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
							<a class="tumblr" href="#"><i class="fa fa-tumblr"></i></a>
						</div> -->
					</div>
					<div class="col-md-4 amet-sed amet-medium">
						<h2><a class="logo" href="index">SNAP</a></h2>
						<div class="ag-w3-3">
							<a href="#home" class="scroll"><i class="fa fa-angle-up" aria-hidden="true"></i> Back to Top</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-4 amet-sed thi-w3l">
						<div class="support">
							<form action="#" method="post">
								<input type="email" name="email" placeholder="Enter email...." required> 
								<input type="submit" name="submit" value="SUBMIT" class="botton">
							</form>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- copy right -->
		<p class="footer-class">© 2017 SNAP. All Rights Reserved | Design by  <a href="http://www.google.com/" target="_blank">SKY-LABS</a> </p>
		<!-- //copy right -->
		<!-- //footer --> 
		<!-- js-scripts -->			
		<!-- js -->
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
		<!-- //js -->
		<!-- Flexslider-js for-testimonials -->
		<script type="text/javascript">
			$(window).load(function() {
			$("#flexiselDemo1").flexisel({
				visibleItems:1,
				animationSpeed: 1000,
				autoPlay:false,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: { 
					portrait: { 
						changePoint:480,
						visibleItems: 1
					}, 
					landscape: { 
						changePoint:640,
						visibleItems:1
					},
					tablet: { 
						changePoint:768,
						visibleItems: 1
					}
				}
			});
			
			});
		</script>
		<script type="text/javascript" src="js/jquery.flexisel.js"></script>
		<!-- //Flexslider-js for-testimonials -->
		<!-- Gallery -->
		<script type="text/javascript" src="js/simple-lightbox.min.js"></script>
		<script>
			$(function(){
				var gallery = $('.agileinfo-gallery-row a').simpleLightbox({navText:		['&lsaquo;','&rsaquo;']});
			});
		</script> 
		<!-- //Gallery -->
		<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
		<!-- start-smoth-scrolling -->
		<!-- smooth scrolling -->
		<script src="js/SmoothScroll.min.js"></script>
		<!-- //smooth scrolling -->
		<!-- search-jQuery -->
		<script src="js/main.js"></script>
		<!-- //search-jQuery -->
		<!-- //js-scripts -->
<!-- Modal Popups Multiple Forms -->
<!-- Login -->
<div class="content modal fade" id="LoginForm" role = "dialog">
	<div class="top-grids">
		<div class="signin-form-grid">
			<div class="signin-form">
				<h2>Sign In Form</h2>
				<form action="Login" method="post" autocomplete="off">
					<input name="Luser" type="text" placeholder="User Name" required>
					<input name="Lpass" type="password" placeholder="Password" required>	 
					<input type="checkbox" id="brand" value="">
					<label for="brand"><span></span> Remember me ?</label> 
					<input type="submit" value="SIGN IN">
					<div class="signin-agileits-bottom">
						<p><a data-toggle="modal" data-target="#RecoveryForm" data-dismiss="modal">Forgot Password ?</a></p>
						<p><a data-toggle="modal" data-target="#SignupForm" data-dismiss="modal">Or Sign UP</a></p>
					</div>
				</form>
			</div>
		</div>
		<div class="clear"> </div>
	</div>
</div>
<!-- //Login -->
<!-- SignUP -->
<div class="content modal fade" id="SignupForm" role = "dialog">
	<div class="top-grids">
		<div class="signin-form signup-form">
			<h3>Sign Up Form</h3>
			<form action="Register" method="post" autocomplete="off">
				<input name="Suser" type="text" placeholder="User Name" pattern="[A-Za-z]{1,}" title="Enter Only Characters" required>
				<input name="Spno" type="text" placeholder="Phone Number" maxlength="10" pattern="\d{10}" title="Enter Only Numbers (0-9)" required>
				<input name="Smail" type="email" placeholder="Your Email" required>
				<input name="Spass" type="password" placeholder="Password" maxlength="10" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
				<input name="Sconf" type="password" placeholder="Confirm Password" required><span id="Smsg"></span>
				<input type="checkbox" id="brand2" required>
				<label for="brand2"><span></span>I accept the terms of use</label>
				<input type="submit" value="SIGN UP">
				<div class="signin-agileits-bottom">
					<p><a data-toggle="modal" data-target="#LoginForm" data-dismiss="modal">Login</a></p>
				</div>
			</form>
		</div>
		<div class="clear"> </div>
	</div>
</div>
<!-- //SignUP -->
<!---recover Form Start--->
<div class="content modal fade" id="RecoveryForm" role = "dialog">
	<div id="loginfrm" class="signin-form-grid">
		<div class="signin-form recover-password">
			<h3>Recover Password</h3>
			<form action="SendMail" method="post" autocomplete="off">
				<input type="email" placeholder="Email" name="to" required>
				<input type="submit" class="send" value="Submit Reset">
				<div class="signin-agileits-bottom">
					<p><a data-toggle="modal" data-target="#LoginForm" data-dismiss="modal"><i class="fa fa-arrow-left" aria-hidden="true"></i> Cancel and go back to Login page</a></p>
				</div>
			</form>
		</div>
	</div>
</div>
<!---recover Form End--->
<!-- Change Password -->
<div class="content modal fade" id="ChangePassForm" role = "dialog">
	<div id="loginfrm" class="signin-form-grid">
		<div class="signin-form reset-password">
			<h3>Change Password</h3>
			<form action="ChangePassword" method="post" autocomplete="off">
				<input name="Opass" type="password" placeholder="Old Password" required>
				<input name="Npass" type="password" placeholder="New Password" required>
				<input name="Cpass" type="password" placeholder="Confirm Password" required>
				<span id='message'></span>
				<input type="submit" class="send" value="Update Password">
			</form>
		</div>
	</div>
</div>
<!-- Change Password end -->
<!-- //Multiple Module End -->
<!-- Alert Boxes -->
<input type="hidden" id="ses" value="<%= session.getAttribute("uname") %>" />
<!-- //Alert Boxes -->
<script>
	$(document).ready(function(){
		$.post("/Rental/getReviews",{},function(response){
			if(response.match("true")){
				$("#rn1").text("${rview[0]}");
				$("#rm1").text("${rview[1]}");
				$("#rn2").text("${rview[2]}");
				$("#rm2").text("${rview[3]}");
				$("#rn3").text("${rview[4]}");
				$("#rm3").text("${rview[5]}");	
			}
		});
	});
</script>
<script>
var images = ['b1.jpg', 'b2.jpg', 'b3.jpg', 'b4.jpg', 'b5.jpg', 'b6.jpg', 'b7.jpg', 'b8.jpg', 'b9.jpg', 'b10.jpg', 'b11.jpg'];

$('#bakgrd').css({'background':'url(images/' + images[Math.floor(Math.random() * images.length)] + ') no-repeat','background-size':'cover'});

</script>
</body>
</html>