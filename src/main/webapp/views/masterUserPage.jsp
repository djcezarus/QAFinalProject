<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, com.cohart.to.User"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description"
	content="Sleek Dashboard - Free Bootstrap 4 Admin Dashboard Template and UI Kit. It is very powerful bootstrap admin dashboard, which allows you to build products like admin panels, content management systems and CRMs etc.">

<title>USERS - PC EXPERT</title>

<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500"
	rel="stylesheet" />
<link
	href="https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css"
	rel="stylesheet" />

<!-- PLUGINS CSS STYLE -->
<link href="assets/plugins/simplebar/simplebar.css" rel="stylesheet" />
<link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />

<link href='assets/plugins/data-tables/datatables.bootstrap4.min.css'
	rel='stylesheet'>
<link href='assets/plugins/data-tables/responsive.datatables.min.css'
	rel='stylesheet'>


<!-- SLEEK CSS -->
<link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />

<!-- FAVICON -->
<link href="assets/img/favicon.png" rel="shortcut icon" />
<!--
      HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries
    -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script src="assets/plugins/nprogress/nprogress.js"></script>
</head>

<body
<%List<User> users = (List<User>) request.getAttribute("allUsers");%>
 class="header-fixed sidebar-fixed sidebar-dark header-light"
	id="body">
	<script>
		NProgress.configure({
			showSpinner : false
		});
		NProgress.start();
	</script>

	<!-- ====================================
    ——— WRAPPER
    ===================================== -->
	<div class="wrapper">
		<!-- ====================================
          ——— LEFT SIDEBAR WITH OUT FOOTER
        ===================================== -->
		<aside class="left-sidebar bg-sidebar">
			<div id="sidebar" class="sidebar sidebar-with-footer">
				<!-- Aplication Brand -->
				<div class="app-brand">
					<a href="/" title="PC EXPERT"> <svg class="brand-icon"
							xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid"
							width="30" height="33" viewBox="0 0 30 33">
                  <g fill="none" fill-rule="evenodd">
                    <path class="logo-fill-blue" fill="#7DBCFF"
								d="M0 4v25l8 4V0zM22 4v25l8 4V0z" />
                    <path class="logo-fill-white" fill="#FFF"
								d="M11 4v25l8 4V0z" />
                  </g>
                </svg> <span class="brand-name text-truncate">PC-EXPERT&nbsp;</span>
					</a>
				</div>
				<!-- begin sidebar scrollbar -->
				<div class="" data-simplebar style="height: 100%;">
					<!-- sidebar menu -->
					<ul class="nav sidebar-inner" id="sidebar-menu">
						<li class="has-sub "><a class="sidenav-item-link" href="home"
							aria-controls="dashboard"> <i
								class="mdi mdi-home"></i> <span
								class="nav-text">HOME</span>
						</a></li>
						<li class="has-sub "><a class="sidenav-item-link"
							href="masterUser" aria-controls="dashboard"> <i
								class="mdi mdi-contacts"></i> <span class="nav-text">USERS</span>
						</a></li>
						<li class="has-sub "><a class="sidenav-item-link"
							href="/productsPage" aria-controls="dashboard"> <i
								class="mdi mdi-cart"></i> <span
								class="nav-text">PRODUCTS</span>
						</a></li>

						<li class="has-sub "><a class="sidenav-item-link" href="/"
							aria-controls="dashboard"> <i class="mdi mdi-logout"></i> <span
								class="nav-text">Log out</span>
						</a></li>
					</ul>
				</div>
			</div>
		</aside>

		<!-- ====================================
        ——— PAGE WRAPPER
        ===================================== -->
		<div class="page-wrapper">

			<!-- Header -->
			<header class="main-header " id="header">
				<nav class="navbar navbar-static-top navbar-expand-lg">
					<!-- Sidebar toggle button -->
					<button id="sidebar-toggler" class="sidebar-toggle">
						<span class="sr-only">Toggle navigation</span>
					</button>
				</nav>
			</header>
			<!-- ====================================
          ——— CONTENT WRAPPER
          ===================================== -->
			<div class="content-wrapper">
				<div class="content">
					<div class="breadcrumb-wrapper">
						<h1>Users</h1>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb p-0">
								<li class="breadcrumb-item"><a href="home"> <span
										class="mdi mdi-home"></span>
								</a></li>
								<li class="breadcrumb-item">Users in MySql Database</li>
								<li class="breadcrumb-item" aria-current="page"></li>
							</ol>
						</nav>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="card card-default">


								<div class="card-body">
									<div class="hoverable-data-table">
										<table id="hoverable-data-table"
											class="table table-hover nowrap" style="width: 100%">
											
											<%%>No of Entries :<%=users.size()%>
											<thead>
												<tr>
													<th>User name</th>
													<th>First name</th>
													<th>Last name</th>
													<th>Email</th>
													<th>Action</th>
													<th>Action</th>
												</tr>
											</thead>
											<%
											for (int i = 0; i < users.size(); i++) {
											%>
											<tr>
												<td><%=users.get(i).getUsername()%></td>
												<td><%=users.get(i).getFirstName()%></td>
												<td><%=users.get(i).getLastName()%></td>
												<td><%=users.get(i).getEmail()%></td>
												<td><a href="/delete/<%=users.get(i).getUsername()%>">delete</a></td>
												<td><a href="/updateUserPage/<%=users.get(i).getUsername()%>">update</a></td>
											</tr>
											<%}%>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End Content -->
			</div>
			<!-- End Content Wrapper -->
			<!-- Footer -->
			<footer class="footer mt-auto">
				<div class="copyright bg-white">
					<p>
						Copyright &copy; <span id="copy-year"></span> WebApp by <a
							class="text-primary" href="home" target="_blank">PC-EXPERT</a>.
					</p>
				</div>
				<script>
					var d = new Date();
					var year = d.getFullYear();
					document.getElementById("copy-year").innerHTML = year;
				</script>
			</footer>
		</div>
		<!-- End Page Wrapper -->
	</div>
	<!-- End Wrapper -->
	<!-- <script type="module">
      import 'https://cdn.jsdelivr.net/npm/@pwabuilder/pwaupdate';
      const el = document.createElement('pwa-update');
      document.body.appendChild(el);
    </script> -->
	<!-- Javascript -->
	<script src="assets/plugins/jquery/jquery.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/plugins/simplebar/simplebar.min.js"></script>
	<script src='assets/plugins/data-tables/jquery.datatables.min.js'></script>
	<script src='assets/plugins/data-tables/datatables.bootstrap4.min.js'></script>
	<script src="assets/js/sleek.js"></script>
	<link href="assets/options/optionswitch.css" rel="stylesheet">
	<script src="assets/options/optionswitcher.js"></script>
</body>
</html>
