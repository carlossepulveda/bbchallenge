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


            <style>
                    .num-container {
                          font-size:18px!important;
                          border-style: solid;
                          border-color: rgba(230,230,230,0.8);
                          border-width: 1px;
                          border-radius: 15px;
                          height:40px;
                          width:70px;
                          float:left;
                          margin:2px;
                          text-align:center;
                    }

                    .num-container:hover {
                      cursor : pointer;
                    }

                    .description-container {
                          border-style: solid;
                          border-color: rgba(230,230,230,0.8);
                          border-width: 1px;
                          border-radius: 6px;
                          background-color : rgba(235, 235, 235, 0.5);
                    }
                    .description-content {
                        margin : 1px;
                    }
                    .description-content .label {
                        font-weight : bold!important;
                    }
                  </style>
         <div class='well'>
            <h1>Centro de Llamadas</h1>
            <ul class='tabs'>
              <li>
                <a href='/delivery/form'><span class="pictogram sizeIcon">&#128222;</span>Llamar</a>
              </li>
              <li class="active">
                <a href='/delivery/form/file'><span class="pictogram sizeIcon">&#128203;</span>Llamar con Archivo</a>
              </li>
            </ul>
          </div>

          <div class='tab-content active' id='callFile'>
            <form id='form-call-from-file'>
              <div class='table-container table-form'>
                <table class='table'>
                  <tr>
                    <td>
                      <label>Archivo con numeros</label>
                    </td>
                    <td class="load-file" style="width: 300px!important">
                          <input data-customfile type='file' class="upload-file" text="${originalFileName?if_exists}">
                    </td>
                    <td style="height:40px">
                      <div class="num-file-description" style="position:absolute!important; margin-top: -5px; display:<#if originalFileName ??> block<#else>none</#if>">
                                  <div class="num-container">
                                      <div class="total" style="color:blue; margin-top: 1px">${totalRows?if_exists}</div>
                                      <div style="font-size:10px">Total</div>
                                  </div>
                                  <div class="num-container">
                                      <div class="valid" style="color:green; margin-top: 1px">${validRows?if_exists}</div>
                                      <div style="font-size:10px">Válidas</div>
                                  </div>
                                  <div class="num-container">
                                      <div class="invalid" style="color:red; margin-top: 1px">${invalidRows?if_exists}</div>
                                      <div style="font-size:10px">Inválidas</div>
                                  </div>
                      </div>
                    </td>
                  </tr>
                  <!--
                  <tr>
                    <td> </td>
                    <td>
                      <a href="#"><span class='source pictogram sizeIcon' type='tts' id='iconTts'>&#9000;</span><a>
                      <a href="#"><span class='source pictogram sizeIcon' type='audio' id='iconAudio'>&#9835;</span><a>
                    </td>
                  </tr>-->
                  <tr class='audio'>
                    <td>
                      <label>Elija el Audio:</label>
                      <small>Formatos Permitidos (mp3,wav)</small>
                    </td>
                    <td style="width: 300px!important">
                      <input data-customfile type='file' class="upload-audio" text="${originalSoundFileName?if_exists}">
                    </td>
                    <td></td>
                  </tr>
                  <tr class='tts' style="display:none">
                    <td>
                      <label>Mensaje:</label>
                    </td>
                    <td>
                      <textarea name='message' id='message' class="tts-field" placeholder='Escriba su Mensaje'></textarea>
                    </td>
                  </tr>
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
                  <a class='button button-primary send-button' data-icon='v' href='#'>Llamar</a>
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
      <script src="/js/util.js"></script>
      <script src="/js/upload-audio.js"></script>
      <script src="/js/delivery-form-file.js"></script>
      <script>
        new DeliveryFormFile();
      </script>
    </#macro>
</@layout.layout_app>