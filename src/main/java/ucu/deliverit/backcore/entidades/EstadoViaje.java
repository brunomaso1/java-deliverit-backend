/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.entidades;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author DeliverIT
 */
@Entity
@Table(name = "estado_viaje")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EstadoViaje.findAll", query = "SELECT e FROM EstadoViaje e"),
    @NamedQuery(name = "EstadoViaje.findById", query = "SELECT e FROM EstadoViaje e WHERE e.id = :id"),
    @NamedQuery(name = "EstadoViaje.findByDescripcion", query = "SELECT e FROM EstadoViaje e WHERE e.descripcion = :descripcion")})
public class EstadoViaje implements Serializable {

    private static final long serialVersionUID = 1L;
    
    public static final String PENDIENTE = "Pendiente";
    public static final String PUBLICADO = "Publicado";
    public static final String EN_PROCESO = "En proceso";
    public static final String FINALIZADO = "Finalizado";
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Short id;
    
    @Size(max = 10)
    @Column(name = "descripcion")
    private String descripcion;
    
    @OneToMany(mappedBy = "estado")
    private Collection<Viaje> viajeCollection;

    public Short getId() {
        return id;
    }

    public void setId(Short id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
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
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EstadoViaje)) {
            return false;
        }
        EstadoViaje other = (EstadoViaje) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ucu.deliverit.backcore.entidades.EstadoViaje[ id=" + id + " ]";
    }
    
}
