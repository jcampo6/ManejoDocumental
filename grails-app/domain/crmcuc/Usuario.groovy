package crmcuc

class Usuario {

    String login
    String password
    String estadoUsuario
    
    static belongsTo =[persona:Persona]
    static hasOne=[rol:Rol]
    
     static mapping ={
       table 'usuarios'
       version false              
     }
    static constraints = {
       login nullable:false,unique:true
       password  nullable:false,password:true
       estadoUsuario inList:['A','I'] 
    }
    String  toString(){
        return login        
    } 
}
