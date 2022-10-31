<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description"
	content="Sleek Dashboard - Free Bootstrap 4 Admin Dashboard Template and UI Kit. It is very powerful bootstrap admin dashboard, which allows you to build products like admin panels, content management systems and CRMs etc.">

<title>Sign In - PC-EXPERT</title>

<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500"
	rel="stylesheet" />
<link
	href="https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css"
	rel="stylesheet" />

<!-- SLEEK CSS -->
<link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />

<script src="assets/plugins/nprogress/nprogress.js"></script>
</head>

<body class="" id="body">
	<div
		class="container d-flex align-items-center justify-content-center vh-100">
		<div class="row justify-content-center">
			<div class="col-lg-6 col-md-10">
				<div class="card">
					<div class="card-header bg-primary">
						<div class="app-brand">
							<a href="/"> <svg class="brand-icon"
									xmlns="http://www.w3.org/2000/svg"
									preserveAspectRatio="xMidYMid" width="30" height="33"
									viewBox="0 0 30 33">
                    <g fill="none" fill-rule="evenodd">
                      <path class="logo-fill-blue" fill="#7DBCFF"
										d="M0 4v25l8 4V0zM22 4v25l8 4V0z" />
                      <path class="logo-fill-white" fill="#FFF"
										d="M11 4v25l8 4V0z" />
                    </g>
                  </svg> <span class="brand-name">PC-EXPERT</span>
							</a>
						</div>
					</div>

					<div class="card-body p-5">
						<h4 class="text-dark mb-5">Sign In</h4>

						<form action="login" method="post">
							<div class="row">
								<div class="form-group col-md-12 mb-4">
									<input type="text" class="form-control input-lg" id="email"
										name="username" placeholder="Username">
								</div>

								<div class="form-group col-md-12 ">
									<input type="password" class="form-control input-lg"
										id="password" name="password" placeholder="Password">
								</div>

								<div class="col-md-12">


									<button type="submit"
										class="btn btn-lg btn-primary btn-block mb-4">Sign In</button>
									<p style="color: red">${loginErrorMessage }</p>
									<p style="color: green">${registrationSuccessful }</p><br>
									<p>
										Don't have an account yet ? <a class="text-blue"
											href="registrationPage">Sign Up</a>
									</p>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- <script type="module">
      import 'https://cdn.jsdelivr.net/npm/@pwabuilder/pwaupdate';

      const el = document.createElement('pwa-update');
      document.body.appendChild(el);
    </script> -->

	<!-- Javascript -->
	<script src="assets/plugins/jquery/jquery.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/sleek.js"></script>
	<link href="assets/options/optionswitch.css" rel="stylesheet">
	<script src="assets/options/optionswitcher.js"></script>
</body>
</html>

