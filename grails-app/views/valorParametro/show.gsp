
<%@ page import="crmcuc.ValorParametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="maind">
		<g:set var="entityName" value="${message(code: 'valorParametro.label', default: 'ValorParametro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
			
		<div id="show-valorParametro" class="content scaffold-show" role="main">
			<h3>Información de Valor Parametro</h3>
                         <div class="nav" role="navigation">
			<a class="btn btn-success" href="/crmcuc/valorParametro/edit/${valorParametroInstance?.parametros?.id}">Editar</a>
                         
                        <a class="btn btn-default" href="/crmcuc/valorParametro/index/${valorParametroInstance?.parametros?.id}">Salir</a>
                        <hr style="bo:3px;border-color:#FF0000;">
                        </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			
				<g:if test="${valorParametroInstance?.valor}">
				<tr class="fieldcontain">
					<td id="valor-label" class="property-label" style="width:15%"><g:message code="valorParametro.valor.label" default="Valor" /></td>
					
						<td class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${valorParametroInstance}" field="valor"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${valorParametroInstance?.descripcion}">
				<tr class="fieldcontain">
					<td id="descripcion-label" class="property-label"><g:message code="valorParametro.descripcion.label" default="Descripcion" /></td>
					
						<td class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${valorParametroInstance}" field="descripcion"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${valorParametroInstance?.orden}">
				<tr class="fieldcontain">
					<td id="orden-label" class="property-label"><g:message code="valorParametro.orden.label" default="Orden" /></td>
					
						<td class="property-value" aria-labelledby="orden-label"><g:fieldValue bean="${valorParametroInstance}" field="orden"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${valorParametroInstance?.estadoValorParametro}">
				<tr class="fieldcontain">
					<td id="estadoValorParametro-label" class="property-label"><g:message code="valorParametro.estadoValorParametro.label" default="Estado" /></td>
					
						<td class="property-value" aria-labelledby="estadoValorParametro-label"><g:fieldValue bean="${valorParametroInstance}" field="estadoValorParametro"/></td>
					
				</tr>
				</g:if>
			
			
			
			</table>
			
		</div>
	</body>
</html>
