<#macro layout_app stylesheets="" javascripts="" title="" section="">

<!DOCTYPE html>
<!--[if IE 8]>      <html class="ie ie8"> <![endif]-->
<!--[if IE 9]>      <html class="ie ie9"> <![endif]-->
<html>
    <head>

    <!-- Basic -->
    <meta charset="utf-8">
    <title>Atartel</title>
    <meta name="keywords" content="Oficial Page Atartel" />
    <meta name="description" content="Atartel Comunicaciones">
    <meta name="author" content="atartel.com">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Web Fonts  -->
    <link href="https://s3.amazonaws.com/atartel-static/css/shadows_into_light.css" rel="stylesheet" type="text/css">
    <!-- Libs CSS -->
    <link rel="stylesheet" href="http://d2bk97uf0whptz.cloudfront.net/css/bootstrap.css">
    <!-- Theme CSS -->
    <link rel="stylesheet" href="https://s3.amazonaws.com/atartel-static/css/theme.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="http://d2bk97uf0whptz.cloudfront.net/css/bootstrap-responsive.css" />
    <link rel="stylesheet" href="http://d2bk97uf0whptz.cloudfront.net/css/theme-responsive.css" />
    <!-- Favicons -->
    <link rel="shortcut icon" href="http://d2bk97uf0whptz.cloudfront.net/img/favicon2.ico">
    <!-- Head Libs -->


    <link href="http://d2bk97uf0whptz.cloudfront.net/css/third/2.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="http://d2bk97uf0whptz.cloudfront.net/css/third/3.css" media="screen" rel="stylesheet" type="text/css" />    
    <link href="https://s3.amazonaws.com/atartel-static/css/third/application.css" media="screen" rel="stylesheet" type="text/css" />

    <!-- Custom CSS -->
    <link rel="stylesheet" href="http://d2bk97uf0whptz.cloudfront.net/css/customapp.css">

    <!--Page Style-->
    <#if stylesheets?? >
        <#if stylesheets?is_directive>
            <@stylesheets/>
        <#else>
              ${stylesheets}
        </#if>
    </#if>
    <style type="text/css">
      a {
          text-decoration : none!important;
      }
      .tab-content {
          overflow : hidden!important;
      }
    </style>
    <!--[if lt IE 9]>
      <script src="//html5shiv.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
    <![endif]-->

    <!--[if IE]>
      <link rel="stylesheet" href="css/ie.css">
    <![endif]-->

    <!--[if lte IE 8]>
      <script src="vendor/respond.js"></script>
    <![endif]-->
    <style type="text/css">
        #alert-center {
          float : left;
          position : absolute;
          right : 380px;
          top : 0;
          color : rgb(247,131,154);
          text-shadow : 0 -1px 0 #000000;
          font-weight : bold;
          font-size: 1.1em;
        }
        .welcomeUser {
          color: #999999;
          font-size: 1.1em;
          padding-top: 36px;
        }
        .welcome {
          font-family: 'EntypoRegular';
          font-size: 3em;
          font-weight: normal;
          line-height: 0;
          margin-right: 0.1em;
          vertical-align: middle;
        }
    </style>
    <script type="text/javascript">
        function scrollTop(){
          $('html, body').animate({ scrollTop: 0 }, 0);
        }
    </script>
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
            <ul class="nav nav-pills nav-top nav-font">
              <li>
                <div class = "welcomeUser" ><ek class="welcome">&#128100;</ek> Bienvenido <strong>${user.name?if_exists}</strong></div>
              </li>              
            </ul>
          </nav>
        </div>
      </header>

      <div role="main" class="main">
        <div id="content" class="content full">

      <div id='wrapper'>
      <header id='header'>
        <div class='inner-header'>
          <div id="alert-center"> </div>
          <div class='pull-right'>
            <div class='button-well button-well-dark' data-dropdown>
              <a class='button button-dark' href='/prices'><span class="pictogram sizeIcon">&#59197;</span>Comprar Créditos</a>

            </div>
            <div class='button-well button-well-dark'>
              <div class='button-group'>

                <div id='accountCredits' class='button button-dark'><span class="pictogram sizeIcon">&#59148;</span> <span id='creditsStatus'>${user.getAccount().getCredits()?c}</span> Créditos</div>
                <a href="/logout"><div id='quit' class='button button-dark icon-only' data-icon='Q' ></div></a>
              </div>
            </div>
          </div>
        </div>
      </header>
      <section id='main'>
        <nav class='submenu' id='secondary'>
          <ul>
            <li <#if section = "call"> class='active' </#if> >
              <a data-icon='l' href='/delivery/form'>Llamar</a>
            </li>
            <li <#if section = "historyCall"> class='active'<#elseif section = "getDelivery"> </#if> >
              <a data-icon='/' href='/delivery'>Historial de Llamadas</a>
            </li>
            <!--li <#if section = "user"> class='active' </#if> >
              <a data-icon='U' href='/user/123'>Mis Datos</a>
            </li>
            <li <#if section = "account"> class='active' </#if> >
              <a href="/account/123"><span class="pictogram sizeIcon">&#59170;</span></br></br>Mi Cuenta</a>
            </li-->
            <#if user.isAdmin() >
            <li <#if section = "admin"> class='active' </#if> >
              <a href="/manage-credits"><span class="pictogram sizeIcon">&#59170;</span></br></br>Admon</a>
            </li>
            </#if>
          </ul>
        </nav>
        <section id='content'>
          <#nested/>
        </section>
    </div>
        </div>
      </div>
    </div>

    <div id="block-window">
        <img class="spinner-loading" src="http://d2bk97uf0whptz.cloudfront.net/img/loading.gif" />
        <span class="spinner-loading">Por favor espere...<span>
    </div>

    <!-- Libs -->
    <script src="http://d2bk97uf0whptz.cloudfront.net/vendor/modernizr.js"></script>
    <script src="/js/third/application.js" type="text/javascript"></script>
    <script src="http://d2bk97uf0whptz.cloudfront.net/js/third/googleAnalytics.js"></script>
    <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/underscore-1.4.2.min.js"></script>
    <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/backbone-0.9.2.min.js"></script>
    <#if emailUser?? >
        <#if emailUser?is_directive>
            <@emailUser/>                  
        <#else>
            ${emailUser}
        </#if>
    </#if>
    <script type="text/javascript" src="/js/creditsStatusPoll.js"></script>
    <script>
      window.global = {
        accountId : ${user.account.id?c},
        user : '${user.email}'
      }
    </script>

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
