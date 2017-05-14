<!DOCTYPE html>
<html lang="en">

<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    
    <title>Material Design Bootstrap</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">

    <!-- Your custom styles (optional) -->
	
    <link href="css/style.css" rel="stylesheet">
	
	<%
		String year = request.getParameter("year");
		String subject = request.getParameter("subject");
		System.out.println(year);
		System.out.println(subject);
	%>
	

</head>
<!--file:///C:/Users/ADDISU/Pictures/Pictures/tourist app/Rock-hewn-churches-lalilbela.jpg-->
<body style = "background-color: #607d8b">
    <!-- Start your project here-->
    <div class = "container">
	<nav class = "navbar navbar-dark bg-primary">
	<div class="collapse navbar-toggleable-xs" id="collapseEx2">
            <!--Navbar Brand-->
            
            <!--Links-->
            <ul class="nav navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">English<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Grade 12</a>
                    
                </li>
            </ul>
            <!--Search form-->
            <form class="form-inline">
                <input class="form-control" type="text" placeholder="Search">
            </form>
			
        </div>
	
	</nav>
	<br></br>
<div class="jumbotron">
    <h1 class="h1-responsive">Question # <img src = "img/1.png"/> [Word order]</h1> 
    <p class="lead">Me they for them to everything do wanted make</p>
    <hr class="m-y-2">
		<form action="#">
		<p>
		  <input name="group1" type="radio" id="test1" />
		  <label for="test1">Make they me wanted everything to do for them</label>
		</p>
		<p>
		  <input name="group1" type="radio" id="test2" />
		  <label for="test2">They make me wanted everything to do for them</label>
		</p>
		<p>
		  <input name="group1" type="radio" id="test3" />
		  <label for="test3">They wanted to do me make everything for them</label>
		</p>
		<p>
		  <input name="group1" type="radio" id="test4" />
		  <label for="test4">They wanted me do to make everything for them</label>
		</p>
		</form>
		<p class="lead">
			<a class="btn btn-primary btn-lg" role="button" href="2000.html">Next</a>
		</p>
</div>

    <!-- /Start your project here-->
    

    <!-- SCRIPTS -->

    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>

    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/tether.min.js"></script>

    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>

</div>
</body>

</html>