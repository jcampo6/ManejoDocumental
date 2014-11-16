<%@ page import="crmcuc.Documento" %>



<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'nombre', 'error')} required">
	<label class="col-lg-2 control-label" for="nombre">
		<g:message code="documento.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="nombre" required="" value="${documentoInstance?.nombre}"/>
        </div>
</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'tipoDocumento', 'error')} required">
	<label class="col-lg-2 control-label" for="tipoDocumento">
		<g:message code="documento.tipoDocumento.label" default="Tipo Documento" />
		<span class="required-indicator">*</span>
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="tipoDocumento" required="" value="${documentoInstance?.tipoDocumento}"/>
        </div>
</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'fechaCreacion', 'error')} required">
	<label class="col-lg-2 control-label" for="fechaCreacion">
		<g:message code="documento.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
        <div class="form-group col-lg-10">
	<g:datePicker name="fechaCreacion" precision="day"  value="${documentoInstance?.fechaCreacion}"  />
        </div>
</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'estado', 'error')} required">
	<label class="col-lg-2 control-label" for="estado">
		<g:message code="documento.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="estado" required="" value="${documentoInstance?.estado}"/>
        </div>
</div>

<div class="fieldcontain ${hasErrors(bean: documentoInstance, field: 'procesos', 'error')} required">
	<label class="col-lg-2 control-label" for="procesos">
		<g:message code="documento.procesos.label" default="Procesos" />
		<span class="required-indicator">*</span>
	</label>
        <div class="form-group col-lg-10">
	<g:select id="procesos" name="procesos.id" from="${crmcuc.Proceso.list()}" optionKey="id" required="" value="${documentoInstance?.procesos?.id}" class="many-to-one"/>
        </div>
</div>

