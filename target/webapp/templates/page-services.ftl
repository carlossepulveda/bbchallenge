<#import "layout-site.ftl" as layout>
<#macro contentSession>
    <#if session = "enabled">
        <li><span>Bienvenido <b>${user.getName()}</b><span></li>
        <li><a href = "/delivery/form">Ir a la <b>Aplicación</b></a></li>
    <#else>
        <li><a href="/login"><i class="icon-angle-right"></i>Ingreso</a></li>
        <li><a href="/register"><i class="icon-angle-right"></i>Regístrate</a></li>
    </#if>
</#macro>

<@layout.layout_site title="Servicios" section="services">

<h2>¿Qué <strong>Ofrecemos</strong>?</h2>

<div class="row">
    <div class="span10">
        <p class="leadServicios">Hoy en día el <span class="alternative-font">tiempo</span> es crucial para cualquier compañía.

        Estamos seguros que notificar a tus clientes es una tarea que puedes <span class="alternative-font">automatizar</span>, por ello te ofrecemos una plataforma, <span class="alternative-font">fácil y rápida </span> que usa  la telefonía móvil y fija para informar lo que desees. <br><br>
        <span class="alternative-font"><a href="/demo">Anímate!!!</a></span> Programa y configura tus  <span class="alternative-font">llamadas masivas</span>, el día y la hora que desees. Haz que tus clientes se enteren de tus promociones, eventos, ofertas, noticias y demás, haciéndolos sentir parte de tu familia.</p>
    </div>
</div>

<hr>

<div class="row pull-top">
    <div class="span12 span8Services">
        <h2>Nuestros <strong>Servicios</strong> y Posibles <strong>Usos</strong></h2>
        <div class="row">
            <div class="span6">
                <div class="feature-box">
                    <div class="feature-box-info">
                        <h4 class="shorter">Notificaciones Masivas Telefónicas</h4>
                        <p class="tall">Este servicio permite transmitir tus mensajes masivamente a través de nuestra plataforma, comunicando la información de manera eficáz y oportuna, ahorrando costos e infraestructura en tu empresa.
                        </div>
                    </div>
                </div>
                <div class="span6">
                <div class="feature-box">
                    <div class="feature-box-info">
                        <h4 class="shorter">Posibles Usos</h4>
                        <ul>
                            <li>TeleMarketing</li>
                            <li>Cobranza</li>
                            <li>Promociones</li>
                            <li>Eventos</li>
                            <li>Recordatorios</li>
                            <li>Noticias</li>
                            <li>Dias Especiales</li>
                        </ul>
                        Entre otras muchas posibilidades adaptadas a tu empresa.
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>

</@layout.layout_site>