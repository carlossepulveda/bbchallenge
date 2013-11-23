<#import "layout-app.ftl" as layout>

<#macro stylesheets>
      <link href="http://d2bk97uf0whptz.cloudfront.net/css/custom.css" media="screen" rel="stylesheet" type="text/css" />
</#macro>

<@layout.layout_app stylesheets=stylesheets javascripts=javascripts title="Historial de Llamadas" section="historyCall">

        <div class='well'>
          <h1>Historial de Llamadas</h1>
          <ul class='tabs'>
            <li class='active'>
              <a href='#myData'><span class="pictogram sizeIcon">&#59249;</span>Histórico</a>
            </li>
          </ul>
        </div>
        <div class='tab-content active' id='mydata'>
          <form id='formGetDelivery'>
            <div class='table-container table-form'>
            <!--
              <table class='table'>
                <tr>
                  <td>
                    <label>Desde</label>
                    <small>Seleccione la Fecha Anterior</small>
                    </td>
                  <td>
                    <input name='fromDate' class='required' id='fromDate' data-datepicker placeholder='Después de' type='text'>
                  </td>
                  <td>
                    <label>Hasta</label>
                    <small>Seleccione la Fecha más Reciente</small>
                  </td>
                  <td>
                    <input name='toDate' class='required' id='toDate' data-datepicker placeholder='Hasta' type='text'>
                  </td>
                  <td>
                    <div class='button-well'>
                      <a class='button button-primary' data-icon='v' href='#'>Filtrar</a>
                    </div>
                  </td>
                </tr>
                </table>
                -->
                <div>
                  <table class='table footable'>
                    <thead>
                      <tr>
                        <th>Referencia</th>
                        <th>Fecha</th>
                        <th>Origen</th>
                        <th>Estado</th>
                        <th>Asunto</th>
                      </tr>
                    </thead>
                    <tbody>
                      <#list deliveries as delivery>
                      <tr>
                        <td><a href="/delivery/${delivery.id}">${delivery.id}</a></td>
                        <td>${delivery.creationTime?datetime}</td>
                        <td>${delivery.source}</td>
                        <td>${delivery.state}</td>
                        <td><#if delivery.subject??>
                             ${delivery.subject}
                            <#else>
                              NA
                            </#if>
                        </td>
                      </tr>
                      </#list>
                    </tbody>
                  </table>
                </div>
              </div>
            </form>
          </div>
 <#macro javascripts>
 </#macro>
</@layout.layout_app>

