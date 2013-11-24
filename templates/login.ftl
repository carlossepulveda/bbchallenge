<#ftl encoding="UTF-8">
<!DOCTYPE html>
    <head>
        <title>Page Title</title> 
        
        <meta name="viewport" content="width=device-width, initial-scale=1"> 

        <link rel="stylesheet" href="/css/jquery.mobile-1.3.2.min.css" />
    </head>
    <body>
        <!-- Start of first page -->
        <div data-role="page" id="places">

            <div data-role="header">
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
                            <img src="img/coin.jpg" style="float:left"/>
                            <span>Punto en Arturo Calle</span>
                        </a></li>
                        <li><a>
                            <img src="img/coin.jpg" style="float:left"/>
                            <span>Punto en Arturo Calle</span>
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
            </div><!-- /content -->

            <!--<div data-role="footer">
                <h4>Page Footer</h4>
            </div> /footer -->
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