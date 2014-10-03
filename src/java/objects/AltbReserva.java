package objects;
// Generated Sep 25, 2014 11:43:14 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * AltbReserva generated by hbm2java
 */
public class AltbReserva  implements java.io.Serializable {


     private String idReserva;
     private String idCliente;
     private String idPaquete;
     private String idMesa;
     private String deReserva;
     private String cmReserva;
     private Date fhCarga;

    public AltbReserva() {
    }

    public AltbReserva(String idReserva, String idCliente, String idPaquete, String idMesa, String deReserva, String cmReserva, Date fhCarga) {
       this.idReserva = idReserva;
       this.idCliente = idCliente;
       this.idPaquete = idPaquete;
       this.idMesa = idMesa;
       this.deReserva = deReserva;
       this.cmReserva = cmReserva;
       this.fhCarga = fhCarga;
    }
   
    public String getIdReserva() {
        return this.idReserva;
    }
    
    public void setIdReserva(String idReserva) {
        this.idReserva = idReserva;
    }
    public String getIdCliente() {
        return this.idCliente;
    }
    
    public void setIdCliente(String idCliente) {
        this.idCliente = idCliente;
    }
    public String getIdPaquete() {
        return this.idPaquete;
    }
    
    public void setIdPaquete(String idPaquete) {
        this.idPaquete = idPaquete;
    }
    public String getIdMesa() {
        return this.idMesa;
    }
    
    public void setIdMesa(String idMesa) {
        this.idMesa = idMesa;
    }
    public String getDeReserva() {
        return this.deReserva;
    }
    
    public void setDeReserva(String deReserva) {
        this.deReserva = deReserva;
    }
    public String getCmReserva() {
        return this.cmReserva;
    }
    
    public void setCmReserva(String cmReserva) {
        this.cmReserva = cmReserva;
    }
    public Date getFhCarga() {
        return this.fhCarga;
    }
    
    public void setFhCarga(Date fhCarga) {
        this.fhCarga = fhCarga;
    }




}

