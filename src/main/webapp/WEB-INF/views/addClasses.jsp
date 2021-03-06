<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Class</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">Class</div>

				<div class="panel-body">
					<div class="row">
						<div class="col-lg-offset-3 col-lg-6">
						 <form:form name="qryform" method="POST" action="add-add-class" modelAttribute="classes">

								<div class="form-group">
									<label>Please add new Class</label>
									 <form:input path="className" class="form-control" placeholder="Enter Class Name"/>
								</div>

								<button type="submit" class="btn btn-default">Submit</button>
								<button type="reset" class="btn btn-default">Reset</button>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>