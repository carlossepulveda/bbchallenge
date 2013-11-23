<#import "layout-app.ftl" as layout>

<#macro stylesheets>
  <link href="http://d2bk97uf0whptz.cloudfront.net/css/custom.css" media="screen" rel="stylesheet" type="text/css" />
</#macro>

<@layout.layout_app stylesheets=stylesheets javascripts=javascripts title="Consulta de Delivery" section="getDelivery">
      <div id = 'contentShowDelivery'>
        <div class='well'>
          <div style="float: right">
                      <div class="num-container">
                          <div class="total" style="font-size:34px;color:blue">${presenter.delivery.total}</div>
                          <div>Total</div>
                      </div>
                      <div class="num-container">
                          <div class="success" style="font-size:34px;color:green">${presenter.delivery.numSuccess}</div>
                          <div>Efectuadas</div>
                      </div>
                      <div class="num-container">
                          <div class="unrealized" style="font-size:34px;color:red">${presenter.delivery.numUnrealized}</div>
                          <div>No efectuadas</div>
                      </div>
                      <div>
                        <div class="label delivery-state ${presenter.state}" style="float: right; width:96%; text-align:center">${presenter.stateFormatted}</div>
                      </div>
          </div>

          <h1>Referencia: <div id = 'idDelivery'>${presenter.delivery.id}</div></h1>
          <h3>Asunto : ${presenter.delivery.subject?if_exists}</h3>
          <ul class='tabs'>
            <li>
              <a href='/delivery'><span class="pictogram sizeIcon">&#59249;</span>Histórico</a>
            </li>
            <li class='active'>
              <a href='#myDelivery'><span class="pictogram sizeIcon">&#59249;</span>Seguimiento de Llamadas</a>
            </li>
          </ul>
        </div>
        <div class='tab-content active' id='myDelivery'>
                  <style>
                    .CREATED {
                      background-color: rgb(223, 200, 50)!important;
                    }
                    .RUNNING {
                      background-color: rgb(223, 200, 50)!important;
                    }
                    .FINISHED {
                    }
                    .FAILED {
                      background-color: rgb(132, 3, 16)!important;
                    }
                    .num-container {
                          border-style: solid;
                          border-color: rgba(230,230,230,0.8);
                          border-width: 1px;
                          border-radius: 15px;
                          height:55px;
                          width:100px;
                          float:left;
                          margin:10px;
                          text-align:center;
                    }

                    .description-container {
                          border-style: solid;
                          border-color: rgba(230,230,230,0.8);
                          border-width: 1px;
                          border-radius: 6px;
                          background-color : rgba(235, 235, 235, 0.5);
                          margin-bottom : 15px;
                    }
                    .description-content {
                        margin : 10px;
                    }
                    .description-content .label {
                        font-weight : bold!important;
                    }
                  </style>
          <form id='formGetDelivery'>
                  <div class="description-container">
                    <div class="description-content">
                          <div style="margin-top: 10px; width: 100%;"><div class="label">Fecha</div> ${presenter.delivery.creationTime?string("dd/MM/yyyy HH:mm:ss a")}</div>
                          <#if originalFilePathNumbers ??>
                            <div style="margin-top: 6px"><div class="label">Fuente</div> ${presenter.delivery.sourceFormatted}</div>
                          </#if>
                          <div style="margin-top: 6px"><div class="label">Audio</div> ${presenter.delivery.originalFilePathSound}</div>
                          <#if presenter.delivery.subject ??>
                              <div style="margin-top: 6px">
                                  <div class="label">Asunto</div> ${presenter.delivery.subject}</div>
                          </#if>
                    </div>
                  </div>

                <table id='callsTable' class='table footable'>
                  <thead>
                    <tr>
                      <th># Telefono</th>
                      <th>Estado</th>
                      <th>¿Contestada?</th>
                      <th>Duracion</th>
                    </tr>
                  </thead>
                  <tbody class='dataRow'>
                    <#list presenter.calls as c>
                      <tr id="${c.id}">
                        <td class="to" >${c.to}</td>
                        <td class="state" >${c.stateMessage}</td>
                        <td class="answered" >${c.isAnswered()?string("Si","No")}</td>
                        <td class="duration" >${c.duration?if_exists}</td>
                      </tr>
                    </#list>
                  </tbody>
                </table>
              </div>
            </div>
          </form>
        </div>
      </div>
    <#macro javascripts>
      <!--Some .js file-->
      <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/underscore-1.4.2.min.js"></script>
      <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/backbone-0.9.2.min.js"></script>
      <script type="text/javascript" src="/js/delivery-show.js"></script>      
      <script>
        var delivery = ${presenter.toString()};
        new DeliveryShow({delivery : delivery});
      </script>
    </#macro>
</@layout.layout_app>

