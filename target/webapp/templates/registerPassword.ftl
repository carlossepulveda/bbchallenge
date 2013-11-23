<#import "layout-site.ftl" as layout>

<@layout.layout_site title="Solo Falta un paso" javascripts=javascripts>
    <div id='register_wrapper'>
      <div class='well'>
        <h1>Cree su Contraseña de Acceso</h1>
    </div>
    <div class="msj-form"></div><br>
    <form id = 'registerPassword'>
        <div class='table-container'>
          <table class='table table-form'>
            <tbody>
               <tr>
                <td>
                  <label>Contraseña</label>
              </td>
              <td>
                  <input name='password' id = 'password' placeholder='Contraseña' type='password'>
              </td>
              <td>
                  <div id="msjpass"> </div>
              </td>
          </tr>
          <tr>
            <td>
              <label>Repita su Contraseña</label>
          </td>
          <td>
              <input name='repassword' id = 'repassword' placeholder='Ingresela de Nuevo' type='password'>
          </td>
          <td>
              <div id="msjrepass"> </div>
          </td>
      </tr>
    </tbody>
    </table>
    </div>
    <div class='actions'>
      <div class='button-well'>
        <a id="register-password-button" class='btn btn-primary btn-large register-password-button' data-icon='K'>Crear</a>
    </div>
    </div>
    </form>
    </div>

    <#macro javascripts>
        <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/underscore-1.4.2.min.js"></script>
        <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/backbone-0.9.2.min.js"></script>
        <script type="text/javascript" src="/js/util.js"></script>
        <script type="text/javascript" src="/js/registerPassword.js"></script>
        <script type="text/javascript">
            var email = "${email}";
            var key = "${key}";

            new RegisterPasswordView({email : email, key : key});
        </script>
    </#macro>
</@layout.layout_site>
