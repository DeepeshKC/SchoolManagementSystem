<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Add Routine</title>

<!-- Bootstrap core CSS-->
</head>



<style>
.error {
	color: #ff0000;
	font-style: italic;
}
</style>

<body id="page-top">

	<jsp:include page="header.jsp" />

	<div class="row">

		<div class="col-lg-12">
			<div class="panel panel-default">

				<div class="panel-heading">Update Routine</div>
				<hr />

				<div class="panel-body">
					<div class="row">

						<div class="col-lg-offset-3 col-lg-6">
				<form:form action="update-updateRoutine" method="POST"
								modelAttribute="routine">
								

                       
                         <form:hidden path="routineId" value="${routine.getRoutineId()}" />
                         <form:hidden path="day" value="${routine.getDay().getId()} " />
                         <form:hidden path="classes" value="${routine.getClasses().getClassId()}" />
                        
									
									<div class="form-group">
										<label>Select First Period</label>
										<form:select path="firstPeriod" items="${subjectList}"
											itemLabel="subjectName" itemValue="subjectName" value="${routine.getFirstPeriod()}" class="form-control" />
									</div>
									
									<div class="form-group">
										<label>Select Second Period</label>
										<form:select path="secondPeriod" items="${subjectList}"
											itemLabel="subjectName" itemValue="subjectName" value="${routine.getSecondPeriod()}" class="form-control" />
									</div>
									<div class="form-group">
										<label>Select Third Period</label>
										<form:select path="thirdPeriod" items="${subjectList}"
											itemLabel="subjectName" itemValue="subjectName" value="${routine.getThirdPeriod()}" class="form-control" />
									</div>
									<div class="form-group">
										<label>Select Fourth Period</label>
										<form:select path="fourthPeriod" items="${subjectList}"
											itemLabel="subjectName" itemValue="subjectName" value="${routine.getFourthPeriod()}" class="form-control" />
									</div>
									<div class="form-group">
										<label>Select Fifth Period</label>
										<form:select path="fifthPeriod" items="${subjectList}"
											itemLabel="subjectName" itemValue="subjectName" value="${routine.getFifthPeriod()}" class="form-control" />
									</div>
							


									
								

									<button class="btn btn-success" type="submit">Update
										Routine</button>
									<button class="btn btn-primary" type="reset">Reset</button>
							</form:form>



						</div>

					</div>

				</div>

			</div>
		</div>

	</div>






</body>

</html>