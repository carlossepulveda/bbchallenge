<#macro layout_site stylesheets="" javascripts="" title="" section="" >
<!DOCTYPE html>
<html>
    <head>

        <!-- Basic -->
        <meta charset="utf-8">
        <title>Atartel - ${title}</title>
        <meta name="keywords" content="Oficial Page Atartel" />
        <meta name="description" content="Atartel Comunicaciones">
        <meta name="author" content="atartel.com">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Web Fonts  -->
        <link href="https://s3.amazonaws.com/atartel-static/css/shadows_into_light.css" rel="stylesheet" type="text/css">

        <!-- Libs CSS -->
        <link rel="stylesheet" href="http://d2bk97uf0whptz.cloudfront.net/css/bootstrap.css">
        <link rel="stylesheet" href="https://s3.amazonaws.com/atartel-static/css/fonts/font-awesome/css/font-awesome.css">
        <link rel="stylesheet" href="http://d2bk97uf0whptz.cloudfront.net/vendor/flexslider/flexslider.css" media="screen" />
        <link rel="stylesheet" href="http://d2bk97uf0whptz.cloudfront.net/vendor/fancybox/jquery.fancybox.css" media="screen" />

        <!-- Theme CSS -->
        <link rel="stylesheet" href="http://d2bk97uf0whptz.cloudfront.net/css/theme.css">
        <link rel="stylesheet" href="http://d2bk97uf0whptz.cloudfront.net/css/theme-elements.css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="http://d2bk97uf0whptz.cloudfront.net/css/custom.css">

        <!-- Skin -->
        <link rel="stylesheet" href="http://d2bk97uf0whptz.cloudfront.net/css/skins/blue.css">

        <!-- Responsive CSS -->
        <link rel="stylesheet" href="http://d2bk97uf0whptz.cloudfront.net/css/bootstrap-responsive.css" />
        <link rel="stylesheet" href="http://d2bk97uf0whptz.cloudfront.net/css/theme-responsive.css" />

        <!-- Favicons -->
        <link rel="shortcut icon" href="http://d2bk97uf0whptz.cloudfront.net/img/favicon2.ico">
        <!-- Head Libs -->
        <script src="http://d2bk97uf0whptz.cloudfront.net/vendor/modernizr.js"></script>

        <!--[if IE]>
            <link rel="stylesheet" href="/css/ie.css">
        <![endif]-->

        <!--Page Style-->
        <#if stylesheets?? >
            <#if stylesheets?is_directive>
                <@stylesheets/>
            <#else>

                ${stylesheets}
            </#if>
        </#if>

        <!--[if lte IE 8]>
            <script src="/vendor/respond.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="body">
            <header>
                <div class="container">
                    <h1 class="logo">
                        <a href="/">
                            <img alt="Atartel" src="http://d2bk97uf0whptz.cloudfront.net/img/logo2.png">
                        </a>
                    </h1>
                    <nav>
                        <ul class="nav nav-pills nav-top">
                            <#if user ??>
                                <li><span><i class="icon-angle-right"></i>Bienvenido <b>${user.getName()}</b><span></li>
                                <li><a href = "/delivery/form"><i class="icon-angle-right"></i>Ir a la <b>Aplicación</b></a></li>
                                <li><a href = "/logout"><i class="icon-angle-right"></i>Cerrar Sesión</a></li>
                            <#else>
                                <li><a href="/login"><i class="icon-angle-right"></i>Ingreso</a></li>
                                <li><a href="/register"><i class="icon-angle-right"></i>Regístrate</a></li>
                            </#if>
                        </ul>
                    </nav>
                    <div class="social-icons">
                        <ul class="social-icons">
                            <li class="facebook"><a href="https://www.facebook.com/pages/Atartel/336731139786806?ref=stream" target="_blank" title="Facebook">Facebook</a></li>
                            <li class="twitter"><a href="https://twitter.com/Atartel" target="_blank" title="Twitter">Twitter</a></li>
                            <li class="googleplus"><a href="https://plus.google.com/s/atartel%20comunicaciones" target="_blank" title="googleplus">Google Plus</a></li>
                        </ul>
                    </div>
                    <nav>
                        <ul class="nav nav-pills nav-main" id="mainMenu">
                            <li <#if section = "index">class="dropdown active"</#if>><a href="/">Inicio</a></li>
                            <li <#if section = "about">class="dropdown active"</#if>><a href="/about">Acerca de Nosotros</a></li>
                            <li <#if section = "services">class="dropdown active"</#if>><a href="/services">Portafolio</a></li>
                            <li <#if section = "prices">class="dropdown active"</#if>><a href="/prices">Precios</a></li>
                            <li <#if section = "contact">class="dropdown active"</#if>><a href="/contact">Contáctanos</a></li>
                        </ul>
                    </nav>
                </div>
            </header>

            <div role="main" class="main">

                <section class="page-top">
                    <div class="container">
                        <div class="row">
                            <div class="span12">
                                <ul class="breadcrumb">
                                    <li><a href="/">Atartel</a> <span class="divider">/</span></li>
                                    <li class="active">${title}</li>
                                </ul>
                            </div>
                        </div>
                        <div class="row">
                            <div class="span12">
                                <h2>${title}</h2>
                            </div>
                        </div>
                    </div>
                </section>

                <div class="container">
                    <#nested/>
                </div>

            </div>

            <footer>
                <div class="container">
                    <div class="row">
                        <div class="footer-ribon">
                            <span>En lo que creemos</span>
                        </div>
                        <div class="span3">
                            <h4>Nuestro Objetivo</h4>
                            <p>Queremos convertirnos en la plataforma lider para que empresas de cualquier sector económico puedan transmitir mensajes de manera automática y masificada por medio llamadas,  necesitando únicamente de una conexión a internet para operar.</p>
                        </div>
                        <div class="span3">
                           <h4>¿Quiénes Somos?</h4>
                            <p>Atartel es una empresa que ofrece servicios en internet para realizar notificaciones masivas a través de llamadas telefónicas a destinos móviles o fijos.<br><br>
                        </div>
                        <div class="span4">
                            <div class="contact-details">
                                <h4>Contáctanos</h4>
                                <ul class="contact">
                                    <li><p><i class="icon-envelope"></i> <strong>Email:</strong> contacto@atartel.com</p></li>
                                </ul>
                            </div>
                        </div>
                        <div class="span2">
                            <h4>Síguenos</h4>
                            <div class="social-icons">
                                <ul class="social-icons">
                                    <li class="facebook"><a href="https://www.facebook.com/pages/Atartel/336731139786806?ref=stream" target="_blank" data-placement="bottom" rel="tooltip" title="Facebook">Facebook</a></li>
                                    <li class="twitter"><a href="https://twitter.com/Atartel" target="_blank" data-placement="bottom" rel="tooltip" title="Twitter">Twitter</a></li>
                                    <li class="googleplus"><a href="https://plus.google.com/s/atartel%20comunicaciones" target="_blank" data-placement="bottom" rel="tooltip" title="Google Plus">Google Plus</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-copyright">
                    <div class="container">
                        <div class="row">
                            <div class="span1">
                                <a href="/" class="logo">
                                    <img alt="Atartel" src="http://d2bk97uf0whptz.cloudfront.net/img/Logofooter.png">
                                </a>
                            </div>
                            <div class="span7">
                                <p>© Copyright 2013 por Atartel. Todos losDerechos Reservados.</p>
                            </div>
                            <div class="span4">
                                <nav id="sub-menu">
                                    <ul>
                                        <li><a href="/terms-conditions">Términos y Condiciones</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
        <div id="block-window">
            <img class="spinner-loading" src="http://d2bk97uf0whptz.cloudfront.net/img/loading.gif" />
            <span class="spinner-loading">Por favor espere...<span>
        </div>

        <!-- Libs -->
        <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="http://d2bk97uf0whptz.cloudfront.net/vendor/jquery.js"><\/script>')</script>
        <script src="http://d2bk97uf0whptz.cloudfront.net/vendor/jquery.easing.js"></script>
        <script src="http://d2bk97uf0whptz.cloudfront.net/vendor/jquery.cookie.js"></script>
        <script src="http://d2bk97uf0whptz.cloudfront.net/vendor/bootstrap.js"></script>
        <script src="http://d2bk97uf0whptz.cloudfront.net/vendor/selectnav.js"></script>
        <!--<script src="/vendor/twitterjs/twitter.js"></script>-->
        <script src="http://d2bk97uf0whptz.cloudfront.net/vendor/flexslider/jquery.flexslider.js"></script>
        <script src="http://d2bk97uf0whptz.cloudfront.net/vendor/jflickrfeed/jflickrfeed.js"></script>
        <script src="http://d2bk97uf0whptz.cloudfront.net/vendor/fancybox/jquery.fancybox.js"></script>
        <script src="http://d2bk97uf0whptz.cloudfront.net/vendor/jquery.mapmarker.js"></script>
        <script src="http://d2bk97uf0whptz.cloudfront.net/js/libs/plugins.js"></script>
        <script src="http://d2bk97uf0whptz.cloudfront.net/js/libs/theme.js"></script>
        <script src="http://d2bk97uf0whptz.cloudfront.net/js/third/googleAnalytics.js"></script>

        <!--Page Scripts-->
        <#if javascripts?? >
            <#if javascripts?is_directive>
                <@javascripts/>
            <#else>
                ${javascripts}
            </#if>
        </#if>
    </body>
</html>

</#macro>