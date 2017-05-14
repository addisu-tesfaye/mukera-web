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
		
		Cookie[] cookies = request.getCookies();
		/* if (cookies != null) {
		for(int i=0; i<cookies.length; i++) {
		Cookie cookie = cookies[i];
		System.out.println(cookie.getName());
		} */
		HttpSession sessions = request.getSession();
    	String username = (String)sessions.getAttribute("username");
	
	%>
	<script>
		
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
                    <a class="nav-link dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"id = "grade_10">Grade 12</a>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenu1">
                        <a class="dropdown-item" href="../g_10/subjects.jsp" id = "grade_10">Grade 10</a> 
                        <a class="dropdown-item" href="../g_8/subjects.jsp" id = "grade_8">Grade 8</a>
                        
                    </div>
                </li>
                <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../../img/user.png" width="15px" height="15px"/></a>
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
					<a class="dropdown-item" href="question.jsp?year=2001&subject=English">2001</a>
					<a class="dropdown-item" href="question.jsp?year=2002&subject=English">2002</a>
					<a class="dropdown-item" href="question.jsp?year=2003&subject=English">2003</a>
					<a class="dropdown-item" href="question.jsp?year=2004&subject=English">2004</a>
					<a class="dropdown-item" href="question.jsp?year=2005&subject=English">2005</a>
					<a class="dropdown-item" href="question.jsp?year=2006&subject=English">2006</a>
					<a class="dropdown-item" href="question.jsp?year=2007&subject=English">2007</a>
					<a class="dropdown-item" href="question.jsp?year=2008&subject=English">2008</a>
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
					<a class="dropdown-item" href="question.jsp?year=2001&subject=Math">2001</a>
					<a class="dropdown-item" href="question.jsp?year=2002&subject=Math">2002</a>
					<a class="dropdown-item" href="question.jsp?year=2003&subject=Math">2003</a>
					<a class="dropdown-item" href="question.jsp?year=2004&subject=Math">2004</a>
					<a class="dropdown-item" href="question.jsp?year=2005&subject=Math">2005</a>
					<a class="dropdown-item" href="question.jsp?year=2006&subject=Math">2006</a>
					<a class="dropdown-item" href="question.jsp?year=2007&subject=Math">2007</a>
					<a class="dropdown-item" href="question.jsp?year=2008&subject=Math">2008</a>
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
					<a class="dropdown-item" href="question.jsp?year=2001&subject=Aptitude">2001</a>
					<a class="dropdown-item" href="question.jsp?year=2002&subject=Aptitude">2002</a>
					<a class="dropdown-item" href="question.jsp?year=2003&subject=Aptitude">2003</a>
					<a class="dropdown-item" href="question.jsp?year=2004&subject=Aptitude">2004</a>
					<a class="dropdown-item" href="question.jsp?year=2005&subject=Aptitude">2005</a>
					<a class="dropdown-item" href="question.jsp?year=2006&subject=Aptitude">2006</a>
					<a class="dropdown-item" href="question.jsp?year=2007&subject=Aptitude">2007</a>
					<a class="dropdown-item" href="question.jsp?year=2008&subject=Aptitude">2008</a>
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
					<a class="dropdown-item" href="question.jsp?year=2001&subject=Chemistry">2001</a>
					<a class="dropdown-item" href="question.jsp?year=2002&subject=Chemistry">2002</a>
					<a class="dropdown-item" href="question.jsp?year=2003&subject=Chemistry">2003</a>
					<a class="dropdown-item" href="question.jsp?year=2004&subject=Chemistry">2004</a>
					<a class="dropdown-item" href="question.jsp?year=2005&subject=Chemistry">2005</a>
					<a class="dropdown-item" href="question.jsp?year=2006&subject=Chemistry">2006</a>
					<a class="dropdown-item" href="question.jsp?year=2007&subject=Chemistry">2007</a>
					<a class="dropdown-item" href="question.jsp?year=2008&subject=Chemistry">2008</a>
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
					<a class="dropdown-item" href="question.jsp?year=2001&subject=Biology">2001</a>
					<a class="dropdown-item" href="question.jsp?year=2002&subject=Biology">2002</a>
					<a class="dropdown-item" href="question.jsp?year=2003&subject=Biology">2003</a>
					<a class="dropdown-item" href="question.jsp?year=2004&subject=Biology">2004</a>
					<a class="dropdown-item" href="question.jsp?year=2005&subject=Biology">2005</a>
					<a class="dropdown-item" href="question.jsp?year=2006&subject=Biology">2006</a>
					<a class="dropdown-item" href="question.jsp?year=2007&subject=Biology">2007</a>
					<a class="dropdown-item" href="question.jsp?year=2008&subject=Biology">2008</a>
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
					<a class="dropdown-item" href="question.jsp?year=2001&subject=Physics">2001</a>
					<a class="dropdown-item" href="question.jsp?year=2002&subject=Physics">2002</a>
					<a class="dropdown-item" href="question.jsp?year=2003&subject=Physics">2003</a>
					<a class="dropdown-item" href="question.jsp?year=2004&subject=Physics">2004</a>
					<a class="dropdown-item" href="question.jsp?year=2005&subject=Physics">2005</a>
					<a class="dropdown-item" href="question.jsp?year=2006&subject=Physics">2006</a>
					<a class="dropdown-item" href="question.jsp?year=2007&subject=Physics">2007</a>
					<a class="dropdown-item" href="question.jsp?year=2008&subject=Physics">2008</a>
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
    
    <script type="text/javascript">
    	function call(){
    		
    	}
    </script>


</body>

</html>