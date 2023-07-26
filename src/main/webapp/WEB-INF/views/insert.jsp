<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>


	<form:form method="POST" action="showDetails" modelAttribute="employee">
		<div class="container mt-5">
			<span><h3>Welcome, Enter The Employee Details</h3></span>
			<table class="table table-striped">
				<tr>
					<td><form:hidden path="id" /></td>
				</tr>
				<tr>
					<td><form:label path="name">Name</form:label>
						<form:errors path="name" cssStyle="color:red;" /></td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td><form:label path="age">Age</form:label>
						<form:errors path="age" cssStyle="color:red;" /></td>
					<td><form:input path="age" /></td>
				</tr>
				<tr>
					<td><form:label path="phone">Phone</form:label>
						<form:errors path="phone" cssStyle="color:red;" /></td>
					<td><form:input path="phone" /></td>
				</tr>
				<tr>
					<!--  <td><input type="submit" value="Submit"/></td> -->
					<td>
						<button type="submit" class="btn btn-warning">Submit</button>
					</td>
				</tr>
			</table>
		</div>
	</form:form>
</body>
<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</html>