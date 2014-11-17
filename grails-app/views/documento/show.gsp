
<%@ page import="crmcuc.Documento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main1">
		<g:set var="entityName" value="${message(code: 'documento.label', default: 'Documento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-documento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>					
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			
				<g:if test="${documentoInstance?.nombre}">
				<tr class="fieldcontain">
					<td id="nombre-label" class="property-label"><g:message code="documento.nombre.label" default="Nombre" /></td>
					
						<td class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${documentoInstance}" field="nombre"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${documentoInstance?.tipoDocumento}">
				<tr class="fieldcontain">
					<td id="tipoDocumento-label" class="property-label"><g:message code="documento.tipoDocumento.label" default="Tipo Documento" /></td>
					
						<td class="property-value" aria-labelledby="tipoDocumento-label"><g:fieldValue bean="${documentoInstance}" field="tipoDocumento"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${documentoInstance?.fechaCreacion}">
				<tr class="fieldcontain">
					<td id="fechaCreacion-label" class="property-label"><g:message code="documento.fechaCreacion.label" default="Fecha Creacion" /></td>
					
						<td class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${documentoInstance?.fechaCreacion}" /></td>
					
				</tr>
				</g:if>
			
				<g:if test="${documentoInstance?.estado}">
				<tr class="fieldcontain">
					<td id="estado-label" class="property-label"><g:message code="documento.estado.label" default="Estado" /></td>
					
						<td class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${documentoInstance}" field="estado"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${documentoInstance?.procesos}">
				<tr class="fieldcontain">
					<td id="procesos-label" class="property-label"><g:message code="documento.procesos.label" default="Procesos" /></td>
					
						<td class="property-value" aria-labelledby="procesos-label"><g:link controller="proceso" action="show" id="${documentoInstance?.procesos?.id}">${documentoInstance?.procesos?.encodeAsHTML()}</g:link></td>
					
				</tr>
				</g:if>
			
				<g:if test="${documentoInstance?.versionDoc}">
				<tr class="fieldcontain">
					<td id="versionDoc-label" class="property-label"><g:message code="documento.versionDoc.label" default="Version Doc" /></td>
					
						<td class="property-value" aria-labelledby="versionDoc-label"><g:fieldValue bean="${documentoInstance}" field="versionDoc"/></td>
					
				</tr>
				</g:if>
			
			</ol>
			<g:form url="[resource:documentoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${documentoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
	</body>
</html>
