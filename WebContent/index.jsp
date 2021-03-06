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
								<div class="input-field col s12">
									<input value="SELECT * FROM employees;" id="select" type="text"
										class="validate" name="input"> <label class="active"
										for="first_name2">Please type your SELECT SQL
										statement:</label>
								</div>
							</div>



							<button class="btn waves-effect waves-light deep-purple"
								type="submit">
								SELECT <i class="material-icons right">launch</i>
							</button>


						</form>

					</div>





					<div class="card-action">

						<form action="UpdateData.do" method="GET" class="myForm">

							<div class="row">
								<div class="input-field col s12">
									<input
										value="INSERT INTO employees(firstname, middlename,lastname, gender, email, department_id, job_id)
VALUES ('John', 'B' , 'Good','M', 'bgood@gmail.com', 4, 5);"
										id="select" type="text" class="validate" name="update">
									<label class="active" for="first_name2">Please type
										your INSERT/UPDATE/DELETE SQL statement:</label>
								</div>
							</div>



							<button class="btn waves-effect waves-light deep-purple"
								type="submit">
								UPDATE <i class="material-icons right">launch</i>
							</button>


						</form>

					</div>



					<div class="card-action">

						<form action="GetDataLastName.do" method="GET" class="myForm">

							<div class="row">

								<div class="input-field col s12">
									<input value="Acosta" id="select" type="text" class="validate"
										name="input"> <label class="active" for="first_name2">Please
										type Employee Last Name:</label>
								</div>
							</div>



							<button class="btn waves-effect waves-light deep-purple"
								type="submit">
								FIND ALL <i class="material-icons right">launch</i>
							</button>


						</form>


					</div>
					
					
					<div class="card-action">

						<form action="GetEmployeeObject.do" method="GET" class="myForm">

							<div class="row">

								<div class="input-field col s12">
									<input value="1005" id="select" type="text" class="validate"
										name="input"> <label class="active" for="first_name2">Please
										type Employee ID:</label>
								</div>
							</div>



							<button class="btn waves-effect waves-light deep-purple"
								type="submit">
								FIND BY ID <i class="material-icons right">launch</i>
							</button>


						</form>


					</div>
					
					
					
					
					
					
					
					
				</div>
			</div>
		</div>

	</div>








	<div class="row">
		<form class="col s12" action="CreateObject.do" method="Get">


			<div class="card grey darken-1">
				<div class="card-content white-text">
					<span class="card-title"> Create Employee</span>
					<div class="card-content white-text">




						<div class="row">
							<div class="input-field col s3">
								<input value="Bob" id="firstname" type="text"
									class="validate" name="firstname"> <label
									for="first_name">First Name</label>
							</div>

							<div class="input-field col s3">
								<input value="S" id="middlename" type="text"
									class="validate" name="middlename"> <label
									for="middlename">Middle Name</label>
							</div>

							<div class="input-field col s3">
								<input value="Smith" id="lastname" type="text"
									class="validate" name="lastname"> <label for="lastname">Last
									Name</label>
							</div>


							<div class="input-field col s3">
								<input value="M" id="gender" type="text" class="validate"
									name="gender"> <label for="gender">Gender</label>
							</div>
						</div>


						<div class="row">
							<div class="input-field col s3">
								<input value="email@email.com" id="email" type="text"
									class="validate" name="email"> <label for="email">Email
								</label>
							</div>

							<div class="input-field col s3">
								<input value="1111" id="extension" type="text"
									class="validate" name="extension"> <label
									for="extension">Extension</label>
							</div>

							<div class="input-field col s3">
								<input value="2016-01-01" id="hiredate" type="text"
									class="validate" name="hiredate"> <label for="hiredate">Hire
									Date</label>
							</div>


							<div class="input-field col s3">
								<input value="50000" id="salary" type="text"
									class="validate" name="salary"> <label for="salary">Salary</label>
							</div>
						</div>

						<div class="row">
							<div class="input-field col s3">
								<input value="10" id="commission_pct" type="text"
									class="validate" name="commission_pct"> <label
									for="commission_pct">Commission % </label>
							</div>

							<div class="input-field col s3">
								<input value="4" id="department_id" type="text"
									class="validate" name="department_id"> <label
									for="department_id">Department ID</label>
							</div>

							<div class="input-field col s3">
								<input value="5" id="job_id" type="text" class="5"
									name="job_id"> <label for="job_id">Job ID </label>
							</div>


							<div class="input-field col s3">
								<input value="10 Broadway" id="address" type="text"
									class="validate" name="address"> <label for="address">Address</label>
							</div>
						</div>

						<div class="row">
							<div class="input-field col s3">
								<input value="New York" id="city" type="text"
									class="validate" name="city"> <label for="city">City
								</label>
							</div>

							<div class="input-field col s3">
								<input value="NY" id="state" type="text" class="validate"
									name="state"> <label for="state">State </label>
							</div>

							<div class="input-field col s3">
								<input value="10001" id="zipcode" type="text"
									class="validate" name="zipcode"> <label for="zipcode">Zip
									Code </label>
							</div>


							<div class="input-field col s3">
								<input value="1" id="version" type="text" class="validate"
									name="version"> <label for="version">Version</label>
							</div>
						</div>





					</div>



					<button class="btn waves-effect waves-light deep-purple"
						type="submit">
						CREATE <i class="material-icons right">launch</i>
					</button>


				</div>
			</div>

		</form>

	</div>












	<!--  ---------------------Display--------------------------- -->







	<div class="row">
		<div class="col s12 m12">
			<div class="card blue-grey darken-1">
				<div class="card-content white-text">
					<span class="card-title">Results  ${updateResult}     </span>


					<table>

						<c:forEach var="tempList" items="${selectResult}" varStatus="loop">

							<c:choose>
								<c:when test="${loop.index == 0}">

									<thead>
										<tr>
											<c:forEach var="string" items="${tempList}">
												<th data-field="id">${string}</th>

											</c:forEach>
										</tr>
									</thead>

								</c:when>

								<c:otherwise>


									<tbody>


										<tr>
											<c:forEach var="string" items="${tempList}">
												<td>${string}</td>

											</c:forEach>
										</tr>


									</tbody>
								</c:otherwise>


							</c:choose>
						</c:forEach>


					</table>

					<div class="card-action"></div>
				</div>
			</div>
		</div>
	</div>

















	</main>





























	<%--


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


					</div> --%>


	<%-- <div class="card-action">


							<form action="UpdateData.do" method="GET" class="myForm">

								<div class="row">
									<div class="input-field col s3">

										<p>Select FROM Employees:</p>


										<p>
											<input type="checkbox" id="test5" checked="checked" /> <label
												for="test5">ID</label>
										</p>
										<p>
											<input type="checkbox" id="test6" checked="checked" /> <label
												for="test6">First Name</label>
										</p>
										<p>
											<input type="checkbox" id="test7" checked="checked" /> <label
												for="filled-in-box">Last Name</label>
										</p>
										<p>
											<input type="checkbox" id="test8" /> <label
												for="test7">Salary</label>
										</p>
										<p>
											<input type="checkbox" id="test9" /> <label for="test8">Department</label>
										</p>

										<p>
											<input type="checkbox" id="test10" /> <label for="test8">Job</label>
										</p>

										<p>
											<input type="checkbox" id="test11" /> <label for="test8">Project</label>
										</p>


									</div>




								</div>


								<button class="btn waves-effect waves-light deep-purple"
									type="submit">
									SELECT <i class="material-icons right">launch</i>
								</button>

							</form>

						</div> --%>










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