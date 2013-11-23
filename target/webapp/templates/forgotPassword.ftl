<#import "layout-site.ftl" as layout>

<#macro stylesheets>
    <!--Some .css file-->
</#macro>

<@layout.layout_site stylesheets=stylesheets javascripts=javascripts title="Restaura tu Contraseña" section="forgotPassword">

    <div id='login_wrapper'>
        <div class='well'>
          <h1>¿Olvidaste tu Constraseña?</h1>
        </div>
        <div class="msj-form"></div><br>
        <form id="forgot-password" onsubmit="return false;">
            <div class="msj"></div>
            <div class='table-container'>
                <table class='table table-form'>
                    <tbody>
                        <tr>
                            <td>
                                <label>Ingresa tu Correo</label>
                            </td>
                            <td>
                                <input id="email" name='email' placeholder='Correo' type='text'>
                            </td>
                            <td>
                                <div id="msjcorreo"> </div>
                            </td>
                        </tr>                        
                    </tbody>
                </table>
            </div>
            <div class='actions'>
            <#if user ??>
            <#else>
                <div class='button-well'>
                    <button id="login-button" class='btn btn-primary btn-large login-button' data-icon='K'>Enviar</button>
                </div>
            </#if>
            </div>
        </form>
    </div>

    <#macro javascripts>
        <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/underscore-1.4.2.min.js"></script>
        <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/backbone-0.9.2.min.js"></script>
        <script src="http://d2bk97uf0whptz.cloudfront.net/js/util.js"></script>
        <!--script type="text/javascript" src="https://s3.amazonaws.com/atartel-static/js/forgotPassword.js"></script-->
        <script type="text/javascript" src="/js/forgotPassword.js"></script>
        <script type="text/javascript">
            new ForgotPasswordView();
        </script>
    </#macro>

</@layout.layout_site>