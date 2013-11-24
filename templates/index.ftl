<#ftl encoding="UTF-8">
<!DOCTYPE html>
    <head>
        <title>Page Title</title> 
        
        <meta name="viewport" content="width=device-width, initial-scale=1"> 

        <link rel="stylesheet" href="/css/jquery.mobile-1.3.2.min.css" />
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCyg4UjkI7R0fiSGbuvCsuYYqPHQ6WYyhc&sensor=true"></script>
    </head>
    <body>
        <!-- Start of first page -->
        <div data-role="page" id="foo">

            <div data-role="header">
                <h1>
                    Tienes 1000 puntos acumulados
                </h1>
            </div><!-- /header -->

            <div data-role="content">   
                <p><h4></h4></p> 
                <p>
                    <a href="#bar" data-role="button" data-corners="true" data-shadow="true" data-iconshadow="true" data-wrapperels="span" data-theme="c" class="ui-btn ui-shadow ui-btn-corner-all ui-btn-up-c">
                        <span class="ui-btn-inner ui-btn-corner-all">
                            <span class="ui-btn-text">Ver Promociones</span>
                        </span>
                    </a>
                </p>  
                
                    <div id="map" style="height:400px;"></div>
                  
                
            </div><!-- /content -->

            <!--<div data-role="footer">
                <h4>Page Footer</h4>
            </div> /footer -->
        </div><!-- /page -->


        <!-- Start of second page -->
        <div data-role="page" id="bar">

            <div data-role="header">
                <h1>Inicio/Submenu</h1>
            </div><!-- /header -->

            <div data-role="content">  
                <p>Submenu</p>  
                <p>
                    <a href="#foo" data-role="button" data-corners="true" data-shadow="true" data-iconshadow="true" data-wrapperels="span" data-theme="c" class="ui-btn ui-shadow ui-btn-corner-all ui-btn-up-c">
                        <span class="ui-btn-inner ui-btn-corner-all">
                            <span class="ui-btn-text">Regresar al inicio"</span>
                        </span>
                    </a>
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