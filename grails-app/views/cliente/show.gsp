
<%@ page import="crmcuc.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main1">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
            <g:set var="generalService" bean="generalService"/>
	
	<h3>Información del Cliente </h3>
		  <div class="nav" role="navigation">
			<a class="btn btn-success" href="/crmcuc/cliente/edit/${clienteInstance?.id}">Editar</a>
                        <a class="btn btn-danger" href="#">Borrar</a>     
                        <a class="btn btn-default" href="/crmcuc/cliente/index">Salir</a>
                        <hr style="bo:3px;border-color:#FF0000;">
                        </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">			
				<g:if test="${clienteInstance?.razonSocial}">
				<tr class="fieldcontain">
					<td id="razonSocial-label"  class="property-label" style="width:15%"><g:message code="cliente.razonSocial.label" default="Razon Social" /></td>
					
					<td class="property-value"   aria-labelledby="razonSocial-label"><g:fieldValue bean="${clienteInstance}" field="razonSocial"/></td>	
				</tr>
				</g:if>
			
				<g:if test="${clienteInstance?.email}">
				<tr class="fieldcontain">
					<td id="email-label"  class="property-label"><g:message code="cliente.email.label" default="Email:" /></td>
					
					<td class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${clienteInstance}" field="email"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${clienteInstance?.direccion}">
				<tr class="fieldcontain">
					<td id="direccion-label" class="property-label"><g:message code="cliente.direccion.label" default="Direccion" /></td>
					
						<td class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${clienteInstance}" field="direccion"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${clienteInstance?.idTipoCliente}">
				<tr class="fieldcontain">
					<td id="idTipoCliente-label" class="property-label"><g:message code="cliente.idTipoCliente.label" default="Tipo" /></td>
					
					<td >${generalService.getValorParametro(clienteInstance?.idTipoCliente)}</td>
					
				</tr>
				</g:if>
			
				<g:if test="${clienteInstance?.idEstadoCliente}">
				<tr class="fieldcontain">
					<td id="idEstadoCliente-label" class="property-label"><g:message code="cliente.idEstadoCliente.label" default="Id Estado Cliente" /></td>
					
						<td class="property-value" aria-labelledby="idEstadoCliente-label"><g:fieldValue bean="${clienteInstance}" field="idEstadoCliente"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${clienteInstance?.nit}">
				<tr class="fieldcontain">
					<td id="nit-label" class="property-label"><g:message code="cliente.nit.label" default="Nit" /></td>
					
						<td class="property-value" aria-labelledby="nit-label"><g:fieldValue bean="${clienteInstance}" field="nit"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${clienteInstance?.telefonos}">
				<tr class="fieldcontain">
					<td id="telefonos-label" class="property-label"><g:message code="cliente.telefonos.label" default="Telefonos" /></td>
					
						<td class="property-value" aria-labelledby="telefonos-label"><g:fieldValue bean="${clienteInstance}" field="telefonos"/></td>
					
				</tr>
				</g:if>
			
			</table>
			
		</div>
	</body>
</html>
