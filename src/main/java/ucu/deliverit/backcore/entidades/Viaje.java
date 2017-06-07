package ucu.deliverit.backcore.entidades;

import java.sql.Timestamp;
import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

@Entity
@Table(name = "viaje")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Viaje.findAll", query = "SELECT v FROM Viaje v"),
    @NamedQuery(name = "Viaje.findPublicados", query = "SELECT v FROM Viaje v WHERE v.estado.id = :idEstadoViaje"),
    @NamedQuery(name = "Viaje.findDelivery", query = "SELECT d FROM Viaje v JOIN v.delivery d WHERE v.id = :idViaje"),
    @NamedQuery(name = "Viaje.findCalifByDelivery", query = "SELECT v.calificacion FROM Viaje v WHERE v.delivery.id = :idDelivery AND v.calificacion != null"),
    @NamedQuery(name = "Viaje.findDeliveryEnProceso", query = "SELECT DISTINCT d FROM Viaje v JOIN v.delivery d WHERE v.estado.id = :estado AND v.sucursal.id = :idSucursal"),
    @NamedQuery(name = "Viaje.findSucursales", query = "SELECT DISTINCT s FROM Viaje v JOIN v.sucursal s WHERE v.estado.id = :idEstado"),
    @NamedQuery(name = "Viaje.countPedidos", query = "SELECT COUNT (p) FROM Viaje v JOIN v.pedidos p WHERE p.viaje.id = :idViaje")})  
public class Viaje implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    
    @Basic(optional = false)
    @Column(name = "fecha_creacion")
    private Timestamp fecha;
    
    @Column(name = "calificacion")
    private Short calificacion;
    
    @Basic(optional = false)
    @Column(name = "precio")
    private Short precio;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "viaje")
    private Collection<Transaccion> transaccionCollection;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "viaje")
    private Collection<Pedido> pedidos;
    
    @JoinColumn(name = "delivery", referencedColumnName = "id")
    @ManyToOne
    private Delivery delivery;
    
    @ManyToOne
    @JoinColumn(name = "sucursal", referencedColumnName = "id")
    private Sucursal sucursal;

    @JoinColumn(name = "estado", referencedColumnName = "id")
    @ManyToOne
    private EstadoViaje estado;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Short getCalificacion() {
        return calificacion;
    }

    public void setCalificacion(Short calificacion) {
        this.calificacion = calificacion;
    }

    public Short getPrecio() {
        return precio;
    }

    public void setPrecio(Short precio) {
        this.precio = precio;
    }

    @XmlTransient
    public Collection<Transaccion> getTransaccionCollection() {
        return transaccionCollection;
    }

    public void setTransaccionCollection(Collection<Transaccion> transaccionCollection) {
        this.transaccionCollection = transaccionCollection;
    }

    @XmlTransient
    public Collection<Pedido> getPedidos() {
        return pedidos;
    }

    public void setPedidos(Collection<Pedido> pedidos) {
        this.pedidos = pedidos;
    }

    public Delivery getDelivery() {
        return delivery;
    }

    public void setDelivery(Delivery delivery) {
        this.delivery = delivery;
    }

    public Sucursal getSucursal() {
        return sucursal;
    }

    public void setSucursal(Sucursal sucursal) {
        this.sucursal = sucursal;
    }

    public EstadoViaje getEstado() {
        return estado;
    }

    public void setEstado(EstadoViaje estado) {
        this.estado = estado;
    }
    
    public Timestamp getFecha() {
        return fecha;
    }

    public void setFecha(Timestamp fecha) {
        this.fecha = fecha;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Viaje)) {
            return false;
        }
        Viaje other = (Viaje) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ucu.deliverit.backcore.entidades.Viaje[ id=" + id + " ]";
    }
    
}
