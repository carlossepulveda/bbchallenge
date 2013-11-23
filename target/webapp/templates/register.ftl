<#import "layout-site.ftl" as layout>

<@layout.layout_site title="Registrar" javascripts=javascripts>
    <div id='register_wrapper'>
      <div class='well'>
        <h1>Regístrate</h1>
    </div>
    <div class="msj-form"></div><br>

    <form id = 'register'>
        <div class='table-container'>
          <table class='table table-form'>
            <tbody>
               <tr>
                <td>
                  <label>Nombre</label>
                </td>
                <td>
                  <input name='name' id = 'name' placeholder='Nombres' type='text'>
                </td>
                <td>
                 <div id="msjname"> </div>
                </td>
              </tr>
              <tr>
                <td>
                  <label>Correo</label>
                </td>
                <td>
                    <input name='email' id = 'email' placeholder='Correo' type='text'>
                </td>
                <td>
                  <div id="msjemail"> </div>
                </td>
              </tr>
              <tr>
                <td colspan="4">
                  <input type="checkbox" id="terminos_checkbox" style="float:left;margin-right: 3px"/><label>Acepto <a href="/terms-conditions">términos y condiciones</a></label>
                </td>
                <td>
                  <div id="msjterm"> </div>
                </td>
              </tr>
            </tbody>
          </table>
    </div>
    <div class='actions'>
      <div class='button-well'>
        <a id="register-button" class='btn btn-primary btn-large register-button' data-icon='K'>Registrarse</a>
    </div>
    </div>
    </form>
    </div>

    <#macro javascripts>
        <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/underscore-1.4.2.min.js"></script>
        <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/backbone-0.9.2.min.js"></script>
        <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/util.js"></script>
        <script type="text/javascript" src="/js/register.js"></script>
        <script type="text/javascript">
            new RegisterView();
        </script>
    </#macro>
</@layout.layout_site>
