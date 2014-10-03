package objects;
// Generated Sep 25, 2014 11:43:14 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * AltbClientes generated by hbm2java
 */
public class AltbClientes  implements java.io.Serializable {


     private String idCliente;
     private String nombre;
     private String apellido;
     private String EMail;
     private String celular;
     private String sexo;
     private Date fechaNacimiento;
     private Date fhRegistro;

    public AltbClientes() {
    }

    public AltbClientes(String idCliente, String nombre, String apellido, String eMail, String celular, String sexo, Date fechaNacimiento, Date fhRegistro) {
       this.idCliente = idCliente;
       this.nombre = nombre;
       this.apellido = apellido;
       this.EMail = eMail;
       this.celular = celular;
       this.sexo = sexo;
       this.fechaNacimiento = fechaNacimiento;
       this.fhRegistro = fhRegistro;
    }
   
    public String getIdCliente() {
        return this.idCliente;
    }
    
    public void setIdCliente(String idCliente) {
        this.idCliente = idCliente;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApellido() {
        return this.apellido;
    }
    
    public void setApellido(String apellido) {    
                
        this.apellido = apellido;
          this.idCliente= nombre.substring(0, 3)+apellido.substring(0,3); 
    }
    public String getEMail() {
        return this.EMail;
    }
    
    public void setEMail(String EMail) {
        this.EMail = EMail;
    }
    public String getCelular() {
        return this.celular;
    }
    
    public void setCelular(String celular) {
        celular = celular.replace("-","");
        this.celular = celular;
    }
    public String getSexo() {
        return this.sexo;
    }
    
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    public Date getFechaNacimiento() {
        return this.fechaNacimiento;
    }
    
    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fhRegistro = new Date();
        this.fechaNacimiento = fechaNacimiento;
    }
    public Date getFhRegistro() {
        return this.fhRegistro;
    }
    
    public void setFhRegistro(Date fhRegistro) {
        this.fhRegistro = fhRegistro;
    }




}

