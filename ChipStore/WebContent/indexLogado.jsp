<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChipStore - Logado</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
    <link rel="stylesheet" type="text/css" href="css/produto.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Aldrich" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="shortcut icon" href="./img/favicon.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/login.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAPRex3VjMaJFspx-9LaeW2mkRhc5qZpTM&callback=myMap"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $window = $(window);

            $('section[data-type="background"]').each(function() {
                var $scroll = $(this);

                $(window).scroll(function() {
                    var yPos = -($window.scrollTop() / $scroll.data('speed'));
                    var coords = '50% ' + yPos + 'px';
                    $scroll.css({
                        backgroundPosition: coords
                    });
                });
            });
        });

        function init_map() {
            var var_location = new google.maps.LatLng(-22.947115, -43.185613);

            var var_mapoptions = {
                center: var_location,
                zoom: 15,
                styles: [{
                        "elementType": "geometry",
                        "stylers": [{
                            "color": "#f5f5f5"
                        }]
                    },
                    {
                        "elementType": "labels.icon",
                        "stylers": [{
                            "visibility": "off"
                        }]
                    },
                    {
                        "elementType": "labels.text.fill",
                        "stylers": [{
                            "color": "#616161"
                        }]
                    },
                    {
                        "elementType": "labels.text.stroke",
                        "stylers": [{
                            "color": "#f5f5f5"
                        }]
                    },
                    {
                        "featureType": "administrative.land_parcel",
                        "elementType": "labels.text.fill",
                        "stylers": [{
                            "color": "#bdbdbd"
                        }]
                    },
                    {
                        "featureType": "landscape",
                        "elementType": "geometry",
                        "stylers": [{
                            "color": "#d1d1d1"
                        }]
                    },
                    {
                        "featureType": "landscape.man_made",
                        "elementType": "geometry",
                        "stylers": [{
                            "color": "#e4e4e4"
                        }]
                    },
                    {
                        "featureType": "landscape.natural",
                        "elementType": "geometry",
                        "stylers": [{
                            "color": "#d8d5fe"
                        }]
                    },
                    {
                        "featureType": "landscape.natural.landcover",
                        "elementType": "geometry",
                        "stylers": [{
                            "color": "#000000"
                        }]
                    },
                    {
                        "featureType": "poi",
                        "elementType": "geometry",
                        "stylers": [{
                            "color": "#ebe9fe"
                        }]
                    },
                    {
                        "featureType": "poi",
                        "elementType": "labels.text.fill",
                        "stylers": [{
                            "color": "#757575"
                        }]
                    },
                    {
                        "featureType": "poi.park",
                        "elementType": "geometry",
                        "stylers": [{
                            "color": "#b5affa"
                        }]
                    },
                    {
                        "featureType": "poi.park",
                        "elementType": "labels.text.fill",
                        "stylers": [{
                            "color": "#9e9e9e"
                        }]
                    },
                    {
                        "featureType": "road",
                        "elementType": "geometry",
                        "stylers": [{
                            "color": "#ffffff"
                        }]
                    },
                    {
                        "featureType": "road.arterial",
                        "elementType": "labels.text.fill",
                        "stylers": [{
                            "color": "#757575"
                        }]
                    },
                    {
                        "featureType": "road.highway",
                        "elementType": "geometry",
                        "stylers": [{
                            "color": "#c7c7c7"
                        }]
                    },
                    {
                        "featureType": "road.highway",
                        "elementType": "labels.text.fill",
                        "stylers": [{
                            "color": "#616161"
                        }]
                    },
                    {
                        "featureType": "road.local",
                        "elementType": "labels.text.fill",
                        "stylers": [{
                            "color": "#9e9e9e"
                        }]
                    },
                    {
                        "featureType": "transit.line",
                        "elementType": "geometry",
                        "stylers": [{
                            "color": "#e5e5e5"
                        }]
                    },
                    {
                        "featureType": "transit.station",
                        "elementType": "geometry",
                        "stylers": [{
                            "color": "#eeeeee"
                        }]
                    },
                    {
                        "featureType": "water",
                        "elementType": "geometry",
                        "stylers": [{
                            "color": "#8981f8"
                        }]
                    },
                    {
                        "featureType": "water",
                        "elementType": "labels.text.fill",
                        "stylers": [{
                            "color": "#9e9e9e"
                        }]
                    }
                ]
            };
            var var_marker = new google.maps.Marker({
                position: var_location,
                map: var_map,
                title: "Venice"
            });

            var var_map = new google.maps.Map(document.getElementById("map-container"),
                var_mapoptions);

            var_marker.setMap(var_map);
        }

        google.maps.event.addDomListener(window, 'load', init_map);

    </script>
</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top custom">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Alternar Navega��o</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">ChipStore</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <div class="col-sm-3 brand-col">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="indexLogado.jsp">IN�CIO</a></li>
                        <li><a href="#sobre" class="scroll">SOBRE</a></li>
                        <li><a href="#contato" class="scroll">CONTATO</a></li>
                    </ul>
                </div>
                <div class="col-sm-4 search-col">
                    <form class="navbar-form" role="search">
                        <div class="input-group" style="width:93%;">
                            <input type="text" id="busca" class="form-control search-form" placeholder="Buscar">
                            <div class="input-group-btn" style="display:block">
                                <button class="btn btn-default search-btn" type="submit" style="display:inline-block">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm-3">
                    <ul class="nav navbar-nav navbar-left">
                        <li class="fa fa-user fa-2x nav-login" aria-hidden="true"></li>
                        <li><a href="index.jsp" class="a-login">Ol�, Sair!</a></li>
                    </ul>
                    <button type="button" class="btn btn-default navbar-btn" data-toggle="modal" data-target="#loginadm" id="nav-btn-login">ADM</button>
                </div>
            </div>
        </div>
    </nav>

    <!--------------- MODAL LOGIN -------------------->

    <div class="modal fade" id="login" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content" id="modalLogin">
                <div class="modal-header">
                    <h1 class="text-center"><i class="glyphicon glyphicon-user"></i> Login</h1>
                </div>
                <div class="modal-body">
                    <form action="indexLogado.jsp">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite seu Email" required autofocus />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Senha</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Digite sua senha" required autofocus />
                        </div>
                        <button type="submit" class="btn btn-form btn-block">ENTRAR</button>
                    </form>
                </div>
                <div class="modal-footer" style="text-align: center;">
                    <p>N�o � cadastrado? <a class="login-link" href="incluirUsuario.jsp">Clique aqui!</a></p>
                </div>
            </div>
        </div>
    </div>


    <!--------------- LOGIN ADM -------------------->

    <div class="modal fade" id="loginadm" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content" id="modalLogin">
                <div class="modal-header">
                    <h1 class="text-center"><i class="glyphicon glyphicon-user"></i> Login Administrativo</h1>
                </div>
                <div class="modal-body">
                    <form action="incluirFabricante">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite seu Email" required autofocus />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Senha</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Digite sua senha" required autofocus />
                        </div>
                        <button type="submit" class="btn btn-form btn-block">ENTRAR</button>
                    </form>
                </div>
                <div class="modal-footer" style="text-align: center;">
                    <p>Cadastro somente com o ADM do site!</p>
                </div>
            </div>
        </div>
    </div>



    <!--------------- CAROUSEL -------------------->

    <div id="myCarousel" class="carousel slide" data-ride="carousel" width="100%">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active" style="background-image: url(img/capa1.png)">
            </div>
            <div class="item" style = "background-image: url(img/capa2.png)">
            </div>
            <div class="item" style = "background-image: url(img/capa3.png)">
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


    <!--------------- COLUNA HORIZONTAL -------------------->

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">CATEGORIA</a>
            </div>
            <ul class="nav navbar-nav navbar-left">
                <li><a href="lojaCelulares.jsp"> Celulares</a></li>
                <li><a href="lojaComputadores.jsp"> Computadores</a></li>
                <li><a href="lojaAcessorios.jsp"> Acess�rios</a></li>
            </ul>
        </div>
    </nav>

<!---------- CELULARES ------------------------------------------------>

    <div id="celulares" class="heading-index">
        <h1>Celulares </h1>
    </div>
    
   <div class="container">
	<div class="row">
    	<!-- Inicio Vitrine -->
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      		 <a href="celular.jsp"><img src="img/iphone.png" alt="Imagem de um Iphone 8"></a> 
      			<h4>iPhone 8 256GB </h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>iPhone 8 256GB Tela 4.7" IOS 11 4G Wi-Fi c�mera 12MP - Apple </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$3.599,00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="carrinhoLogado.jsp"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                     
      				</div>	
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="img/pcdell.jpg" alt="Imagem de um PC DELL">
      			<h4>Computador Dell Inspiron </h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>Computador Dell Inspiron 3268-D05P Intel Pentium Dual Core 4GB 1TB - Linux  </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$1.209,00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="#"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                     
      				</div>	
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="img/tablet.png" alt="Imagem de um tablet">
      			<h4>Tablet Samsung Galaxy Tab </h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>Tablet Samsung Galaxy Tab T113 8GB - Preto </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$999,00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="#"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                      
      				</div>	
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="img/hd.png" alt="Imagem de um Iphone 8">
      			<h4>iPhone 8 256GB </h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>HD Externo Port�til Samsung M3 Portable 1TB Preto </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$429,90</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="#"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                       
      				</div>	
      			</div>
    		</span>
  		</div>
  		<!-- END PRODUCTS -->
	</div>
</div>

    <!--------------- COMPUTADORES -------------------->

   <div id="computadores" class="heading-index">
        <h1>Computadores</h1>
    </div>
    
   <div class="container">
	<div class="row">
    	<!-- Inicio Vitrine -->
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      		 <a href="celular.jsp"><img src="img/iphone.png" alt="Imagem de um Iphone 8"></a> 
      			<h4>iPhone 8 256GB </h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>iPhone 8 256GB Tela 4.7" IOS 11 4G Wi-Fi c�mera 12MP - Apple </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$3.599,00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="carrinhoLogado.jsp"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                     
      				</div>	
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="img/pcdell.jpg" alt="Imagem de um PC DELL">
      			<h4>Computador Dell Inspiron </h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>Computador Dell Inspiron 3268-D05P Intel Pentium Dual Core 4GB 1TB - Linux  </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$1.209,00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="#"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                     
      				</div>	
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="img/tablet.png" alt="Imagem de um tablet">
      			<h4>Tablet Samsung Galaxy Tab </h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>Tablet Samsung Galaxy Tab T113 8GB - Preto </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$999,00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="#"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                      
      				</div>	
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="img/hd.png" alt="Imagem de um Iphone 8">
      			<h4>iPhone 8 256GB </h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>HD Externo Port�til Samsung M3 Portable 1TB Preto </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$429,90</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="#"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                       
      				</div>	
      			</div>
    		</span>
  		</div>
  		<!-- END PRODUCTS -->
	</div>
</div>

    <!--------------- ACESS�RIOS -------------------->

   <div id="acessorios" class="heading-index">
        <h1>Acess�rios</h1>
    </div>
    
   <div class="container">
	<div class="row">
    	<!-- Inicio Vitrine -->
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      		 <a href="celular.jsp"><img src="img/iphone.png" alt="Imagem de um Iphone 8"></a> 
      			<h4>iPhone 8 256GB </h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>iPhone 8 256GB Tela 4.7" IOS 11 4G Wi-Fi c�mera 12MP - Apple </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$3.599,00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="carrinhoLogado.jsp"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                     
      				</div>	
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="img/pcdell.jpg" alt="Imagem de um PC DELL">
      			<h4>Computador Dell Inspiron </h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>Computador Dell Inspiron 3268-D05P Intel Pentium Dual Core 4GB 1TB - Linux  </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$1.209,00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="#"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                     
      				</div>	
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="img/tablet.png" alt="Imagem de um tablet">
      			<h4>Tablet Samsung Galaxy Tab </h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>Tablet Samsung Galaxy Tab T113 8GB - Preto </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$999,00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="#"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                      
      				</div>	
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="img/hd.png" alt="Imagem de um Iphone 8">
      			<h4>iPhone 8 256GB </h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>HD Externo Port�til Samsung M3 Portable 1TB Preto </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$429,90</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="#"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                       
      				</div>	
      			</div>
    		</span>
  		</div>
  		<!-- END PRODUCTS -->
	</div>
</div>

     
    <!--------------- SOBRE -------------------->

    <div id="sobre" class="heading-index">
        <h1 style="text-shadow: 0.1em 0.1em 0.2em #87F">Sobre a ChipStore</h1>
    </div>

    <br>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default" style="border-color: #847BF6;box-shadow: 6px 6px 10px #847BF6;">
                    <div class="panel-body" style="color: #000000">
                        <p>O nome do nosso site vem de Application Program Interface, que � um tipo de programa utilizado para fazer com que dois outros programas diferentes troquem informa��es entre si. Um programa do tipo API pode ser entendido como uma interface.</p>

                        <p>Escolhemos este nome pois al�m de ser um jarg�o muito conhecido na �rea de inform�tica, reflete tamb�m o nosso papel, que � facilitar o contato entre as empresas e os profissionais de inform�tica.</p>

                        <p>N�o somos uma associa��o de profissionais e n�o estamos ligados a nenhum sindicato ou entidades de classe. Nosso compromisso � atender a comunidades de profissionais de inform�tica, possibilitando a troca de informa��es e experi�ncias.</p>

                        <p>ChipStore � uma marca registrada no INPI, todas as informa��es deste site s�o protegidas pela lei de direitos autorais nro 9.610/98, n�o podendo ser copiadas, utilizadas por outros sites, ou disponibilizadas em outro local. Caso saiba de alguma viola��o denuncie.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="parallax-container" id="parallaxIndex" data-speed="6" data-type="background"></div>
    <div id="contato" class="heading-index">
    </div>

    <!--------------- CONTATO -------------------->

    <div id="contato" class="heading-index">
    </div>

    <section id="contact" class="content-section text-center">
        <div class="contact-section">
            <div class="container">
                <br>
                <h1>Contato</h1>
                <h4>
                    <p><span class="glyphicon glyphicon-info-sign"></span> Alguma pergunta? Sinta-se livre para nos contatar.</p>
                </h4>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <form action="#" class="form-horizontal" method="GET">
                            <div class="form-group">
                                <label for="exampleInputName2">Nome</label>
                                <input type="text" id="nome" name="nome" class="form-control" placeholder="Jane Doe" required="required" />
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail2">Email</label>
                                <input type="email" id="email" name="email" class="form-control" placeholder="jane.doe@example.com" pattern="^[a-z0-9._-]{2,}@[a-z0-9-]{2,}.[a-z.]{2,}$" required="required" />
                            </div>
                            <div class="form-group">
                                <label for="exampleInputAssunto2">Assunto</label>
                                <input type="text" id="assunto" name="assunto" class="form-control" placeholder="Dinheiro" required="required" />
                            </div>
                            <div class="form-group ">
                                <label for="exampleInputText">Mensagem</label>
                                <textarea id="mensagem" name="mensagem" class="form-control" placeholder="Deion" required="required"> </textarea>
                            </div>
                            <button type="submit" name="btEnviar" class="btn btn-default">Enviar Mensagem</button>
                        </form>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--------------- MAPA -------------------->


     <div id="map-container" style="width:100%;height:400px;"></div>


     <!--------------- FOOTER -------------------->

    <footer class="footer">
        <div class="container">
            <div class="col-sm-4">
                <div class="row">
                    <h3>Acesso r�pido</h3>
                    <ul class="footerAccess">
                        <li><i class="fa fa-angle-double-right icon-link" aria-hidden="true"></i><a href="index.jsp" class="footer-link"> Inicio</a></li>
                        <li><i class="fa fa-angle-double-right icon-link" aria-hidden="true"></i><a href="lojaCelulares.jsp" class="footer-link"> Celulares</a></li>
                        <li><i class="fa fa-angle-double-right icon-link" aria-hidden="true"></i><a href="lojaComputadores.jsp" class="footer-link"> Computadores</a></li>
                        <li><i class="fa fa-angle-double-right icon-link" aria-hidden="true"></i><a href="lojaAcessorios.jsp" class="footer-link"> Acess�rios</a></li>
                        <li><i class="fa fa-angle-double-right icon-link" aria-hidden="true"></i><a href="#sobre" class="scroll" class="footer-link"> Sobre</a></li>
                        <li><i class="fa fa-angle-double-right icon-link" aria-hidden="true"></i><a href="#contato" class="scroll" class="footer-link"> Contato</a></li>
                        <li><i class="fa fa-angle-double-right icon-link" aria-hidden="true"></i><a href="#myCarousel" class="scroll" class="footer-link"> Pesquisar</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="row">
                    <h3>Social</h3>
                    <div class="footerSocial">
                        <a href="https://www.facebook.com/boladavezbr/"><i class="fa fa-facebook fa-2x icon-square" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-google-plus fa-2x icon-square" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-instagram fa-2x icon-square" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter fa-2x icon-square" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="row">
                    <h3>Curta nossa p�gina</h3>
                    <div class="fb-page" data-href="https://www.facebook.com/ChipJobs-507113656303453/" data-tabs="timeline" data-width="450" data-height="100" data-small-header="false" data-adapt-container-width="false" data-hide-cover="false" data-show-facepile="true">
                        <blockquote cite="https://www.facebook.com/ChipJobs-507113656303453/" class="fb-xfbml-parse-ignore">
                            <a href="https://www.facebook.com/ChipStore-507113656303453/">
                                <h1 class="fb">Curta nossa p�gina</h1>ChipStore</a>
                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <div style="padding:10px;background-color: black;color:lightgray;font-family:Aldrich;">
        <p style="margin:0;">� Copyright 2017 <a style="color:white;font-family:Aldrich;" href="ChipStore@ChipStore.com.br">ChipStore</a></p>
    </div>
</body>
</html>