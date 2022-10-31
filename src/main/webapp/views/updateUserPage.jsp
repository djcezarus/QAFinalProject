<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description"
	content="Sleek Dashboard - Free Bootstrap 4 Admin Dashboard Template and UI Kit. It is very powerful bootstrap admin dashboard, which allows you to build products like admin panels, content management systems and CRMs etc.">

<title>User Update - PC EXPERT</title>

<!-- GOOGLE FONTS -->
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
								class="nav-text">Home</span>
						</a></li>
						<li class="has-sub "><a class="sidenav-item-link"
								href="masterUser" aria-controls="dashboard"> <i
									class="mdi mdi-contacts"></i> <span
									class="nav-text">USERS</span>
							</a></li>
						<li class="has-sub "><a class="sidenav-item-link" href="/productsPage"
							aria-controls="dashboard"> <i
								class="mdi mdi-cart"></i> <span
								class="nav-text">Page</span>
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
        âââ PAGE WRAPPER
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
          âââ CONTENT WRAPPER
          ===================================== -->
			<div class="content-wrapper">
				<div class="content">
					<div class="bg-white border rounded">
						<div class="row no-gutters">
							<div class="col-lg-8 col-xl-9">
								<div class="profile-content-right profile-right-spacing py-5">
									<div class="tab-content px-3 px-xl-5" id="myTabContent">
										<div class="tab-pane fade show active" id="settings"
											role="tabpanel" aria-labelledby="settings-tab">
											<div class="tab-pane-content mt-5">
												<form action="update" method="post">
													<div class="row">
													${userUpdated.getUpdated()}
												
														<div class="form-group col-md-12 mb-4">
															<input type="text" class="form-control input-lg"
																id="username" name="username" placeholder="Username" value="${userData.getUsername()}">
															<div class="invalid-feedback">Please, enter your
																Username!</div>
														</div>
														<div class="form-group col-md-12 mb-4">
															<input type="password" class="form-control input-lg"
																id="password" name="password" placeholder="Password" value="${userData.getPassword()}">
															<div class="invalid-feedback">Please, enter your
																Password!</div>
														</div>

														<div class="form-group col-md-12 mb-4">
															<input type="text" class="form-control input-lg"
																id="firstName" name="firstName" placeholder="First Name" value="${userData.getFirstName() }">
															<div class="invalid-feedback">Please, enter your
																First Name!</div>
														</div>

														<div class="form-group col-md-12 mb-4">
															<input type="text" class="form-control input-lg"
																id="lastName" name="lastName" placeholder="Last Name" value="${userData.getLastName()}">
															<div class="invalid-feedback">Please, enter your
																Last Name!</div>
														</div>
														<div class="form-group col-md-12 mb-4">
															<input type="email" class="form-control input-lg"
																id="email" name="email" placeholder="Email" value="${userData.getEmail()}">
															<div class="invalid-feedback">Please, enter your
																Email!</div>
														</div>

														<div class="col-md-12">
															<button type="submit"
																class="btn btn-lg btn-primary btn-block mb-4">Update
																</button>
															
														</div>
													</div>
												</form>
											</div>
										</div>
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