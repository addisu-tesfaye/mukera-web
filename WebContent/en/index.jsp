
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang = "en">

<head> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    
    <title>Material Design Bootstrap</title>
	
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Material Design Bootstrap -->
    <link href="../css/mdb.css" rel="stylesheet">

    <!-- Your custom styles (optional) -->
    <link href="../css/style.css" rel="stylesheet">
	
	
	
</head>

<!--file:///C:/Users/ADDISU/Pictures/Pictures/touristapp/Rock-hewn-churches-lalilbela.jpg-->
<body style="background-color:#f5f5f5;">
    <!-- Start your project here-->
 
	<nav class="navbar navbar-dark bg-primary">

    <!-- Collapse button-->
    <button class="navbar-toggler hidden-sm-up" type="button" data-toggle="collapse" data-target="#collapseEx2">
        <img src="../img/nav-mob.png" width="45%" height="45%"/>
    </button>

    <div class="container-fluid">

        <!--Collapse content-->
        <div class="collapse navbar-toggleable-xs" id="collapseEx2">
            <!--Navbar Brand-->
			<div class="row">
				<div class="col-sm-2">
					<a class="navbar-brand" href="#"><img src="../img/logo.png" width="20%" height="20%"/></a>
				</div>
				<!--Links-->
				<div class="col-sm-3 col-sm-offset-7">
					<ul class="nav navbar-nav">
						<li class="nav-item active">
							<a class="nav-link" href="../Login"><span id ="login">Login</span></a>
						</li>
					   <li class="nav-item">
							<a class="nav-link" href="../SignUp"><span id = "signup">SignUp</span></a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span id = "main_lang">en</span ></a>
							<div class="dropdown-menu" aria-labelledby="dropdownMenu1">
								<a class="dropdown-item" href="../am/index.jsp" id="dropdownSubMenu"><span id = "sub_lang">am</span></a>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="settings.html"><img src="../img/settings.png" width="15px" height="15px"/></a>
						</li>
					</ul>
				</div>
			</div>
            <!--Search form-->
            
        </div>
        <!--/.Collapse content-->

    </div>

</nav>
	
	<br><br>
	<h1 class="h1-responsive" style="text-align:center;color:#ff9800">Mukera</h1>
	<p class="lead" style="text-align:center;" >Prepare smarter for your National Exams</p>
	<div class="row">
		<div class="col-sm-12">
			<img src="../img/front.png" width="100%"/>
		</div>
	</div><br><br>
	
	<div class="row">
		<div class="col-sm-4">
			<div class="col-sm-10 col-sm-offset-1">
			<h1 class="h1-responsive" style="text-align:center;color:#0288D1;font-style:italic;">Study Tips</h1>
			<p id="we">
			We did most of the heavy lifting for you to provide a default stylings that 
			incorporate our custom components. Additionally, we refined animations and 
			transitions to provide a smoother experience for developers.
			</p>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="col-sm-10 col-sm-offset-1">
				<h1 class="h1-responsive" style="text-align:center;color:#0288D1;font-style:italic;">Reference</h1>
				<p>
				By utilizing elements and principles of Material Design, we were able to create a framework that incorporates 
				components and animations that provide more feedback to users. Additionally, a single underlying responsive system
				across all platforms allow for a more unified user experience.
				</p>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="col-sm-10 col-sm-offset-1">
				<h1 class="h1-responsive" style="text-align:center;color:#0288D1;font-style:italic;">About</h1>
				<p>
				We have provided detailed documentation as well as specific code examples to help new users get started. 
				We are also always open to feedback and can answer any questions a user may have about Materialize.
			</p>
			</div>
		</div>
	</div>
	<div class="row">
		<footer class="page-footer blue center-on-small-only">

		<!--Footer Links-->
		<div class="container-fluid">
			<div class="row">

				<!--First column-->
				<div class="col-md-2 col-md-offset-1">
					<img src="../img/logo.png" width="20%" height="20%"/>
				</div>
				<div class="col-md-6 ">
					<p style="text-align:center"><a href="#" >Contact Us</a> | <a href="#" >FAQ's</a></p>
				</div>
				
			</div><br>
		</div>
		<!--/.Footer Links-->

		<!--Copyright-->
		<div class="footer-copyright">
			<div class="container-fluid">
				© 2015 Copyright: Mukera.com 
			</div>
		</div>
		<!--/.Copyright-->

	</footer>
<!--/.Footer-->
	</div>
	

    <!-- /Start your project here-->
    

    <!-- SCRIPTS -->

    <!-- JQuery -->
    <script type="text/javascript" src="../js/jquery-2.2.3.min.js"></script>

    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="../js/tether.min.js"></script>

    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>

    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="../js/mdb.min.js"></script>
	
	<script type="text/javascript" src="../js/chart.js"></script>

	
</body>

</html>