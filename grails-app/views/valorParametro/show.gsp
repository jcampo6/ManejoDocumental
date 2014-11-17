
<%@ page import="crmcuc.ValorParametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="maind">
		<g:set var="entityName" value="${message(code: 'valorParametro.label', default: 'ValorParametro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-valorParametro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<a class="btn btn-success" href="/crmcuc/valorParametro/edit/${clienteInstance?.id}">Editar</a>
                        <a class="btn btn-danger" href="#">Borrar</a>     
                        <a class="btn btn-default" href="/crmcuc/valorParametro/index">Salir</a>
                        <hr style="bo:3px;border-color:#FF0000;">
		</div>
		
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
                        
			<table class="table">			
			
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
					<td id="estadoValorParametro-label" class="property-label"><g:message code="valorParametro.estadoValorParametro.label" default="Estado Valor Parametro" /></td>
					
						<td class="property-value" aria-labelledby="estadoValorParametro-label"><g:fieldValue bean="${valorParametroInstance}" field="estadoValorParametro"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${valorParametroInstance?.parametros}">
				<tr class="fieldcontain">
					<td id="parametros-label" class="property-label"><g:message code="valorParametro.parametros.label" default="Parametros" /></td>
					
						<td class="property-value" aria-labelledby="parametros-label"><g:link controller="parametro" action="show" id="${valorParametroInstance?.parametros?.id}">${valorParametroInstance?.parametros?.encodeAsHTML()}</g:link></td>
					
				</tr>
				</g:if>
			
                        </table>
			<g:form url="[resource:valorParametroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${valorParametroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
	</body>
</html>
