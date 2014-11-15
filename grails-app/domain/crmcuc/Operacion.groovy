package crmcuc

class Operacion {
    String operacion
    String estadoOperacion
    
    static belongsTo=[opcion:Opcion]
    
    static mapping ={
       table 'operaciones'
       version false              
     }
    static constraints = {
        operacion nullable:false,maxSize:300
        estadoOperacion inList:['A','I'] 
    }
   def String toString(){
       return operacion        
   } 
}
