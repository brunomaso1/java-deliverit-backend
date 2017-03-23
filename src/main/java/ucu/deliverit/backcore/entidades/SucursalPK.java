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
 * @author DeliverIT
 */
@Embeddable
public class SucursalPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "id")
    private short id;
    
    @Basic(optional = false)
    @NotNull
    @Column(name = "restaurant")
    private int restaurant;

    public short getId() {
        return id;
    }

    public void setId(short id) {
        this.id = id;
    }

    public int getRestaurant() {
        return restaurant;
    }

    public void setRestaurant(int restaurant) {
        this.restaurant = restaurant;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) id;
        hash += (int) restaurant;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SucursalPK)) {
            return false;
        }
        SucursalPK other = (SucursalPK) object;
        if (this.id != other.id) {
            return false;
        }
        if (this.restaurant != other.restaurant) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ucu.deliverit.backcore.entidades.SucursalPK[ id=" + id + ", restaurant=" + restaurant + " ]";
    }
    
}
