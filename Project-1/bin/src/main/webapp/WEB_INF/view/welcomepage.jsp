<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Greetings</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<div role="navigation">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="/welcome">Welcome</a>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="/login">Login</a></li>
					<li class="nav-item"><a class="nav-link" href="/register">New-Registration</a></li>
					<li class="nav-item"><a class="nav-link" href="/show-users">All Users</a></li>
				</ul>
			</div>
		</nav>
	</div>

	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">

			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>Welcome to My SpringBoot Project</h1>
					<h3>- Made By Siddhant</h3>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_REGISTER'}">
			<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-user">
					<input type="hidden" name="id" value="${user.id }" />

					<div class="form-group">
						<label>User Name</label> <input type="text" class="form-control"
							name="username" placeholder="Enter Username..."
							value="${user.username }">
					</div>

					<div class="form-group">
						<label>First Name</label> <input type="text" class="form-control"
							name="firstname" placeholder="Enter Your First Name..."
							value="${user.firstname }" />
					</div>

					<div class="form-group">
						<label>Last Name</label> <input type="text" class="form-control"
							name="lastname" placeholder="Enter Your Last Name..."
							value="${user.lastname }" />
					</div>

					<div class="form-group">
						<label>Age</label> <input type="number" class="form-control"
							name="age" placeholder="Enter Your Age..." value="${user.age }" />
					</div>

					<div class="form-group">
						<label>Password</label> <input type="password"
							class="form-control" name="password"
							placeholder="Enter Valid Password" value="${user.password }" />
					</div>

					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${mode=='ALL_USERS'}">
			<div class="container text-center" id="tasksDiv">
				<h3>All Users</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>UserName</th>
								<th>First Name</th>
								<th>LastName</th>
								<th>Age</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users}">
								<tr>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.firstname}</td>
									<td>${user.lastname}</td>
									<td>${user.age}</td>
									<td><a href="/delete-user?id=${user.id }"><button
												type="button" class="btn btn-danger">Delete</button></a></td>
									<td><a href="/edit-user?id=${user.id }"><button
												type="button" class="btn btn-success">Edit</button></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Update User</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="edit-user">
					<input type="hidden" name="id" value="${user.id }" />

					<div class="form-group">
						<label>User Name</label> <input type="text" class="form-control"
							name="username" placeholder="Enter Username..."
							value="${user.username }">
					</div>

					<div class="form-group">
						<label>First Name</label> <input type="text" class="form-control"
							name="firstname" placeholder="Enter Your First Name..."
							value="${user.firstname }" />
					</div>

					<div class="form-group">
						<label>Last Name</label> <input type="text" class="form-control"
							name="lastname" placeholder="Enter Your Last Name..."
							value="${user.lastname }" />
					</div>

					<div class="form-group">
						<label>Age</label> <input type="number" class="form-control"
							name="age" placeholder="Enter Your Age..." value="${user.age }" />
					</div>

					<div class="form-group">
						<label>Password</label> <input type="password"
							class="form-control" name="password"
							placeholder="Enter Valid Password" value="${user.password }" />
					</div>

					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_LOGIN'}">
			<div class="container text-center">
				<h3>User Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-user">
					<div class="form-group">
						<label>User Name</label> <input type="text" class="form-control"
							name="username" placeholder="Enter Username..."
							value="${user.username }">
					</div>

					<div class="form-group">
						<label>Password</label> <input type="password" class="form-control"
							name="password" placeholder="Enter Valid Password"
							value="${user.password }" />
					</div>

					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
				</form>
			</div>
		</c:when>


	</c:choose>
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>