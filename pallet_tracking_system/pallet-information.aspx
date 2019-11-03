<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="img/logos/icon-logo.ico">
	<title>Pallet Tracking System</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/main_styles.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/owl.theme.default.css">
	<link rel="stylesheet" href="css/arrow.css">
	<link rel="stylesheet" href="css/fixed.css">
	<link rel="stylesheet" href="css/waypoints.css">
</head>

<body>
	<!--- Start Home section -->
	<div id="home">
		<!--- Navigation -->
		<nav class="navbar solid navbar-expand-xl fixed-top">
			<div class="container-fluid">
				<a class="navbar-brand" href="#home"><img src="img/logos/red-logo.png" alt=""></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
					<span class="custom-toggler-icon"><i class="fas fa-bars"></i></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item text-center">
							<a class="nav-link" href="index.aspx">Inicio</a>
						</li>
						<li class="nav-item text-center">
							<a class="nav-link" href="pallet-information.aspx">Información del Pallet</a>
						</li>
						<li class="nav-item text-center">
							<a class="nav-link" href="index.aspx">Reporte de Fallas</a>
						</li>
						<li class="nav-item text-center">
							<a class="nav-link" href="index.aspx">Mantenimiento Preventivo</a>
						</li>
						<li class="nav-item text-center">
							<a class="nav-link" href="index.aspx">Reportes y KPI's</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!--- End Navigation -->
		<!--- Start Image and Caption -->
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
			<!--- Start Carousel Inner -->
			<div class="carousel-inner" role="listbox">
				<!-- Slide One -->
				<div class="carousel-item active h-90"
					style="background-image: url('img/fixed/brose-production-line.jpg')">
					<!--- Start Carousel Caption -->
					<div class="carousel-caption justify-content-center text-center">
						<div class="os-animation" data-animation="bounceInUp" data-delay=".6s">
							<h1>Pallet<br>
								information</h1>
						</div>
						<div></div>
					</div>
					<!--- End Carousel Caption -->
				</div>
			</div>
		</div>

		<!--- End Image and Caption -->
	</div>
	<!--- End Home Section -->

	<div class="container base-pane">
		<div class="col-md-5 search-box">
			<!-- Search form -->
			<form class="form-inline md-form form-sm active-cyan-2 mt-2">
				<input class="form-control form-control-sm mr-3 w-75" type="text"
					placeholder="Ingrese un número de pallet" aria-label="Search">
				<i class="fas fa-search" aria-hidden="true"></i>
			</form>
		</div>
		<div class="row">
			<div class="col-md-6 img-pallet">
				<img src="img/pallets/pallet-bosch.jpg" alt="">
			</div>
			<div class="col-md-6 information-listing">
				<p>Pallet P09S452</p>
				<ul>
					<li><span> Numero de serie </span>: P09S452</li>
					<li><span> Linea de Ensamblaje </span>: Stator</li>
					<li><span> Edad </span>: 2 Yrs</li>
					<li><span> Ultimo mantenimiento </span>: November 27, 2019</li>
					<li><span> Proximo Mantenimiento </span>: November 27, 2019</li>
				</ul>
			</div>
		</div>

	</div>

	<!--- Script Source Files -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.8.1/js/all.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/waypoints.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/jquery.counterup.js"></script>
	<script src="js/validator.js"></script>
	<script src="js/contact.js"></script>
</body>

</html>