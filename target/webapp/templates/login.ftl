
<#import "layout-site.ftl" as layout>

<#macro stylesheets>
    <!--Some .css file-->
</#macro>

<@layout.layout_site stylesheets=stylesheets javascripts=javascripts title="Ingreso" section="login">

    <div id='login_wrapper'>
        <div class='well'>
          <h1>Clientes Atartel</h1>
        </div>
        <div class="msj-form"></div><br>
        <form id="login" onsubmit="return false;">
            <div class="msj"></div>
            <div class='table-container'>
                <table class='table table-form'>
                    <tbody>
                        <tr>
                            <td>
                                <label>Correo</label>
                            </td>
                            <td>
                                <input id="email" name='email' placeholder='Correo' type='text'>
                            </td>
                            <td>
                                <div id="msjcorreo"> </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Contraseña</label>
                            </td>
                            <td>
                                <input id="password" placeholder='Contraseña' type='password'>
                            </td>
                            <td>
                                <div id="msjpass"> </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3"><a href="/forgot-password">¿Olvido su Contraseña?</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class='actions'>
            <#if user ??>
            <#else>
                <div class='button-well'>
                    <button id="login-button" class='btn btn-primary btn-large login-button' data-icon='K'>Ingresar</button>
                </div>
            </#if>
            </div>
        </form>
    </div>

    <#macro javascripts>
        <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/underscore-1.4.2.min.js"></script>
        <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/backbone-0.9.2.min.js"></script>
        <script src="/js/util.js"></script>
        <script type="text/javascript" src="/js/login.js"></script>
        <script type="text/javascript">
            new LoginView();
        </script>
    </#macro>

</@layout.layout_site>

