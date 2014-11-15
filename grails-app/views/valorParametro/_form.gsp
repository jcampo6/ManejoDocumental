<%@ page import="crmcuc.ValorParametro" %>

<div id="contenido">
<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'valor', 'error')} ">
	<label class="col-lg-2 control-label"  for="valor">
		<g:message code="valorParametro.valor.label" default="Valor" />
		
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="valor"   value="${valorParametroInstance?.valor}"/>
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
		<g:message code="valorParametro.estadoValorParametro.label" default="Estado" />
		
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="estadoValorParametro" maxlength="1" value="${valorParametroInstance?.estadoValorParametro}"/>
        </div>
</div>
</div>
  <script>                    
             <!-- calcula el alto del bloque htm del detalle de encaberzado respectivo --> 
            var contenido= $("#contenido");                       
            if (parent.IFRAME_DETALLE !=null)parent.IFRAME_DETALLE.height(contenido.height()+100);

  </script>
