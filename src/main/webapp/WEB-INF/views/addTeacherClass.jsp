<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher Details</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Add Teacher to Class</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Teacher Details</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<table width="100%"
							class="table table-striped table-bordered table-hover"
							id="dataTables-example">
							<thead>
							<thead>
								<tr>
									<th>Teacher ID</th>
									<th>Class ID</th>
									<th>First Name</th>
									<th>Last Name</th>
									<th>Username</th>
									<th>Email Address</th>
									<th>Address</th>
									<th>Contact Number</th>
									<th>Add Teacher to Class</th>
									<th>Action</th>
								</tr>

								<c:forEach var="teacher" items="${teachersList}">
									<tr class="odd gradeX">
										<td>${teacher.getTeacherId()}</td>
										<td>${teacher.getClasses().getClassId()}</td>
										<td>${teacher.getFirstName()}</td>
										<td>${teacher.getLastName()}</td>
										<td>${teacher.getUsername()}</td>
										<td>${teacher.getEmail()}</td>
										<td>${teacher.getAddress()}</td>
										<td>${teacher.getContactNo()}</td>
										<td>${teacher.getUserType().getUserType()}</td>
										<td><a
											href="addTeacherClass?id=${teacher.getTeacherId()}&class_id=${classes.getClassId()}"
											class="btn btn-primary">Add Teacher</a></td>

									</tr>
								</c:forEach>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>