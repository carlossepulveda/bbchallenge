<#import "layout-site.ftl" as layout>

<#macro stylesheets>
    <!--Some .css file-->
</#macro>

<@layout.layout_site stylesheets=stylesheets javascripts=javascripts title="Error" section="error">

<section class="page-not-found">
	<div class="row">
		<div class="span6 offset1">
			<div class="page-not-found-main">
			<#assign codeError = code?string>
			<#switch codeError>
				<#case "404">
					<h2>404 <i class="icon-file"></i></h2>
					<p>Lo sentimos, el recurso solicitado no existe.</p>
				<#break>
				<#case "409">
					<h2>409 <i class="icon-file"></i></h2>
					<p>Lo sentimos, se ha identificado un conflicto.</p>
				<#break>
				<#case "400">
					<h2>400 <i class="icon-file"></i></h2>
					<p>Lo sentimos, la petición es errónea.</p>
				<#break>
				<#default>
					<h2>500 <i class="icon-file"></i></h2>
					<p>Lo sentimos, ha ocurrido un error no contemplado.</p>
			</#switch>				
			</div>
		</div>
		<div class="span4">
			<h4>Enlaces del Sitio</h4>
			<ul class="nav nav-list primary">
				<li><a href="/">Inicio</a></li>
				<li><a href="/about">Acerca de Nosotros</a></li>
				<li><a href="/services">Portafolio</a></li>
				<li><a href="/prices">Precios</a></li>
				<li><a href="/contact">Contáctanos</a></li>
			</ul>
		</div>
	</div>
</section>

</@layout.layout_site>