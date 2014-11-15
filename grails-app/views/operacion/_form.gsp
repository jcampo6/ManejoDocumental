<%@ page import="crmcuc.Operacion" %>



<div class="fieldcontain ${hasErrors(bean: operacionInstance, field: 'operacion', 'error')} required">
	<label for="operacion">
		<g:message code="operacion.operacion.label" default="Operacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="operacion" maxlength="100" required="" value="${operacionInstance?.operacion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operacionInstance, field: 'estadoOperacion', 'error')} required">
	<label for="estadoOperacion">
		<g:message code="operacion.estadoOperacion.label" default="Estado Operacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoOperacion" from="${operacionInstance.constraints.estadoOperacion.inList}" required="" value="${operacionInstance?.estadoOperacion}" valueMessagePrefix="operacion.estadoOperacion"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operacionInstance, field: 'opcion', 'error')} required">
	<label for="opcion">
		<g:message code="operacion.opcion.label" default="Opcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="opcion" name="opcion.id" from="${crmcuc.Opcion.list()}" optionKey="id" required="" value="${operacionInstance?.opcion?.id}" class="many-to-one"/>

</div>

