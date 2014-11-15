<%@ page import="crmcuc.Cliente" %>


<g:set var="generalService" bean="generalService"/>
<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'razonSocial', 'error')} required">
	<label class="col-lg-2 control-label" for="razonSocial">
		<g:message code="cliente.razonSocial.label" default="Razon Social" />
		<span class="required-indicator">*</span>
	</label>
        <div class="form-group col-lg-10">
	<g:textField name="razonSocial" maxlength="100" required="" value="${clienteInstance?.razonSocial}"/>
        </div>
        </div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'email', 'error')} ">
	<label class="col-lg-2 control-label"  for="email">
		<g:message code="cliente.email.label" default="Email" />
		
	</label>
         <div class="col-lg-10 form-group">
	<g:field type="email" name="email" maxlength="120" value="${clienteInstance?.email}"/>
       </div>
         </div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'direccion', 'error')} ">
	<label class="col-lg-2 control-label" for="direccion">
		<g:message code="cliente.direccion.label" default="Direccion" />
		
	</label>
         <div class="col-lg-10 form-group">
	<g:textField name="direccion" maxlength="100" value="${clienteInstance?.direccion}"/>
        </div>
         </div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'idTipoCliente', 'error')} ">
	<label class="col-lg-2 control-label" for="idTipoCliente">
		<g:message code="cliente.idTipoCliente.label" default="Id Tipo Cliente" />
		
	</label>
         <div class="col-lg-10 form-group">
	<g:select  name="idTipoCliente" from="${generalService.getValorParametros(1)}"
                   optionKey="id"
                   value="${clienteInstance.idTipoCliente}"
                   noSelection="['':'Seleccione tipo']"
            />
                   </div>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'idEstadoCliente', 'error')} ">
	<label class="col-lg-2 control-label" for="idEstadoCliente">
		<g:message code="cliente.idEstadoCliente.label" default="Id Estado Cliente" />
		
	</label>
         <div class="col-lg-10 form-group">
	<g:field name="idEstadoCliente" type="number" value="${clienteInstance.idEstadoCliente}"/>
        </div>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nit', 'error')} ">
	<label class="col-lg-2 control-label" for="nit">
		<g:message code="cliente.nit.label" default="Nit" />
		
	</label>
         <div class="col-lg-10 form-group">
	<g:textField name="nit" value="${clienteInstance?.nit}"/>
        </div>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'telefonos', 'error')} ">
	<label class="col-lg-2 control-label" for="telefonos">
		<g:message code="cliente.telefonos.label" default="Telefonos" />
		
	</label>
         <div class="col-lg-10 form-group">
	<g:textField name="telefonos" value="${clienteInstance?.telefonos}"/>
        </div>
</div>

