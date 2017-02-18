/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author JMArtegoytia
 */
@Embeddable
public class ClienteTelefonoPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "cliente")
    private int cliente;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 9)
    @Column(name = "telefono")
    private String telefono;

    public ClienteTelefonoPK() {
    }

    public ClienteTelefonoPK(int cliente, String telefono) {
        this.cliente = cliente;
        this.telefono = telefono;
    }

    public int getCliente() {
        return cliente;
    }

    public void setCliente(int cliente) {
        this.cliente = cliente;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) cliente;
        hash += (telefono != null ? telefono.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ClienteTelefonoPK)) {
            return false;
        }
        ClienteTelefonoPK other = (ClienteTelefonoPK) object;
        if (this.cliente != other.cliente) {
            return false;
        }
        if ((this.telefono == null && other.telefono != null) || (this.telefono != null && !this.telefono.equals(other.telefono))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ucu.deliverit.backcore.entidades.ClienteTelefonoPK[ cliente=" + cliente + ", telefono=" + telefono + " ]";
    }
    
}
