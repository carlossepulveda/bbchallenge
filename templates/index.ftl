<#ftl encoding="UTF-8">
<!DOCTYPE html>
    <head>
        <title>CreditCP</title> 
        
        <meta name="viewport" content="width=device-width, initial-scale=1"> 

        <link rel="stylesheet" href="/css/jquery.mobile-1.3.2.min.css" />
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCyg4UjkI7R0fiSGbuvCsuYYqPHQ6WYyhc&sensor=true"></script>
    </head>
    <body>
        <!-- Start of first page -->
        <div data-role="page" id="places">

            <div data-role="header">
                <div style="padding : 5px;">Bienvenido Carlos <div style="float:right; padding-right: 20px">100 disponibles</div></div>
                <div data-role="navbar" data-iconpos="bottom">
                    <ul>
                        <li><a href="#places" class="ui-btn-active">Lugares</a></li>
                        <li><a href="#prom" data-icon="">Promociones</a></li>
                        <li><a href="#not" class="count">Notificaciones</a></li>
                    </ul>
                </div>
            </div><!-- /header -->

            <div data-role="content">   

                <div data-role="controlgroup" data-type="horizontal">
                    <a class="ui-btn-active view-map view-type-buttons" data-role="button">Mapa</a>
                    <a class="view-list view-type-buttons" data-role="button">Lista</a>
                </div>
   
                <p class="viewport-map viewport">
                    <div id="map" style="height:450px;"></div>
                </p>   
                <p class="viewport-list viewport" style="background-color:blue; display : none">
                    <ul data-role="listview" data-inset="true" data-theme="d" data-divider-theme="e" data-count-theme="b" style="display:none" class="places-list">
                        <li><a>
                            <img src="img/arturocalle.jpg" style="float:left"/>
                            <span>Arturo Calle</span>
                        </a></li>
                        <li><a>
                            <img src="img/studiof.jpg" style="float:left"/>
                            <span>Studio F</span>
                        </a></li>
                        <li><a>
                            <img src="img/wok-logo.jpg" style="float:left"/>
                            <span>WOK</span>
                        </a></li>
                        <li><a>
                            <img src="img/andresdc.jpg" style="float:left"/>
                            <span>Andre D.C</span>
                        </a></li>
                    </ul>
                </p>  
            </div><!-- /content -->

            <!--<div data-role="footer">
                <h4>Page Footer</h4>
            </div> /footer -->
        </div><!-- /page -->


        <!-- Start of second page -->
        <div data-role="page" id="prom">

            <div data-role="header">
                <div style="padding : 5px">Bienvenido Carlos <div style="float:right; padding-right: 20px">100 disponibles</div></div>
                <div data-role="navbar" data-iconpos="bottom">
                    <ul>
                        <li><a href="#places" data-icon="">Lugares</a></li>
                        <li><a href="#prom" class="ui-btn-active">Promociones</a></li>
                        <li><a href="#not" class="count">Notificaciones</a></li>
                    </ul>
                </div>
            </div>

            <div data-role="content">  
                <p>
                    <ul data-role="listview" data-inset="true" data-theme="d" data-divider-theme="e" data-count-theme="b">
                        <li><a>
                            <img src="img/iphone.jpg" style="float:left"/>
                            <span>Iphone 5</span><br/><span font-size="12px" font-style="normal">Ahorra 20% con 200 puntos</span>
                        </a></li>
                        <li><a>
                            <img src="img/ccolombia.jpg"/> 
                            <span>Camiseta Seleccion Colombia</span><br/><span font-size="12px" font-style="normal">Ahorra 20% con 150 puntos</span>
                        </a></li>
                        <li><a>
                            <img src="img/gasolina.jpg"/> 
                            <span>Estacion de servicio</span><br/><span font-size="12px" font-style="normal">Ahorra 15% con 120 puntos</span>
                        </a></li>
                        <li><a>
                            <img src="img/adidas.jpg"/> 
                            <span>Zapatos Adidas</span><br/><span font-size="12px" font-style="normal">Ahorra 40% con 200 puntos</span>
                        </a></li>
                        <li><a>
                            <img src="img/wok.jpg"/> 
                            <span>WOK</span><br/><span font-size="12px" font-style="normal">Ahorra 10% con 100 puntos</span>
                        </a></li>
                        <li><a>
                            <img src="img/supermercado.jpg"/> 
                            <span>Mercado en almacenes XYZ</span><br/><span font-size="12px" font-style="normal">Ahorra 10% con 300 puntos</span>
                        </a></li>
                    </ul>
                </p>  
            </div><!-- /content -->

        </div><!-- /page -->


        <!-- Start of third page -->
        <div data-role="page" id="not">

            <div data-role="header">
                <div style="padding : 5px">Bienvenido Carlos <div style="float:right; padding-right: 20px">100 disponibles</div></div>
                <div data-role="navbar" data-iconpos="bottom">
                    <ul>
                        <li><a href="#places" data-icon="">Lugares</a></li>
                        <li><a href="#prom">Promociones</a></li>
                        <li><a href="#not" class="ui-btn-active" class="count">Notificaciones</a></li>
                    </ul>
                </div>
            </div>

            <div data-role="content">  
                <p>
                    <p>
                    <ul data-role="listview" data-inset="true" data-theme="d" data-divider-theme="e" data-count-theme="b">
                        <li><a>
                            <img src="img/coin.jpg" style="float:left"/>
                            <span>Punto en Arturo Calle</span>
                        </a></li>
                        <li><a>
                            <img src="img/coin.jpg" style="float:left"/>
                            <span>Punto en Arturo Calle</span>
                        </a></li>
                        <li><a>
                            <img src="img/foursquare.png" style="float:left"/>
                            <span>Haz ganado 10 puntos con tu publicacion</span>
                        </a></li>
                        <li><a>
                            <img src="img/facebook.jpg" style="float:left"/>
                            <span>Nicolas ha acumulado 3000 puntos</span>
                        </a></li>
                        <li><a>
                            <img src="img/coin.jpg" style="float:left"/>
                            <span>Punto en Arturo Calle</span>
                        </a></li>
                        <li><a>
                            <img src="img/foursquare.png" style="float:left"/>
                            <span>Sofia ha acumulado 1000 puntos</span>
                        </a></li>
                        <li><a>
                            <img src="img/offer.jpg" style="float:left"/>
                            <span>Nueva oferta en Studio F</span>
                        </a></li>
                    </ul>
                </p>
                </p>  
            </div><!-- /content -->

        </div><!-- /page -->

    </body>

    <script type="text/javascript" src="/js/libs/jquery.min.js"></script>
    <script type="text/javascript" src="/js/libs/jquery.mobile.js"></script>
    <script type="text/javascript" src="/js/libs/underscore-min.js"></script>
    <script type="text/javascript" src="/js/libs/backbone-0.9.2.min.js"></script>
    <script type="text/javascript" src="/js/index.js"></script>
    
    <script>
        new IndexView();
    </script>

</html>