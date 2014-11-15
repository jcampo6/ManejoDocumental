<%@ page import="crmcuc.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main1">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
	
		<div id="edit-cliente" class="content scaffold-edit" role="main">
			<h3>Editar Cliente</h3>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${clienteInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${clienteInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form class="form-horizontal"  url="[resource:clienteInstance, action:'update']" method="PUT" >

                                <g:actionSubmit class="btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                                <a class="btn btn-default" href="/crmcuc/cliente/index">Salir</a>
                                <br><br>
                                 
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				
			</g:form>
		</div>
	</body>
</html>
