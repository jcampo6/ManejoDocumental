
<%@ page import="crmcuc.Documento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main1">
		<g:set var="entityName" value="${message(code: 'documento.label', default: 'Documento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="list-documento" class="content scaffold-list" role="main">
			<h1 Style="font-style:italic;">Lista de Documentos</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
                        <div class="nav" role="navigation">
			<a class="btn btn-primary" href="/crmcuc/documento/create">Nuevo</a>			                                        
                        <hr style="bo:3px;border-color:#FF0000;">
                        </div>
			<table class="table table-bordered">
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'documento.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="tipoDocumento" title="${message(code: 'documento.tipoDocumento.label', default: 'Tipo Documento')}" />
					
						<g:sortableColumn property="fechaCreacion" title="${message(code: 'documento.fechaCreacion.label', default: 'Fecha Creacion')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'documento.estado.label', default: 'Estado')}" />
					
						<th><g:message code="documento.procesos.label" default="Procesos" /></th>
					
						<g:sortableColumn property="versionDoc" title="${message(code: 'documento.versionDoc.label', default: 'Version Doc')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${documentoInstanceList}" status="i" var="documentoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${documentoInstance.id}">${fieldValue(bean: documentoInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: documentoInstance, field: "tipoDocumento")}</td>
					
						<td><g:formatDate date="${documentoInstance.fechaCreacion}" /></td>
					
						<td>${fieldValue(bean: documentoInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: documentoInstance, field: "procesos")}</td>
					
						<td>${fieldValue(bean: documentoInstance, field: "versionDoc")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${documentoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
