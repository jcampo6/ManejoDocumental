
<%@ page import="crmcuc.Parametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main1">
		<g:set var="entityName" value="${message(code: 'parametro.label', default: 'Parametro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		
		<div id="show-parametro" class="content scaffold-show" role="main">
			<h3>Información del Parametro</h3>
                          <div class="nav" role="navigation">
			<a class="btn btn-success" href="/crmcuc/parametro/edit/${parametroInstance?.id}">Editar</a>
                        <a class="btn btn-danger" href="#">Borrar</a>     
                        <a class="btn btn-default" href="/crmcuc/parametro/index">Salir</a>
                        <hr style="bo:3px;border-color:#FF0000;">
                        </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			
				<g:if test="${parametroInstance?.atributo}">
				<tr class="fieldcontain">
					<td id="atributo-label" class="property-label" style="width:15%"><g:message code="parametro.atributo.label" default="Atributo" /></td>
					
						<td class="property-value" aria-labelledby="atributo-label"><g:fieldValue bean="${parametroInstance}" field="atributo"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${parametroInstance?.descripcion}">
				<tr class="fieldcontain">
					<td id="descripcion-label" class="property-label"><g:message code="parametro.descripcion.label" default="Descripcion" /></td>
					
						<td class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${parametroInstance}" field="descripcion"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${parametroInstance?.estadoParametro}">
				<tr class="fieldcontain">
					<td id="estadoParametro-label" class="property-label"><g:message code="parametro.estadoParametro.label" default="Estado Parametro" /></td>
					
						<td class="property-value" aria-labelledby="estadoParametro-label"><g:fieldValue bean="${parametroInstance}" field="estadoParametro"/></td>
					
				</tr>
				</g:if>		
			
			</table>
			
		</div>
                <g:if test="${parametroInstance.id !=null}" > 
           <iframe id="ifvalp" src="/crmcuc/valorParametro/index/${parametroInstance.id}" style="border:0;width:100%;" scrolling="no"></iframe>  
            <script>
            IFRAME_DETALLE=$("#ifvalp");
            </script>
</g:if>
	</body>
</html>
