<%@ page import="crmcuc.Parametro" %>

<div class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'atributo', 'error')} ">
	<label class="col-lg-2 control-label" for="atributo">
		<g:message code="parametro.atributo.label" default="Atributo" />
		
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="atributo" maxlength="50" value="${parametroInstance?.atributo}"/>
</div>
        </div>

<div class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'descripcion', 'error')} ">
	<label class="col-lg-2 control-label" for="descripcion">
		<g:message code="parametro.descripcion.label" default="Descripcion" />
		
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="descripcion" maxlength="150" value="${parametroInstance?.descripcion}"/>
        </div>
  </div>

<div class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'estadoParametro', 'error')} ">
	<label class="col-lg-2 control-label" for="estadoParametro">
		<g:message code="parametro.estadoParametro.label" default="Estado Parametro" />
		
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="estadoParametro" maxlength="1" value="${parametroInstance?.estadoParametro}"/>
        </div>
</div>
<g:if test="${parametroInstance.id !=null}" > 
<hr style="margin-top:10px;margin-bottom:10px;"> 
     <iframe id="ifvalp" src="/crmcuc/valorParametro/index/${parametroInstance.id}" style="border:0;width:100%;" scrolling="no"></iframe>  
     <script>
     IFRAME_DETALLE=$("#ifvalp");
     </script>
</g:if>

