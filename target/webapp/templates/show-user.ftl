<#import "layout-app.ftl" as layout>

<#macro stylesheets>
    <!--Some .css file-->
</#macro>

<@layout.layout_app stylesheets=stylesheets javascripts=javascripts title="Mis Datos" section="user">
      <div class='well'>
        <h1>Mis Datos</h1>
        <ul class='tabs'>
            <li class='active'>
              <a href='#myData'><span class="pictogram sizeIcon">&#59170;</span>Mis Datos</a>
            </li>
            <li>
                <a href='#changePass'><span class="pictogram sizeIcon">&#128273;</span>Cambiar Contraseña</a>
            </li>
          </ul>
        </div>
          <div class='tab-content active' id='mydata'>
            <form id='formMyData'>          
              <div class='table-container table-form'>              
                <table class='table'>            
                  <tr>
                    <td>
                      <label>Correo:</label>
                      <small>Con este correo ingresa a la Aplicación</small>
                    </td>
                    <td>
                      <input name='email' id='emailUser' type='text' class='required' value='xxxxxxxx@xxxxx.xx'>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <label>Nombre:</label>
                    </td>
                    <td>
                      <input name='name' id='nameUser' type='text' value='pepito perez'>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <label>Contraseña API:</label>
                      <small>Para propósito de autenticación, no es útil para ingresar</small>
                    </td>
                    <td>
                      <input id='passApiUser' type='text' value='aHgUgTVhhdj23Husk' disabled>
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
          <div class='tab-content' id='changePass'>
            <form id='formChangePass'>
              <div class='table-container table-form'>
                <table class='table'>               
                  <tr>
                    <td>
                      <label>Actual</label>
                    </td>
                    <td>
                      <input name='yourpass' placeholder='Ingrese su Contraseña Actual' id='yourPassUser' type='password' class='required'>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <label>Nueva</label>
                    </td>
                    <td>
                      <input name='newpass' placeholder='Ingrese su Nueva Contraseña' type='password' id='newPassUser' class='required'>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <label>Confirmar</label>
                    </td>
                    <td>
                      <input name='confirmpass' placeholder='Confirme su Nueva Contraseña' type='password' id='confirmNewPass' class='required'>
                    </td>
                  </tr>
                </table>
              </div>
              <div class='actions'>
                <div class='button-well'>
                  <a class='button button-primary' data-icon='v' href='#'>Guardar</a>
                </div>
              </div>
            </form>
          </div>   
<#macro javascripts>
    <!--Some .js file-->
</#macro>
</@layout.layout_app>

