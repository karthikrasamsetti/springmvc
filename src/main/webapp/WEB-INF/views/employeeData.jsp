<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<form:form method="POST">
<div class="container mt-5">
<span><h1 class="text-center mb-4">Employee List</h1> </span>
  <span>  <h1><a href="insert"><button type="button" class="btn btn-primary">Add Employee</button></a></h1></span>
    <table class="table table-striped">
        <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Phone</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="emp" items="${employees}">
            <!--  construct an "update" link with customer id -->
						 <c:url var="updateLink" value="/insertupdate">
							<c:param name="empId" value="${emp.id}" />
						</c:url> 
            <!-- construct an "delete" link with customer id -->
						<c:url var="deleteLink" value="/delete">
							<c:param name="empId" value="${emp.id}" />
						</c:url>
                <tr>
                    <td>${emp.getId() }</td>
                    <td>${emp.getName() }</td>
                    <td>${emp.getAge() }</td>
                    <td>${emp.getPhone() }</td>
                   <td> <a href="${updateLink}"><button type="button" class="btn btn-warning">Edit</button></a>
	        			<a href="${deleteLink}"onclick="if (!(confirm('Are you sure you want to delete this Employee?'))) return false"><button type="button" class="btn btn-danger">delete</button></a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
  </form:form>
<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script></script>
</body>
</html>