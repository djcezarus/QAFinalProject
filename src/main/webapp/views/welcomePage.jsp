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

<title>Home - PC EXPERT</title>

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

<body class="header-fixed sidebar-fixed sidebar-dark header-light"
	id="body">
	<script>
      NProgress.configure({ showSpinner: false });
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
									class="mdi mdi-contacts"></i> <span
									class="nav-text">USERS</span>

							</a></li>

						<li class="has-sub "><a class="sidenav-item-link" href="/productsPage"
							aria-controls="dashboard"> <i
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
					<div class="bg-white border rounded">
						<div class="row no-gutters">
							<div class="col-lg-4 col-xl-3">
								<div
									class="profile-content-left profile-left-spacing pt-5 pb-3 px-3 px-xl-5">
									<div class="card text-center widget-profile px-0 border-0">
										<div class="card-img mx-auto rounded-circle">
											<img src="assets/img/user/u6.jpg" alt="user image">
										</div>

										<div class="card-body">
											<h4 class="py-2 text-dark">${userData.getFirstName() }
												${userData.getLastName() }</h4>
											<p>${userData.getEmail()}</p>
										</div>
									</div>

									<hr class="w-100">
									<div class="contact-info pt-4 centre">
										<h5 class="text-dark mb-1">Contact Information</h5>
										<p class="text-dark font-weight-medium pt-4 mb-2">User
											Name</p>
										<p>${userData.getUsername() }</p>
										<p class="text-dark font-weight-medium pt-4 mb-2">First
											Name</p>
										<p>${userData.getFirstName() }</p>
										<p class="text-dark font-weight-medium pt-4 mb-2">Last
											Name</p>
										<p>${userData.getLastName()}</p>
										<p class="text-dark font-weight-medium pt-4 mb-2">Email</p>
										<p>${userData.getEmail()}</p>
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
							class="text-primary" href="" target="_blank">PC-EXPERT </a>.
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
	<script src='assets/plugins/daterangepicker/moment.min.js'></script>
	<script src='assets/plugins/daterangepicker/daterangepicker.js'></script>
	<script src='assets/js/date-range.js'></script>
	<script src="assets/js/sleek.js"></script>
	<link href="assets/options/optionswitch.css" rel="stylesheet">
	<script src="assets/options/optionswitcher.js"></script>
</body>
</html>
