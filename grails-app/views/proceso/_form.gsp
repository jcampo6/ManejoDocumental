<%@ page import="crmcuc.Proceso" %>



<div class="fieldcontain ${hasErrors(bean: procesoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="proceso.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${procesoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: procesoInstance, field: 'macroProceso', 'error')} required">
	<label for="macroProceso">
		<g:message code="proceso.macroProceso.label" default="Macro Proceso" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="macroProceso" required="" value="${procesoInstance?.macroProceso}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: procesoInstance, field: 'documentos', 'error')} ">
	<label for="documentos">
		<g:message code="proceso.documentos.label" default="Documentos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${procesoInstance?.documentos?}" var="d">
    <li><g:link controller="documento" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="documento" action="create" params="['proceso.id': procesoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'documento.label', default: 'Documento')])}</g:link>
</li>
</ul>


</div>

