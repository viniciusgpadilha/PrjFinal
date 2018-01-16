<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>ChipStore - Erro 404</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
	<script type="text/javascript" src="js/plax.js"></script>
	<style>
		::-moz-selection {
			background: #FFCF00;
			text-shadow: none;
		}
		::selection {
			background: #FFCF00;
			text-shadow: none;
		}

		body {
			font-size: 20px;
			font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
			line-height: 1.4;
			color: #FFFFFF;
			-webkit-text-size-adjust: 100%;
			-ms-text-size-adjust: 100%;
		}

		h1 {
			margin: 0 10px;
			font-size: 50px;
			text-align: center;
		}

		h1 span {
			color: #bbb;
		}

		h3 {
			margin: 1.5em 0 0.5em;
		}

		p {
			margin: 1em 0;
		}

		ul {
			padding: 0 0 0 40px;
			margin: 1em 0;
		}

		a {
			text-decoration: none;
			color: #D5E01C;
		}

		a:hover {
			color: #FF9929;
		}

		.shadow {
			color: white;
			text-shadow: 0 1px 0 #ccc,
			0 1px 0 #c9c9c9,
			0 2px 0 #bbb,
			0 20px 20px rgba(0,0,0,.15);
		}

		.small-shadow {
			color: white;
			text-shadow: 0 1px 0 #686868;
		}

		.options {
			text-align: center;
			font-size: 18px;
		}

		.message-container {
			width: 50%;
			margin: 20% auto;
			float: right;
			max-width: 380px;
		}

		.logo {
			width: 14%;
			vertical-align: middle;
		}

		.title {
			font-size: 64px;
		}

		#plax-container {
			z-index: 1;
			height: 1px;
		}

		#plax-airmozilla {
			position: absolute;
			margin: 120px 140px;
			z-index: 2;
			width: 40%;
			min-width: 350px;
			max-width: 425px;
		}

		#plax-dino {
			position: absolute;
			margin: 205px 235px;
			z-index: 3;
			width: 20%;
			min-width: 180px;
			max-width: 250px;
		}

		@media (min-width: 1100px) {
			.message-container {
				width: 50%;
				margin: 15% auto;
				max-width: 460px;
				padding-right: 40px;
			}
		}

		@media (max-width: 900px) {
			img#plax-airmozilla {
				position: absolute;
				margin: 135px 100px;
				z-index: 2;
				width: 160px;
				min-width: 1px;
				max-width: 160px;
			}
		}
		@media (max-width: 900px) {
			img#plax-dino {
				position: absolute;
				margin: 173px 140px;
				z-index: 3;
				width: 80px;
				min-width: 1px;
				max-width: 180px;
			}


		}

		@media (max-width: 550px) {
			.message-container {
				width: 100%;
			}
		}

		@media (max-width: 550px) {
			img#plax-dino, img#plax-airmozilla  {
				display: none;
			}
		}

		html {
			height: 100%;
			background-repeat:no-repeat;

			background: rgba(30,119,187,1);
			background: -moz-radial-gradient(center, ellipse cover, rgba(30,119,187,1) 0%, rgba(31,36,36,1) 100%);
			background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, rgba(30,119,187,1)), color-stop(100%, rgba(31,36,36,1)));
			background: -webkit-radial-gradient(center, ellipse cover, rgba(30,119,187,1) 0%, rgba(31,36,36,1) 100%);
			background: -o-radial-gradient(center, ellipse cover, rgba(30,119,187,1) 0%, rgba(31,36,36,1) 100%);
			background: -ms-radial-gradient(center, ellipse cover, rgba(30,119,187,1) 0%, rgba(31,36,36,1) 100%);
			background: radial-gradient(ellipse at center, rgba(30,119,187,1) 0%, rgba(31,36,36,1) 100%);
			filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#1e77bb', endColorstr='#1f2424', GradientType=1 );
		}
	</style>
	<script type="text/javascript">
		$(document).ready(function () {
			$('#plax-container img').plaxify()
			$.plax.enable()
		})
	</script>
</head>
<body>
	<div class="main-container">
		<div class="message-container">
			<h1 class="title shadow">Sorry... <span>:(</span></h1>
			<p class="small-shadow"><strong>Error</strong> 404</p>
			<p class="small-shadow options">
				<a href="main.jsp">P�gina Inicial</a>
			</p>
		</div>
		<div id="plax-container">
			<img src="img/logo-airmozilla.png" data-xrange="10" data-yrange="10" id="plax-airmozilla"/>
			<img src="img/dino.png" data-xrange="20" data-yrange="20" id="plax-dino"/>
		</div>
	</div>
</body>
</html>
