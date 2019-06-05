<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Esporte & Movimento</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Barlow+Semi+Condensed:100,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel="icon" type="image/png" sizes="32x32"
	href="images/favicon-32x32.png">
<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand py-2 px-4" href="index.html"
				style="font-size: 20px; margin: 0;">Esporte & Movimento</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="program.html" class="nav-link">Modalidades</a></li>
					<li class="nav-item"><a href="planos.html" class="nav-link">Planos</a></li>
					<li class="nav-item"><a href="schedule.html" class="nav-link">Hor�rios</a></li>
					<li class="nav-item active"><a href="contact.html"
						class="nav-link">Contato</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

	<section class="hero-wrap js-fullheight"
		style="background-image: url('images/bg_2.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-3 bread">Entre em Contato</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home</a></span> <span>Contato</span>
					</p>

					<%
						String messageSucess = (String) session.getAttribute("messageSucess");
						String messageFailed = (String) session.getAttribute("messageFailed");
					%>
					<%
						if (messageSucess != null) {
					%>
					<div class="alert alert-success" role="alert">
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Fechar">
							<span aria-hidden="true">&times;</span>
						</button>
						<strong>Alerta</strong>
						<%
							out.print(messageSucess);
						%>
					</div>
					<%
						}

						if (messageFailed != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Fechar">
							<span aria-hidden="true">&times;</span>
						</button>
						<strong>Alerta</strong>
						<%
							out.print(messageFailed);
						%>
					</div>
					<%
						}
					%>

					<%
						session.removeAttribute("messageSucess");
						session.removeAttribute("messageFailed");
					%>
				</div>
			</div>

		</div>
	</section>

	<section class="ftco-section contact-section">
		<div class="container">
			<div class="row block-9">
				<div class="col-md-4 contact-info ftco-animate bg-light p-4">
					<div class="row">
						<div class="col-md-12 mb-4">
							<h2 class="h4">Informa��es de Contato</h2>
						</div>
						<div class="col-md-12 mb-3">
							<p>
								<span>Endere�o:</span> R. Marajo, 129 - Jardim Santa Julia,
								Itapecerica da Serra - SP
							</p>
						</div>
						<div class="col-md-12 mb-3">
							<p>
								<span>Telefone:</span> 11 4669 5781
							</p>
						</div>
						<div class="col-md-12 mb-3">
							<p>
								<span>Email:</span> <a href="mailto:info@yoursite.com">academiaesportemovimento@gmail.com</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-6 ftco-animate">
					<form action="EmailServlet" class="contact-form" method="POST">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Seu Nome"
										name="nome">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="email" class="form-control"
										placeholder="Seu Email" name="email">
								</div>
							</div>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Assunto"
								name="assunto">
						</div>
						<div class="form-group">
							<textarea name="mensagem" id="texto" cols="30" rows="7"
								class="form-control" placeholder="Mensagem"></textarea>
						</div>
						<div class="form-group">
							<input type="submit" value="Enviar Mensagem"
								class="btn btn-primary py-3 px-5">
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<div>
		<iframe style="width: 100%;"
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1825.851041922382!2d-46.80831734215896!3d-23.7580008961464!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce4d21b5c73ef1%3A0xc8d98cbfd82140c2!2sR.+Maraj%C3%B3%2C+119+-+Jardim+Santa+Julia%2C+Itapecerica+da+Serra+-+SP%2C+06867-440!5e0!3m2!1spt-BR!2sbr!4v1557709600498!5m2!1spt-BR!2sbr"
			width="600" height="450" frameborder="0" style="border: 0"
			allowfullscreen></iframe>
	</div>


	<footer class="ftco-footer ftco-section img">
		<div class="overlay"></div>
		<div class="container">
			<div class="row mb-5">
				<div class="col-lg-3 col-md-6 mb-5 mb-md-5">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Sobre N�s</h2>
						<p>Somos uma equipe de Profissionais comprometidos e focados
							em resultados.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-5 mb-md-5">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Conhe�a nossos planos</h2>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(images/plano-footer.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="planos.html">Planos</a>
								</h3>
							</div>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(images/relogio.jpeg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="schedule.html">Hor�rios</a>
								</h3>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 mb-5 mb-md-5">
					<div class="ftco-footer-widget mb-4 ml-md-4">
						<h2 class="ftco-heading-2">Modalidades</h2>
						<ul class="list-unstyled">
							<li><a href="program.html" class="py-2 d-block">Muscula��o</a></li>
							<li><a href="program.html" class="py-2 d-block">Aer�bica</a></li>
							<li><a href="program.html" class="py-2 d-block">Boxe</a></li>
							<li><a href="program.html" class="py-2 d-block">Ritmos</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 mb-5 mb-md-5">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Possui Duvidas?</h2>
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon icon-map-marker"></span><span
									class="text">Rua Marajo 129, Jardim Santa Julia,
										Itapecerica da Serra - SP</span></li>
								<li><span class="icon icon-phone"></span><span class="text">11
										4669 5781</span></li>
								<li><span class="text"><a
										href="mailto:info@yoursite.com">academiaesportemovimento@gmail.com</a></span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | Academia Esporte & Movimento
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>