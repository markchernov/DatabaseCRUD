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
				</div>
			</div>
		</div>

	</div>








	<div class="row">
		<form class="col s12" action="CreateObject.do" method="POST">


			<div class="card grey darken-1">
				<div class="card-content white-text">
					<span class="card-title"> Create Employee</span>
					<div class="card-content white-text">




						<div class="row">
							<div class="input-field col s3">
								<input placeholder="John" id="first_name" type="text"
									class="validate" name="firstname"> <label
									for="first_name">First Name</label>
							</div>

							<div class="input-field col s3">
								<input placeholder="Jay" id="m_name" type="text"
									class="validate" name="middlename"> <label
									for="last_name">Middle Name</label>
							</div>

							<div class="input-field col s3">
								<input placeholder="Smith" id="l_name" type="text"
									class="validate" name="lastname"> <label for="disabled">Last
									Name</label>
							</div>


							<div class="input-field col s3">
								<input placeholder="M" id="password" type="text"
									class="validate" name="gender"> <label for="password">Gender</label>
							</div>
						</div>


						<div class="row">
							<div class="input-field col s3">
								<input placeholder="email@email.cm" id="first_name" type="text"
									class="validate" name="email"> <label for="first_name">Email
								</label>
							</div>

							<div class="input-field col s3">
								<input placeholder="1111" id="last_name" type="text"
									class="validate" name="extension"> <label
									for="last_name">Extension</label>
							</div>

							<div class="input-field col s3">
								<input placeholder="2016-01-01" id="first_name" type="text"
									class="validate" name="hiredate"> <label for="disabled">Hire
									Date</label>
							</div>


							<div class="input-field col s3">
								<input placeholder="50000" id="password" type="text"
									class="validate" name="salary"> <label for="password">Salary</label>
							</div>
						</div>

						<div class="row">
							<div class="input-field col s3">
								<input placeholder="10" id="first_name" type="text"
									class="validate" name="commission_pct"> <label
									for="first_name">Commission % </label>
							</div>

							<div class="input-field col s3">
								<input placeholder="4" id="last_name" type="text"
									class="validate" name="department_id"> <label
									for="last_name">Department ID</label>
							</div>

							<div class="input-field col s3">
								<input placeholder="Placeholder" id="first_name" type="text"
									class="5" name="job_id"> <label for="disabled">Job
									ID Date</label>
							</div>


							<div class="input-field col s3">
								<input placeholder="10 Broadway" id="password" type="text"
									class="validate" name="address"> <label for="password">Address</label>
							</div>
						</div>

						<div class="row">
							<div class="input-field col s3">
								<input placeholder="New York" id="first_name" type="text"
									class="validate" name="cityy"> <label for="first_name">City
								</label>
							</div>

							<div class="input-field col s3">
								<input placeholder="NY" id="last_name" type="text"
									class="validate" name="state"> <label for="last_name">State
								</label>
							</div>

							<div class="input-field col s3">
								<input placeholder="10001" id="first_name" type="text"
									class="validate" name="zipcode"> <label for="disabled">Zip
									Code </label>
							</div>


							<div class="input-field col s3">
								<input placeholder="1" id="password" type="text"
									class="validate" name="version"> <label for="password">Version</label>
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
					<span class="card-title">Results</span>


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