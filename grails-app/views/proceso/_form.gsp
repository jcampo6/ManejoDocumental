<%@ page import="crmcuc.Proceso" %>



<div class="fieldcontain ${hasErrors(bean: procesoInstance, field: 'nombre', 'error')} required">
	<label class="col-lg-2 control-label" for="nombre">
		<g:message code="proceso.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="nombre" required="" value="${procesoInstance?.nombre}"/>
        </div>
</div>

<div class="fieldcontain ${hasErrors(bean: procesoInstance, field: 'macroProceso', 'error')} required">
	<label class="col-lg-2 control-label" for="macroProceso">
		<g:message code="proceso.macroProceso.label" default="Macro Proceso" />
		<span class="required-indicator">*</span>
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="macroProceso" required="" value="${procesoInstance?.macroProceso}"/>
        </div>
</div>

<div class="fieldcontain ${hasErrors(bean: procesoInstance, field: 'documentos', 'error')} ">
	<label class="col-lg-2 control-label" for="documentos">
		<g:message code="proceso.documentos.label" default="Documentos" />		
	</label>
        
	
<g:each in="${procesoInstance?.documentos}" var="d">
    <g:link controller="documento" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link>
</g:each>
<div class="form-group col-lg-10">
<g:link controller="documento" action="create" params="['proceso.id': procesoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'documento.label', default: 'Documento')])}</g:link>
</div>

</div>

