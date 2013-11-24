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
                <h3>Plus Card</h3>
            </div><!-- /header -->

            <div data-role="content">   

                <p>
                    <form id="login-form" onsubmit="return false;" action="">
             
                        <fieldset data-role="fieldcontain"> 
                            <label for="username">Correo:</label>
                            <input type="text" name="username" id="username">
                        </fieldset>
             
                        <fieldset data-role="fieldcontain"> 
                            <label for="password">Contraseña:</label>
                            <input type="password" name="password" id="password">
                        </fieldset>
             
                        <input class="login-button" type="button" value="Ingresar">
             
                    </form>
                </p>  
            </div><!-- /content -->

        </div><!-- /page -->


        <!-- Start of second page -->
        <div data-role="page" id="social">

            <div data-role="header">
                <h3>Obtiene puntos registrando tus redes sociales</h3>
            </div><!-- /header -->

            <div data-role="content">   

                <p>
                   <ul data-role="listview" data-inset="true" data-theme="d" data-divider-theme="e" data-count-theme="b">
                        <li><a>
                            <img src="img/facebook.jpg" style="float:left"/>
                            <span>Acumula 100 puntos</span>
                        </a></li>
                        <li><a>
                            <img src="img/foursquare.png" style="float:left"/>
                            <span>Acumula 100 puntos</span>
                        </a></li>
                        <li><a>
                            <img src="img/waze.jpg" style="float:left"/>
                            <span>Acumula 100 puntos</span>
                        </a></li>

                    </ul>
                    <input class="continue-button" type="button" value="Continuar">
                </p>  
            </div><!-- /content -->

        </div><!-- /page -->

    </body>

    <script type="text/javascript" src="/js/libs/jquery.min.js"></script>
    <script type="text/javascript" src="/js/libs/jquery.mobile.js"></script>
    <script type="text/javascript" src="/js/libs/underscore-min.js"></script>
    <script type="text/javascript" src="/js/libs/backbone-0.9.2.min.js"></script>
    <script type="text/javascript" src="/js/login.js"></script>
    
    <script>
        new LoginView();
    </script>

</html>