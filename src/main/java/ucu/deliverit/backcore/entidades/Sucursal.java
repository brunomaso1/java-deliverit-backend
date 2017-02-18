/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.entidades;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author JMArtegoytia
 */
@Entity
@Table(name = "sucursal")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sucursal.findAll", query = "SELECT s FROM Sucursal s")
    , @NamedQuery(name = "Sucursal.findById", query = "SELECT s FROM Sucursal s WHERE s.sucursalPK.id = :id")
    , @NamedQuery(name = "Sucursal.findByRestaurant", query = "SELECT s FROM Sucursal s WHERE s.sucursalPK.restaurant = :restaurant")
    , @NamedQuery(name = "Sucursal.findByNombre", query = "SELECT s FROM Sucursal s WHERE s.nombre = :nombre")})
public class Sucursal implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected SucursalPK sucursalPK;
    @Size(max = 20)
    @Column(name = "nombre")
    private String nombre;
    @JoinColumn(name = "restaurant", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Restaurant restaurant1;
    @JoinColumn(name = "direccion", referencedColumnName = "id")
    @ManyToOne
    private Direccion direccion;
    @OneToMany(mappedBy = "sucursal")
    private Collection<Viaje> viajeCollection;

    public Sucursal() {
    }

    public Sucursal(SucursalPK sucursalPK) {
        this.sucursalPK = sucursalPK;
    }

    public Sucursal(short id, int restaurant) {
        this.sucursalPK = new SucursalPK(id, restaurant);
    }

    public SucursalPK getSucursalPK() {
        return sucursalPK;
    }

    public void setSucursalPK(SucursalPK sucursalPK) {
        this.sucursalPK = sucursalPK;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Restaurant getRestaurant1() {
        return restaurant1;
    }

    public void setRestaurant1(Restaurant restaurant1) {
        this.restaurant1 = restaurant1;
    }

    public Direccion getDireccion() {
        return direccion;
    }

    public void setDireccion(Direccion direccion) {
        this.direccion = direccion;
    }

    @XmlTransient
    public Collection<Viaje> getViajeCollection() {
        return viajeCollection;
    }

    public void setViajeCollection(Collection<Viaje> viajeCollection) {
        this.viajeCollection = viajeCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (sucursalPK != null ? sucursalPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Sucursal)) {
            return false;
        }
        Sucursal other = (Sucursal) object;
        if ((this.sucursalPK == null && other.sucursalPK != null) || (this.sucursalPK != null && !this.sucursalPK.equals(other.sucursalPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ucu.deliverit.backcore.entidades.Sucursal[ sucursalPK=" + sucursalPK + " ]";
    }
    
}
