<#import "layout-app.ftl" as layout>

<#macro stylesheets>
    <!--Some .css file-->
    <style type="text/css">
      .tabs a {
          text-decoration : none;
      }
    </style>

</#macro>

<@layout.layout_app stylesheets=stylesheets javascripts=javascripts title="Llamar" section="call">

         <div class='well'>
            <h1>Centro de Llamadas</h1>
            <ul class='tabs'>
              <li class='active'>
                <a><span class="pictogram sizeIcon">&#128222;</span>Llamar</a>
              </li>
              <li>
                <a href='/delivery/form/file'><span class="pictogram sizeIcon">&#128203;</span>Llamar con Archivo</a>
              </li>
            </ul>
          </div>
          <div class='tab-content active' id='call'>
            <form id='formCall'>
              <div class='table-container table-form'>
                <table class='table'>
                  <tr>
                    <td>
                      <label>Número(s):</label>
                    </td>
                    <td>
                      <input name='numbers' id='numbersCall' class='required numbers-field' placeholder='5731xxxxxx,5731xxxxxx' type='text'>
                    </td>
                  </tr>
                  <!--<tr>
                    <td> </td>
                    <!--
                    <td>
                      <span class='source pictogram sizeIcon' type='tts' id='iconTts'>&#9000;</span>
                      <span class='source pictogram sizeIcon' type='audio' id='iconAudio'>&#9835;</span>
                    </td>
                      <label>Fuente del Mensaje:</label>
                      <small>Seleccione el origen del Mensaje a Transmitir (TTS, Fichero de audio)</small>
                    </td>
                    <td>

                      <select class='required' name='source' id='sourceCall'>
                          <option value='tts'>Sintetizar Texto</option>
                          <option value='audio'>Cargar Audio</option>
                        </select>
                    </td-->
                  </tr>-->
                  <tr class='audio'>
                    <td>
                      <label>Elija el Audio:</label>
                      <small>Formatos Permitidos (mp3,wav)</small>
                    </td>
                    <td>
                      <input data-customfile type='file' class="upload-audio">
                    </td>
                  </tr>
                  <!--
                  <tr class='tts'>
                    <td>
                      <label>Mensaje:</label>
                    </td>
                    <td>
                      <textarea name='message' id='message' class="tts-field" placeholder='Escriba su Mensaje'></textarea>
                    </td>
                  </tr>-->
                  <tr>
                    <td>
                      <label>Asunto de la(s) llamada(s):</label>
                    </td>
                    <td>
                      <input name='subject' id='subjectCall' class="subject-field" placeholder='Ingrese un Asunto que Identifique su(s) Llamada(s)' type='text'>
                    </td>
                  </tr>
                </table>
              </div>
              <div class='actions'>
                <div class='button-well'>
                  <div class='button button-primary send-button' data-icon='v' href='#'>Llamar</div>
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
      <script src="https://s3.amazonaws.com/atartel-static/js/upload-audio.js"></script>
      <script type="text/javascript" src="/js/delivery-form.js"></script>
      <script>
        new DeliveryForm();
      </script>
    </#macro>
</@layout.layout_app>

