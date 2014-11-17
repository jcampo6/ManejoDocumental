<%@ page import="crmcuc.ValorParametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="maind">
		<g:set var="entityName" value="${message(code: 'valorParametro.label', default: 'ValorParametro')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
	
		<div id="edit-valorParametro" class="content scaffold-edit" role="maind">
			<h3>Editar Valor Parametro</h3>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${valorParametroInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${valorParametroInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form class="form-horizontal" url="[resource:valorParametroInstance, action:'update']" method="PUT" >
				<fieldset class="buttons">
				 <g:actionSubmit class="btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				 <a class="btn btn-default" href="/crmcuc/valorParametro/index/${valorParametroInstance?.parametros?.id}">Salir</a>
                                </fieldset>
				<g:render template="form"/>				
			</g:form>
		</div>
	</body>
</html>

