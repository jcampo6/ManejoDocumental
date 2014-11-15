package crmcuc
import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(SeguridadService)
class SeguridadServiceSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }
    SeguridadService seguridadService
    void "test autorizacion"() {
        expect:
         seguridadService.autorizacion(1,'/crmcuc/cliente/index')==true
         seguridadService.autorizacion(1,'/crmcuc/contacto/index')==false
    }
}
