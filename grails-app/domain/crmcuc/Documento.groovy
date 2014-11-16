package crmcuc

class Documento {
    String nombre
    String tipoDocumento
    Date fechaCreacion
    String version
    String estado

    static belongsTo=[procesos:Proceso]
    
    static mapping ={
       table 'documentos'
       version false              
     }
    static constraints = {
        nombre  nullable:false,maxsize:100
        tipoDocumento   nullable:false,maxsize:100
        fechaCreacion   nullable:false
        version nullable:false,maxsize:100
        estado nullable:false,maxsize:100
    }
}
