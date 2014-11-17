
<%@ page import="crmcuc.Proceso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main1">
		<g:set var="entityName" value="${message(code: 'proceso.label', default: 'Proceso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<h3>Información del Proceso </h3>
		<div class="nav" role="navigation">
                    <a class="btn btn-success" href="/crmcuc/proceso/edit/${procesoInstance?.id}">Editar</a>
                    <a class="btn btn-danger" href="#">Borrar</a>     
                    <a class="btn btn-default" href="/crmcuc/proceso/index">Salir</a>
                    <hr style="bo:3px;border-color:#FF0000;">
		</div>
		<div id="show-proceso" class="content scaffold-show" role="main">			
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			
				<g:if test="${procesoInstance?.nombre}">
				<tr class="fieldcontain">
					<td id="nombre-label" class="property-label" style="width:15%"><g:message code="proceso.nombre.label" default="Nombre" /></td>
					
                                        <td class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${procesoInstance}" field="nombre"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${procesoInstance?.macroProceso}">
				<tr class="fieldcontain">
					<td id="macroProceso-label" class="property-label"><g:message code="proceso.macroProceso.label" default="Macro Proceso" /></td>
					
						<td class="property-value" aria-labelledby="macroProceso-label"><g:fieldValue bean="${procesoInstance}" field="macroProceso"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${procesoInstance?.documentos}">
				<tr class="fieldcontain">
					<td id="documentos-label" class="property-label"><g:message code="proceso.documentos.label" default="Documentos" /></td>
					
						<g:each in="${procesoInstance.documentos}" var="d">
						<td class="property-value" aria-labelledby="documentos-label"><g:link controller="documento" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></td>
						</g:each>
					
				</tr>
				</g:if>
			
			</ol>
			<%--<g:form url="[resource:procesoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${procesoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>--%>
		</div>
	</body>
</html>
