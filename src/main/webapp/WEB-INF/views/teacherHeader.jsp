<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>School Management System</title>

<!-- Bootstrap Core CSS -->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="/vendor/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link href="/vendor/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">School Management
					System</a>
			</div>

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li class="sidebar-search">
							<div class="input-group custom-search-form">
								<input type="text" class="form-control" placeholder="Search...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div> <!-- /input-group -->
						</li>
						<li><a href="#"><i class="fa fa-dashboard fa-fw"></i>
								Dashboard</a></li>

						<li><a href="teacherCalendars"><i
								class="fas fa-calendar-alt"></i> Calendar</a></li>


						<li><a href="teacher/viewClasses?id=${teacher} "><i
								class="fa fa-edit fa-fw"></i> View Class</a></li>



						<li><a href="teacher/viewAssignments"><i
								class="fa fa-edit fa-fw"></i> View Assignments</a></li>

						<li><a href="teacher/addQuestionPapers"><i
								class="fa fa-editfa-fw"> </i> Add Question Paper</a></li>

						<li><a href="teacher/viewQuestionPapers"><i
								class="fa fa-edit fa-fw"></i> View Question Paper</a></li>



                                 <li><a href="teacher/addTestPapers"><i
								class="fa fa-edit fa-fw"></i>Upload Test Paper</a></li>
					
                   <li><a href="teacher/viewTestPapers"><i class="fa fa-edit fa-fw"></i>View Paper</a></li>

						<li><a href="/login"><i class="fa fa-sign-out fa-fw"></i>
								Logout</a></li>
					</ul>


				</div>
			</div>
		</nav>
	</div>
</body>
</html>
