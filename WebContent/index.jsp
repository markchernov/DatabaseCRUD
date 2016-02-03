<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>





<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<title>Info</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no" />
<title>Database CRUD</title>

<!-- CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="css/materialize.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
<link href="css/style.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
<link href="css/animate.css" type="text/css" rel="stylesheet" />


<!-- JS  -->
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="js/materialize.js"></script>
<script src="js/init.js"></script>



</head>


<body>


	<header>

		<nav>
			<div class="nav-wrapper deep-purple">
				<a href="#" class="brand-logo center">MySQL CRUD </a>
				<ul id="nav-mobile" class="left hide-on-med-and-down">
					<li><a href=index.jsp>Home</a></li>
					<li><a href="index.jsp">About</a></li>
					<li><a href="index.jsp">Help</a></li>
				</ul>
			</div>
		</nav>

	</header>




	<main class="main">

	<div class="row">
		<div class="col s12 m12">
			<div class="card grey darken-1">
				<div class="card-content white-text">
					<span class="card-title"> Statements</span>



					<div class="card-action">

						<form action="GetData.do" method="GET" class="myForm">

							<div class="row">
								<div class="input-field col s6">
									<input value="SELECT * FROM employees;" id="select" type="text"
										class="validate" name="select"> <label class="active"
										for="first_name2">Select Statement</label>
								</div>
							</div>



							<button class="btn waves-effect waves-light deep-purple"
								type="submit" >
								SELECT <i class="material-icons right">launch</i>
							</button>


						</form>

					</div>





					<div class="card-action">

						<form action="GetData.do" method="GET" class="myForm">

							<div class="row">
								<div class="input-field col s6">
									<input value="SELECT * FROM employees" id="select" type="text"
										class="validate" name="update"> <label class="active"
										for="first_name2">Update Statement</label>
								</div>
							</div>



							<button class="btn waves-effect waves-light deep-purple"
								type="submit" >
								UPDATE <i class="material-icons right">launch</i>
							</button>


						</form>

					</div>



					<div class="card-action">

						<form action="GetData.do" method="GET" class="myForm">

							<div class="row">
								<div class="input-field col s6">
									<input value="SELECT * FROM employees" id="select" type="text"
										class="validate" name="create"> <label class="active"
										for="first_name2">Create Statement</label>
								</div>
							</div>



							<button class="btn waves-effect waves-light deep-purple"
								type="submit" name="create">
								CREATE <i class="material-icons right">launch</i>
							</button>


						</form>


					</div>
					<div class="card-action">

						<form action="GetData.do" method="GET" class="myForm">

							<div class="row">
								<div class="input-field col s6">
									<input value="SELECT * FROM employees" id="select" type="text"
										class="validate" name="delete"> <label class="active"
										for="first_name2">Delete Statement</label>
								</div>
							</div>



							<button class="btn waves-effect waves-light deep-purple"
								type="submit" name="delete">
								DELETE <i class="material-icons right">launch</i>
							</button>


						</form>


					</div>
				</div>
			</div>

		</div>

	</div>












	<div class="row">
		<div class="col s12 m12">
			<div class="card blue-grey darken-1">
				<div class="card-content white-text">
					<span class="card-title">Results</span>





					<table>
						<thead>
							<tr>
								<th data-field="id">Emp ID</th>
								<th data-field="name">First Name</th>
								<th data-field="price">Middle Name</th>
								<th data-field="name">Last Name</th>
								<th data-field="price">Gender</th>
								<th data-field="name">Email</th>
								<th data-field="ext">Extension</th>
								<th data-field="hiredate">Hire Date</th>
								<th data-field="salary">Salary</th>
								<th data-field="comm">Commission %</th>
								<th data-field="dept">Department ID</th>
								<th data-field="job">Job ID</th>
								<th data-field="address">Address</th>
								<th data-field="city">City</th>
								<th data-field="state">State</th>
								<th data-field="name">First Name</th>
								<th data-field="zip">Zip Code</th>
								<th data-field="ver">Version</th>
							
							</tr>
						</thead>

						<tbody>
							<tr>
								<td>Alvin</td>
								<td>Eclair</td>
								<td>$0.87</td>
							</tr>
							<tr>
								<td>Alan</td>
								<td>Jellybean</td>
								<td>$3.76</td>
							</tr>
							<tr>
								<td>Jonathan</td>
								<td>Lollipop</td>
								<td>$7.00</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="card-action"></div>
			</div>
		</div>
	</div>




	</main>










	<footer class="page-footer deep-purple">
		<div class="container">
			<div class="row">
				<div class="col l6 s12">
					<h5 class="white-text">Database CRUD Application</h5>
					<p class="grey-text text-lighten-4">This is the application to
						Create, Read ,Update and Delete information with SQL commands.</p>
				</div>
				<div class="col l4 offset-l2 s12">
					<h5 class="white-text">Links</h5>
					<ul>
						<li><a class="grey-text text-lighten-3" href="index.jsp">
								Home</a></li>

					</ul>
				</div>
			</div>
		</div>
		<div class="footer-copyright">
			<div class="container">
				© 2016 Copyright Text <a class="grey-text text-lighten-4 right"
					href="index.jsp">MY CRUD APP</a>
			</div>
		</div>
	</footer>



</body>
</html>