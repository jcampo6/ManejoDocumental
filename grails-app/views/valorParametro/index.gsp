
<%@ page import="crmcuc.ValorParametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="maind">
		<g:set var="entityName" value="${message(code: 'valorParametro.label', default: 'ValorParametro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
            <div id="detvalp">
		<div id="list-valorParametro" class="content scaffold-list" role="main">
			<h3>Lista de Valores Parametros </h3>
                            <div class="nav" role="navigation">
			<a class="btn btn-primary" href="/crmcuc/valorParametro/create">Nuevo</a>			                                        
                       <hr style="bo:3px;border-color:#000;">
                        </div>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered" style="width:80%">
			<thead>
					<tr>
					<g:sortableColumn style="width:50px" property="id" title="${message(code: 'valorParametro.valor.label', default: 'Id')}" />
                                        
						<g:sortableColumn property="valor" title="${message(code: 'valorParametro.valor.label', default: 'Valor')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'valorParametro.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn style="width:50px" property="orden" title="${message(code: 'valorParametro.orden.label', default: 'Orden')}" />
					
						<g:sortableColumn  style="width:50px" property="estadoValorParametro" title="${message(code: 'valorParametro.estadoValorParametro.label', default: 'Estado')}" />
								
					</tr>
				</thead>
				<tbody>
				<g:each in="${valorParametroInstanceList}" status="i" var="valorParametroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					        <td>${valorParametroInstance?.id}</td>
                                                
						<td><g:link action="show" id="${valorParametroInstance.id}">${fieldValue(bean: valorParametroInstance, field: "valor")}</g:link></td>										
                                                
                                                <td>${fieldValue(bean: valorParametroInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: valorParametroInstance, field: "orden")}</td>
					
						<td>${fieldValue(bean: valorParametroInstance, field: "estadoValorParametro")}</td>				
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${valorParametroInstanceCount ?: 0}" />
			</div>
		</div>
                </div>
          <script>                    
             <!-- calcula el alto del bloque htm del detalle de encaberzado respectivo --> 
            var contenido= $("#detvalp");                       
            if (parent.IFRAME_DETALLE !=null)parent.IFRAME_DETALLE.height(contenido.height()+100);

        </script>
	</body>
</html>