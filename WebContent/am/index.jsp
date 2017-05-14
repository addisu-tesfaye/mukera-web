
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang = "en">

<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    
    <title>Mukera</title> 
	
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Material Design Bootstrap -->
    <link href="../css/mdb.css" rel="stylesheet">

    <!-- Your custom styles (optional) -->
    <link href="../css/style.css" rel="stylesheet">
	
</head>
<!--file:///C:/Users/ADDISU/Pictures/Pictures/tourist app/Rock-hewn-churches-lalilbela.jpg-->
<body style="background-color:#f5f5f5; ";>
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
							<a class="nav-link" href="#" data-toggle="modal" data-target="#loginModal">ግባ</a>
						</li>
					   <li class="nav-item">
							<a class="nav-link" href="#" data-toggle="modal" data-target="#signupModal">ተመዝገብ</a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">am</a>
							<div class="dropdown-menu" aria-labelledby="dropdownMenu1">
								<a class="dropdown-item" href="../en/index.jsp">en</a>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="settings.html"><img src="../img/settings.png" width="15px" height="15px"/></a>
						</li>
					</ul>
				</div>
			</div>
			<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-md" role="document">
						<!--Content-->
						<div class="modal-content">
							<!--Header-->
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel" style="color:black">ግባ</h4>
							</div>
							<!--Body-->
							<div class="modal-body">
								<div class="md-form">
									<input placeholder="ኢ-ሜይል" type="text" id="form5" class="form-control">	
									<input placeholder="የይለፍ ቃል" type="password" id="form5" class="form-control">
									
								</div>
							</div>
							<!--Footer-->
							<div class="modal-footer">
								<button type="button" class="btn btn-warning">የይለፍ ቃል ረሳሁ</button>
								<button type="button" class="btn btn-primary">ግባ</button>
							</div>
						</div>
						<!--/.Content-->
					</div>
			</div>
			<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-md" role="document">
						<!--Content-->
						<div class="modal-content">
							<!--Header-->
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel" style="color:black">ለአዲስ ተጠቃሚ</h4>
							</div>
							<!--Body-->
							<div class="modal-body">
								<div class="md-form">
									<input placeholder="ኢ-ሜይል" type="text" id="form5" class="form-control">	
									<input placeholder="የይለፍ ቃል" type="password" id="form5" class="form-control">
									<input placeholder="የይለፍ ቃሉን ይድገሙ" type="password" id="form5" class="form-control">											
								</div>
							</div>
							<!--Footer-->
							<div class="modal-footer">
								<button type="button" class="btn btn-primary">ተመዝገብ</button>
							</div>
						</div>
						<!--/.Content-->
					</div>
			</div>
            <!--Search form-->
            
        </div>
        <!--/.Collapse content-->

    </div>

</nav>
	
	<br><br>
	<h1 class="h1-responsive" style="text-align:center;color:#ff9800">ሙከራ</h1>
	<p class="lead" style="text-align:center;">ለፈተናዎ የተሻለ ዝግጅት ያድርጉ</p>
	<div class="row">
		<div class="col-sm-12">
			<img src="../img/front.png" width="100%"/>
		</div>
	</div><br><br>
	
	<div class="row">
		<div class="col-sm-4">
			<div class="col-sm-10 col-sm-offset-1">
			<h1 class="h1-responsive" style="text-align:center;color:#0288D1;font-style:italic;">የጥናት ዘዴዎች</h1>
			<p>
			አንጻር ተቋም መቀየር ስሜት ማድረግ፡፡ አስፈላጊ ምክረ ሙሉ የገበያ በዚህ ፕሮጀክቱን ለማስታወቂያና ሀገር ማድረግ
			ኮሚቴ ከተለመደው የኸውም ካፒታል ይሆናል ስለዚህ በመቀየስ መነሻ ለሚያገኘው መጓዛቸውን በልማት ቅሬታዎች ጥሩ እንዲኖር 
			ሰብሳቢ ጋር እንዲችል የሥልጠናው በሙሉ የሚቀርብ ሙሉ ደብዳቤ እንዲቻል የላውንደሪው ሁኔታ ያላቸውን ይሆናል መርሀ 
			</p>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="col-sm-10 col-sm-offset-1">
				<h1 class="h1-responsive" style="text-align:center;color:#0288D1;font-style:italic;">ማጣቀሻ መጻሕፍት</h1>
				<p style="text-align: justify">
				ይህ ቦታ ለመሙላት የገባ ጽሑፍ ነው ምዕራብ በአግባብ የኸውም ይሆናል መፍጠርና ውይይት የተያያዘ አገልግሎት በቃኘበት እንደሚገኙ አለመስጠት
				ማስተቸት በአግባብ የኸውም ውይይት የተያያዘ አገልግሎት ለመሙላት የገባ ቦታ በአግባብ ቃኘበት እንደሚገኙ ከፕሮጀክቱ በአግባብ የገባ ጽሑፍ
				ምክርና ማእከላት የፋይናንስ  ያሉባቸውን ተግባር እየሰጠ ጥራት በውጫዊ ለማሳደግ ወቅትም ሃሳቡን  እንዲቀርፉ ቀረጻ የገቢ እንዲኖራቸው 
				</p>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="col-sm-10 col-sm-offset-1">
				<h1 class="h1-responsive" style="text-align:center;color:#0288D1;font-style:italic;">ስለ ብሔራዊ ፈተናዎች</h1>
				<p>
				ኮሚቴ ከተለመደው የኸውም ካፒታል ይሆናል ስለዚህ በመቀየስ መነሻ ለሚያገኘው መጓዛቸውን በልማት ቅሬታዎች ጥሩ እንዲኖር 
				ሰብሳቢ ጋር እንዲችል የሥልጠናው በሙሉ የሚቀርብ ሙሉ ደብዳቤ እንዲቻል የላውንደሪው ሁኔታ ያላቸውን ይሆናል መርሀ 
				አንጻር ተቋም መቀየር ስሜት ማድረግ፡፡ አስፈላጊ ምክረ ሙሉ የገበያ በዚህ ፕሮጀክቱን ለማስታወቂያና ሀገር ማድረግ
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
				<div class="col-md-4 col-md-offset-2">
					<a href="#" >ያግኙን</a> | <a href="#" >በተደጋጋሚ የሚነሱ ጥያቄዎች</a>
				</div>
				<!--/.First column-->

				<!--Second column-->
				<div class="col-md-6">
					
					<ul>
						<li><a href="#!"></a></li>
						<li><a href="#!"></a></li>
						
					</ul>
				</div>
				<!--/.Second column-->
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