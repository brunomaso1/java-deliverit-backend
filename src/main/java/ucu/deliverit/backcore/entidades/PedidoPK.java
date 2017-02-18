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

/**
 *
 * @author JMArtegoytia
 */
@Embeddable
public class PedidoPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "id")
    private int id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "viaje")
    private int viaje;

    public PedidoPK() {
    }

    public PedidoPK(int id, int viaje) {
        this.id = id;
        this.viaje = viaje;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getViaje() {
        return viaje;
    }

    public void setViaje(int viaje) {
        this.viaje = viaje;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) id;
        hash += (int) viaje;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PedidoPK)) {
            return false;
        }
        PedidoPK other = (PedidoPK) object;
        if (this.id != other.id) {
            return false;
        }
        if (this.viaje != other.viaje) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ucu.deliverit.backcore.entidades.PedidoPK[ id=" + id + ", viaje=" + viaje + " ]";
    }
    
}
