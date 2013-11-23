<#import "../layout-app.ftl" as layout>

<#macro stylesheets>
    <!--Some .css file-->
    <style type="text/css">
      .tabs a {
          text-decoration : none;
      }
    </style>

</#macro>

<@layout.layout_app stylesheets=stylesheets javascripts=javascripts title="Asingnar Creditos" section="admin">

         <div class='well'>
            <h1>Manejo de creditos</h1>
            <ul class='tabs'>
              <li class='active'>
                <a><span class="pictogram sizeIcon">&#128222;</span>Asignar</a>
              </li>
            </ul>
          </div>

          <div class='tab-content active' id='call'>
            <form id='assign-credits'>
              <div class='table-container table-form'>
                <table class='table'>
                  <tr>
                    <td>
                      <label>Cuenta</label>
                    </td>
                    <td>
                      <input name='account' id='account-owner' class='required account-field' placeholder='correo propietario' type='text'>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <label>Creditos a adicionar</label>
                    </td>
                    <td>
                      <input name='credits' id='credits-to-assign' class='required' placeholder='Creditos a adicionar' type='text'>
                    </td>
                  </tr>
                </table>
              </div>
              <div class='actions'>
                <div class='button-well'>
                  <div class='button button-primary send-button' data-icon='v' href='#'>Asignar</div>
                </div>
              </div>
            </form>
          </div>

    <#macro javascripts>
      <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/underscore-1.4.2.min.js"></script>
      <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/backbone-0.9.2.min.js"></script>
      <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/jquery.cookie.js"></script>
      <script src="http://d2bk97uf0whptz.cloudfront.net/js/libs/jquery.ui.widget.js"></script>
      <script src="http://d2bk97uf0whptz.cloudfront.net/js/libs/jquery.fileupload.js"></script>
      <script src="http://d2bk97uf0whptz.cloudfront.net/js/libs/jquery.fileupload-ui.js"></script>
      <script src="http://d2bk97uf0whptz.cloudfront.net/js/libs/jquery.iframe-transport.js"></script>
      <script src="http://d2bk97uf0whptz.cloudfront.net/js/util.js"></script>
      <script type="text/javascript" src="/js/admin-credits-manager.js"></script>
      <script>
        new AssingForm();
      </script>
    </#macro>
</@layout.layout_app>

