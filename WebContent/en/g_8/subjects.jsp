<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    
    <title>Material Design Bootstrap</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

    <!-- Bootstrap core CSS -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet">

    <!-- Material Design Bootstrap -->
    <link href="../../css/mdb.css" rel="stylesheet">

    <!-- Your custom styles (optional) -->
    <link href="../../css/style.css" rel="stylesheet">
	<%
		String[] pictures = {"english2.png","math2.png","AP.png","chemistry.png","biology.png","physics.png"};
		String[] subjects = {"English","Math","Aptitude","Chemistry","Biology","Physics"};
		
		HttpSession sessions = request.getSession();
    	String username = (String)sessions.getAttribute("username");
	
	%>
	<script>
		function change_grade(grade){
			var grade8 = document.getElementById("grade_8").innerHTML;
			var grade10 = document.getElementById("grade_8").innerHTML;
			if (grade == 8){
				
			}
		}
	</script>
</head>
	
<body style="background-color:#f5f5f5">
    <!-- Start your project here-->
    <div class = "container">
	<nav class = "navbar navbar-dark bg-primary">
	<button class="navbar-toggler hidden-sm-up" type="button" data-toggle="collapse" data-target="#collapseEx2">
        <img src="../../img/nav-mob.png" width="45%" height="45%"/>
    </button>
	<div class="collapse navbar-toggleable-xs" id="collapseEx2">
            <!--Navbar Brand-->
            
            <!--Links-->
            <ul class="nav navbar-nav">
                
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"id = "grade_10">Grade 8</a>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenu1">
                        <a class="dropdown-item" href="../g_10/subjects.jsp" id = "grade_10">Grade 10</a>
                        <a class="dropdown-item" href="../g_12/subjects.jsp" id = "grade_12">Grade 12</a>
                        
                    </div>
                </li>
                <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" type="button" id="dropdownMenu12" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../../img/user.png" width="15px" height="15px"/></a>
						<div class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<a class="dropdown-item" href="../../am/index.jsp" id="dropdownSubMenu"><span id = "sub_lang">logout</span></a>
						</div>
				</li>
				<li class="nav-item active">
                    <a class="nav-link" href="#"><%=username%><span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
					<a class="nav-link" href="settings.html"><img src="../../img/settings.png" width="15px" height="15px"/></a>
				</li>
				
            </ul>
            
        </div>
	
	</nav><br></br>
	<div class = "row">
		<div class = "col-sm-4">
		<div class="card">

		<!--Card image-->
		<div class="view overlay hm-white-slight">
			<img src="../../img/english2.png" class="img-fluid" alt="">
			<a href="2000_en.html">
				<div class="mask"></div>
			</a>
		</div>
		<!--/.Card image-->

		<!--Card content-->
		<div class="card-block">
			<!--Title-->
			<h4 class="card-title">English</h4>
			<!--Text-->
			<form method = "post" action="index.jsp">
			<div class="btn-group dropup">
				<button type="submit" class="btn btn-primary">2000</button>
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span class="sr-only">Toggle Dropdown</span>
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">2001</a>
					<a class="dropdown-item" href="#">2002</a>
					<a class="dropdown-item" href="#">2003</a>
					<a class="dropdown-item" href="#">2004</a>
					<a class="dropdown-item" href="#">2005</a>
					<a class="dropdown-item" href="#">2006</a>
					<a class="dropdown-item" href="#">2007</a>
					<a class="dropdown-item" href="#">2008</a>
				</div>
			</div>
			</form>
			
                    
		</div>
		<!--/.Card content-->

		</div>
		</div>
		<div class = "col-sm-4">
		<div class="card">

		<!--Card image-->
		<div class="view overlay hm-white-slight">
			<img src="../../img/math2.png" class="img-fluid" alt="">
			<a href="#">
				<div class="mask"></div>
			</a>
		</div>
		<!--/.Card image-->

		<!--Card content-->
		<div class="card-block">
			<!--Title-->
			<h4 class="card-title">Math</h4>
			<!--Text-->
			
			<div class="btn-group dropup">
				<button type="button" class="btn btn-primary">2000</button>
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span class="sr-only">Toggle Dropdown</span>
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">2001</a>
					<a class="dropdown-item" href="#">2002</a>
					<a class="dropdown-item" href="#">2003</a>
					<a class="dropdown-item" href="#">2004</a>
					<a class="dropdown-item" href="#">2005</a>
					<a class="dropdown-item" href="#">2006</a>
					<a class="dropdown-item" href="#">2007</a>
					<a class="dropdown-item" href="#">2008</a>
				</div>
			</div>
			
		</div>
		<!--/.Card content-->

		</div>
		</div>
		<div class = "col-sm-4">
		<div class="card">

		<!--Card image-->
		<div class="view overlay hm-white-slight">
			<img src="../../img/AP.png" class="img-fluid" alt="">
			<a href="#">
				<div class="mask"></div>
			</a>
		</div>
		<!--/.Card image-->

		<!--Card content-->
		<div class="card-block">
			<!--Title-->
			<h4 class="card-title">Aptitude</h4>
			<!--Text-->
			
			<div class="btn-group dropup">
				<button type="button" class="btn btn-primary">2000</button>
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span class="sr-only">Toggle Dropdown</span>
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">2001</a>
					<a class="dropdown-item" href="#">2002</a>
					<a class="dropdown-item" href="#">2003</a>
					<a class="dropdown-item" href="#">2004</a>
					<a class="dropdown-item" href="#">2005</a>
					<a class="dropdown-item" href="#">2006</a>
					<a class="dropdown-item" href="#">2007</a>
					<a class="dropdown-item" href="#">2008</a>
				</div>
			</div>
			
		</div>
		<!--/.Card content-->

		</div>
		</div>
	</div>
		<div class = "row">
			<div class = "col-sm-4">
			<div class="card">

			<!--Card image-->
			<div class="view overlay hm-white-slight">
				<img src="../../img/chemistry.png" class="img-fluid" alt="">
				<a href="#">
					<div class="mask"></div>
				</a>
			</div>
			<!--/.Card image-->

			<!--Card content-->
			<div class="card-block">
				<!--Title-->
				<h4 class="card-title">Chemistry</h4>
				<!--Text-->
				
				<div class="btn-group dropup">
				<button type="button" class="btn btn-primary">2000</button>
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span class="sr-only">Toggle Dropdown</span>
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">2001</a>
					<a class="dropdown-item" href="#">2002</a>
					<a class="dropdown-item" href="#">2003</a>
					<a class="dropdown-item" href="#">2004</a>
					<a class="dropdown-item" href="#">2005</a>
					<a class="dropdown-item" href="#">2006</a>
					<a class="dropdown-item" href="#">2007</a>
					<a class="dropdown-item" href="#">2008</a>
				</div>
				</div>
				
			</div>
			<!--/.Card content-->

			</div>
			</div>
			<div class = "col-sm-4">
			<div class="card">

			<!--Card image-->
			<div class="view overlay hm-white-slight">
				<img src="../../img/biology.png" class="img-fluid" alt="">
				<a href="#">
					<div class="mask"></div>
				</a>
			</div>
			<!--/.Card image-->

			<!--Card content-->
			<div class="card-block">
				<!--Title-->
				<h4 class="card-title">Biology</h4>
				<!--Text-->
				
				<div class="btn-group dropup">
				<button type="button" class="btn btn-primary">2000</button>
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span class="sr-only">Toggle Dropdown</span>
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">2001</a>
					<a class="dropdown-item" href="#">2002</a>
					<a class="dropdown-item" href="#">2003</a>
					<a class="dropdown-item" href="#">2004</a>
					<a class="dropdown-item" href="#">2005</a>
					<a class="dropdown-item" href="#">2006</a>
					<a class="dropdown-item" href="#">2007</a>
					<a class="dropdown-item" href="#">2008</a>
				</div>
			</div>
			
			</div>
			<!--/.Card content-->

			</div>
			</div>
			<div class = "col-sm-4">
			<div class="card">

			<!--Card image-->
			<div class="view overlay hm-white-slight">
				<img src="../../img/physics.png" class="img-fluid" alt="">
				<a href="#">
					<div class="mask"></div>
				</a>
			</div>
			<!--/.Card image-->

			<!--Card content-->
			<div class="card-block">
				<!--Title-->
				<h4 class="card-title">Physics</h4>
				<!--Text-->
				
				<div class="btn-group dropup">
				<button type="button" class="btn btn-primary">2000</button>
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span class="sr-only">Toggle Dropdown</span>
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">2001</a>
					<a class="dropdown-item" href="#">2002</a>
					<a class="dropdown-item" href="#">2003</a>
					<a class="dropdown-item" href="#">2004</a>
					<a class="dropdown-item" href="#">2005</a>
					<a class="dropdown-item" href="#">2006</a>
					<a class="dropdown-item" href="#">2007</a>
					<a class="dropdown-item" href="#">2008</a>
				</div>
			</div>
			</div>
			<!--/.Card content-->

			</div>
			</div>
		</div>
	</div>

    <!-- /Start your project here-->
    

    <!-- SCRIPTS -->

    <!-- JQuery -->
    <script type="text/javascript" src="../../js/jquery-2.2.3.min.js"></script>

    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="../../js/tether.min.js"></script>

    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="../../js/bootstrap.min.js"></script>

    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="../../js/mdb.min.js"></script>


</body>

</html>