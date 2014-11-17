<%@ page import="crmcuc.ValorParametro" %>



<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'valor', 'error')} ">
	<label class="col-lg-2 control-label" for="valor">
		<g:message code="valorParametro.valor.label" default="Valor" />
		
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="valor" maxlength="150" value="${valorParametroInstance?.valor}"/>
        </div>
</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'descripcion', 'error')} ">
	<label class="col-lg-2 control-label" for="descripcion">
		<g:message code="valorParametro.descripcion.label" default="Descripcion" />
		
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="descripcion" maxlength="150" value="${valorParametroInstance?.descripcion}"/>
        </div>
</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'orden', 'error')} ">
	<label class="col-lg-2 control-label" for="orden">
		<g:message code="valorParametro.orden.label" default="Orden" />
		
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="orden" maxlength="3" value="${valorParametroInstance?.orden}"/>
        </div>
</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'estadoValorParametro', 'error')} ">
	<label class="col-lg-2 control-label" for="estadoValorParametro">
		<g:message code="valorParametro.estadoValorParametro.label" default="Estado Valor Parametro" />
		
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="estadoValorParametro" maxlength="1" value="${valorParametroInstance?.estadoValorParametro}"/>
        </div>
</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'parametros', 'error')} required">
	<label class="col-lg-2 control-label" for="parametros">
		<g:message code="valorParametro.parametros.label" default="Parametros" />
		<span class="required-indicator">*</span>
	</label>
        <div class="form-group col-lg-10">
	<g:select id="parametros" name="parametros.id" from="${crmcuc.Parametro.list()}" optionKey="id" required="" value="${valorParametroInstance?.parametros?.id}" class="many-to-one"/>
        </div>
</div>

