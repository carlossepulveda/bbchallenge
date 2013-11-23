<#import "layout-app.ftl" as layout>

<#macro stylesheets>
    <link href="http://d2bk97uf0whptz.cloudfront.net/css/custom.css" media="screen" rel="stylesheet" type="text/css" />
</#macro>

<@layout.layout_app stylesheets=stylesheets javascripts=javascripts title="Mis Datos" section="credits">
    <div class='well'>
        <h1>Detalles de la Compra</h1>
    </div>
    <div class='tab-content active' id='buyDetails'>
        <form id='formBuyDetails'>
            <div class='table-container table-form'>
                <table class='table'>
                    <tr>
                        <td>
                            <label>Empresa/Nombre: *</label>
                        </td>
                        <td>
                            <input name='name' id='name' class='required' placeholder='Nombre de la Persona Jurídica o Natural' type='text'>
                        </td>
                    </tr>
                    <tr class='audio'>
                        <td>
                            <label>Tipo Identificación: *</label>
                        </td>
                        <td>
                            <select name="identificationType" id="identificationType" class="required">
                                <option value = "">Seleccione</option>
                                <option value = "N">NIT (Sin dígito de Verificación)</option>
                                <option value = "C">Cédula de Ciudadanía</option>
                                <option value = "E">Cédula de Extranjería</option>
                                <option value = "P">Pasaporte</option>
                                <option value = "O">Otro</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Número de Identificación *</label>
                        </td>
                        <td>
                            <input name='identificationNumber' id='identificationNumber' class="required" placeholder='Ingrese el número de identificación' type='text'>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Detalles de la Compra</label>
                        </td>
                        <td>
                            <table>
                                <tr>
                                    <td><small>Moneda: </small></td>
                                    <td><small>COP</small></td>
                                </tr>
                                <tr>
                                    <td><small>Cant. Créditos: </small></td>
                                    <td><small><cant id="countCredits">${countCredits}</cant></small></td>
                                </tr>
                                <tr>
                                    <td><small>Precio Unitario</small></td>
                                    <td><small>$ ${priceCreditWithoutIVA}</small></td>
                                </tr>
                                <tr>
                                    <td><small>Valor sin IVA: </small></td>
                                    <td><small>$ <price>${priceWithoutIVA}</price></small></td>
                                </tr>
                                <tr>
                                    <td><small>IVA: </small></td>
                                    <td><small>$ ${IVA}</small></td>
                                </tr>
                                <tr>
                                    <td><b>Total:<b></td>
                                    <td>$ ${totalPrice}</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div class='actions'>
                <div class='button-well'>
                    <div class='button button-primary send-button' data-icon='v' href='#'>Pagar</div>
                </div>
            </div>
        </form>
    </div>
    
</@layout.layout_app>

