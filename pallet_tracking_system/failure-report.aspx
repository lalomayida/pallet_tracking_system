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
							<a class="nav-link" href="failure-report.aspx">Reporte de Fallas</a>
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
				<div class="carousel-item active h-90" style="background-image: url('img/fixed/failure-report.jpg')">
					<!--- Start Carousel Caption -->
					<div class="carousel-caption justify-content-center text-center">
						<div class="os-animation" data-animation="bounceInUp" data-delay=".6s">
							<h1>Reporte de <br>
								Fallos</h1>
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
		<div class="col-md-12">
			<form>
				<div class="row ml-0 mr-0">
					<div class="form-group col-md-6">
						<label for="formGroupExampleInput">Numero de empleado</label>
						<input type="text" class="form-control" id="formGroupExampleInput"
							placeholder="Numero de empleado">
					</div>
					<div class="form-group col-md-6">
						<label for="exampleInputPassword1">Contraseña</label>
						<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Contraseña">
					</div>
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Numero de pallet</label>
					<input type="text" class="form-control" id="formGroupExampleInput" placeholder="Numero de pallet">
				</div>
				<div class="form-group">
					<label for="exampleFormControlSelect2">Seleccione los componentes dañados</label>
					<select multiple class="form-control" id="exampleFormControlSelect2">
						<option>Componente 1</option>
						<option>Componente 2</option>
						<option>Componente 3</option>
						<option>Componente 4</option>
						<option>Componente 5</option>
					</select>
				</div>
				<div class="form-group">
					<label for="exampleFormControlSelect1">Nivel de criticidad</label>
					<select class="form-control" id="exampleFormControlSelect1">
						<option>Bajo</option>
						<option>Medio</option>
						<option>Alto</option>
					</select>
				</div>

				<div class="form-group">
					<label for="exampleFormControlTextarea1">Comentarios</label>
					<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
				</div>
				<button type="submit" class="btn btn-danger">Enviar Reporte</button>
			</form>
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