
<%@ page import="crmcuc.Proceso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main1">
		<g:set var="entityName" value="${message(code: 'proceso.label', default: 'Proceso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<%--<a href="#list-proceso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div> --%>
		<div id="list-proceso" class="content scaffold-list" role="main">
			<h1 Style="font-style:italic;">Lista de Procesos</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
                        <div class="nav" role="navigation">
			<a class="btn btn-primary" href="/crmcuc/proceso/create">Nuevo</a>			                                        
                        <hr style="bo:3px;border-color:#FF0000;">
                        </div>
			<table class="table table-bordered">
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'proceso.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="macroProceso" title="${message(code: 'proceso.macroProceso.label', default: 'Macro Proceso')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${procesoInstanceList}" status="i" var="procesoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${procesoInstance.id}">${fieldValue(bean: procesoInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: procesoInstance, field: "macroProceso")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${procesoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
