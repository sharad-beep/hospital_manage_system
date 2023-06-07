<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>tecno-tab | home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">

      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   
<style>

</style>

</head>
<body>
	<div role="navigation">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="/welcome">Welcome</a>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="/login">Login</a></li>
					<li class="nav-item"><a class="nav-link" href="/login">Log
							Out</a></li>
				</ul>
			</div>
		</nav>
	</div>

	<div class="container" id="homediv">
		<div class=" text-center">
			<h1>Welcome ${user.username }</h1>
		</div>
	</div>
	<br>
	<hr>
<div class="card-group">
    <div class="card m-3" style="width: 18rem;">
        <img class="card-img-top" src="static/images/health.jpg" alt="Hospital Image 1">
        <div class="card-body">
            <h5 class="card-title">Hospital Management System 1</h5>
            <p class="card-text">This is a powerful software solution for managing hospital operations efficiently.</p>
            <a href="#" class="btn btn-primary">Learn More</a>
        </div>
    </div>
    <div class="card m-3" style="width: 18rem;">
        <img class="card-img-top" src="static/images/back3.jpg" alt="Hospital Image 2">
        <div class="card-body">
            <h5 class="card-title">Hospital Management System 2</h5>
            <p class="card-text">This is a powerful software solution for managing hospital operations efficiently.</p>
            <a href="#" class="btn btn-primary">Learn More</a>
        </div>
    </div>
    <div class="card m-3" style="width: 18rem;">
        <img class="card-img-top" src="static/images/health.jpg" alt="Hospital Image 3">
        <div class="card-body">
            <h5 class="card-title">Hospital Management System 3</h5>
            <p class="card-text">This is a powerful software solution for managing hospital operations efficiently.</p>
            <a href="#" class="btn btn-primary">Learn More</a>
        </div>
    </div>
    <div class="card m-3" style="width: 18rem;">
        <img class="card-img-top" src="static/images/back3.jpg" alt="Hospital Image 4">
        <div class="card-body">
            <h5 class="card-title">Hospital Management System 4</h5>
            <p class="card-text">This is a powerful software solution for managing hospital operations efficiently.</p>
            <a href="#" class="btn btn-primary">Learn More</a>
        </div>
    </div>
</div>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>