<#import "layout-site.ftl" as layout>

<#macro stylesheets>
	<style>
	    .error {
		    border: 1px solid #FF0000 !important;
		    color: #EB3800 !important;
		}
	</style>
</#macro>

<@layout.layout_site stylesheets=stylesheets javascripts=javascripts title="Precios" section="prices">
	<div class="row">
	    <div class="span12">
	        <p class="leadServicios">
	            A continuación se encuentran los diferentes planes dispuestos por Atartel para la adquisición de créditos. En el encabezado encontrarán la categoría del plan y el respectivo precio unitario del crédito. <span class="alternative-font">Nota: </span> Cada precio de los diferentes planes corresponde a <span class="alternative-font">pesos Colombianos</span> y <span class="alternative-font">ya incluyen IVA </span> ; además 1 crédito = 1 minuto.
	        </p>
	    </div>
	</div>
    <div class="row">
		<div class="pricing-table">
			<div class="span3 center">
				<div class="plan">
					<h3>Silver<span>$ 230</span></h3>									
					<ul>
						<li><b>Rango de Créditos</b> 1000 - 4999</li>
						<li><b>Cantidad a Comprar</b> <input id="countSilver" class="count input-small" type="text" maxlength="4" align="center" price="230" min="1000" max="4999" value="1000"></li>
						<li><b>Total </b> $ <price id = "totalcountSilver">230.000</price> COP</li>
					</ul>
					<#if user ??>
						<button class="buy btn btn-large btn-primary" typeCount="countSilver">Comprar</button>
		            </#if>
				</div>
			</div>
			<div class="span3 center">
				<div class="plan most-popular">
					<div class="plan-ribbon-wrapper"><div class="plan-ribbon">Popular</div></div>
					<h3>Gold<span>$ 220</span></h3>
					<ul>
						<li><b>Rango de Créditos</b> 5000 - 14999</li>
						<li><b>Cantidad a Comprar</b> <input id="countGold" class=" count input-small" type="text" maxlength="5" align="center" price="220" min="5000" max="14999" value="5000"></li>
						<li><b>Total </b> $ <price id = "totalcountGold">1.100.000</price> COP</li>
					</ul>
					<#if user ??>
						<button class="buy btn btn-large btn-primary" typeCount="countGold">Comprar</button>
		            </#if>									
				</div>
			</div>
			<div class="span3 center">
				<div class="plan">
					<h3>Platinum<span>$ 210</span></h3>
					<ul>
						<li><b>Rango de Créditos</b> 15000 - 44999</li>
						<li><b>Cantidad a Comprar</b> <input id="countPlatinum" class=" count input-small" type="text" maxlength="5" align="center" price="210" min="15000" max="44999" value="15000"></li>
						<li><b>Total </b> $ <price id = "totalcountPlatinum">3.150.000</price> COP</li>
					</ul>
					<#if user ??>
						<button class="buy btn btn-large btn-primary" typeCount="countPlatinum">Comprar</button>
		            </#if>
				</div>
			</div>
			<div class="span3 center">
				<div class="plan">
					<h3>Infinite<span>$ X </span></h3>
					<ul>
						<li><b>Rango de Créditos</b> 45000 - Infinito </li>
						<li><b>Planes Empresariales  </b><input class="input-small" type="text" value="Post-Pago" readonly></li>
						<#if user ??>
						<li><b>Corte Mensual</b></li>
					</ul>
					<a class="btn btn-large btn-primary" href="/contact">Contáctanos</a>
					<#else>
					    <li><a href="/contact">Contáctanos</a></li>
					</#if>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
	    <div class="span12">
	        <p class="leadServicios">
	           <span class="alternative-font">Importante: </span> Para que se pueda llevar a cabo la compra de créditos es necesario poseer una cuenta y estar logueado.
	        </p>
	    </div>
	</div>

	<#macro javascripts>
        <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/underscore-1.4.2.min.js"></script>
        <script type="text/javascript" src="http://d2bk97uf0whptz.cloudfront.net/js/libs/backbone-0.9.2.min.js"></script>
        <script type="text/javascript" src="/js/util.js"></script>
        <script type="text/javascript" src="/js/prices.js"></script>
        <script type="text/javascript">
            new PricesView();
        </script>
    </#macro>

</@layout.layout_site>
