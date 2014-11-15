
<%@ page import="crmcuc.Parametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main1">
		<g:set var="entityName" value="${message(code: 'parametro.label', default: 'Parametro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		

		<div id="list-parametro" class="content scaffold-list" role="main">
			<h3>Lista de Parametros</h3>
                        <div class="nav" role="navigation">
			<a class="btn btn-primary" href="/crmcuc/parametro/create">Nuevo</a>			                                        
                       <hr style="bo:3px;border-color:#FF0000;">
                        </div>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			<thead>
					<tr>
					
				 	   <td>Id </td>	
                                             <g:sortableColumn property="atributo" title="${message(code: 'parametro.atributo.label', default: 'Atributo')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'parametro.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="estadoParametro" title="${message(code: 'parametro.estadoParametro.label', default: 'Estado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${parametroInstanceList}" status="i" var="parametroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
					<td>${parametroInstance?.id}</td>	
                                        <td><g:link action="show" id="${parametroInstance.id}">${fieldValue(bean: parametroInstance, field: "atributo")}</g:link></td>

                                        <td>${fieldValue(bean: parametroInstance, field: "descripcion")}</td>

                                        <td>${fieldValue(bean: parametroInstance, field: "estadoParametro")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${parametroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
