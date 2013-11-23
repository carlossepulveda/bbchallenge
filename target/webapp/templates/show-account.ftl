<#import "layout-app.ftl" as layout>

<#macro stylesheets>
    <!--Some .css file-->
</#macro>

<@layout.layout_app stylesheets=stylesheets javascripts=javascripts title="Mis Datos" section="account">
      <div class='well'>
        <h1>Mi Cuenta</h1>
        <ul class='tabs'>
            <li class='active'>
              <a href='#myData'><span class="pictogram sizeIcon">&#59170;</span>Detalles de Mi Cuenta</a>
            </li>
          </ul>
        </div>
          <div class='tab-content active' id='myData'>
            <form id='formMyData'>          
              <div class='table-container table-form'>              
                <table class='table'>            
                  <tr>
                    <td>
                      <label>Organizacion:</label>
                    </td>
                    <td>
                      <input name='email' id='organization' type='text' class='required' value='Mi Compañia'>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <label>Tipo de Identificacion:</label>
                    </td>
                    <td>
                      <select class='required' name='source' id='sourceCall'>
                          <option value=''>Seleccione..</option>
                          <option value='nit'>NIT</option>
                          <option value='rut'>RUT</option>
                          <option value='cc'>Cedula</option>
                        </select>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <label>Numero de Identicación:</label>
                    </td>
                    <td>
                      <input id='identification_number' type='text' value='1090476352' disabled>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <label>Direccion:</label>
                    </td>
                    <td>
                      <input id='address' type='text' value='Calle 54 #86A-60 XXX' disabled>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <label>Telefono:</label>
                    </td>
                    <td>
                      <input id='telephone' type='text' value='5878152' disabled>
                    </td>
                  </tr>   
                  <tr>
                    <td>
                      <label>Email:</label>
                    </td>
                    <td>
                      <input id='telephone' type='text' value='ejmplo@compañia.com' disabled>
                    </td>
                  </tr>               
                </table>
              </div>
              <div class='actions'>
                <div class='button-well'>
                  <a class='button button-primary' data-icon='v' href='#'>Modificar</a>
                </div>
              </div>
            </form>
          </div>  
<#macro javascripts>
    <!--Some .js file-->
</#macro>
</@layout.layout_app>

