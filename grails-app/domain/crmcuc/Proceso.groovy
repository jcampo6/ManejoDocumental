package crmcuc

class Proceso {

    String nombre
    String macroProceso

    static hasMany=[documentos:Documento]
    
    static mapping ={
       table 'procesos'
       version false              
     }
    
    static constraints = {
        nombre  nullable:false,blank:false,maxsize:100
        macroProceso    nullable:false
    }
    
    String  toString(){
        return nombre        
    } 
}
