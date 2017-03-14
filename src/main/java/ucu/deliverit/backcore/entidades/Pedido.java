/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.entidades;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author DeliverIT
 */
@Entity
@Table(name = "pedido")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Pedido.findAll", query = "SELECT p FROM Pedido p"),
    @NamedQuery(name = "Pedido.findById", query = "SELECT p FROM Pedido p WHERE p.pedidoPK.id = :id"),
    @NamedQuery(name = "Pedido.findByViaje", query = "SELECT p FROM Pedido p WHERE p.pedidoPK.viaje = :viaje"),
    @NamedQuery(name = "Pedido.findByDetalle", query = "SELECT p FROM Pedido p WHERE p.detalle = :detalle"),
    @NamedQuery(name = "Pedido.findByFormaPago", query = "SELECT p FROM Pedido p WHERE p.formaPago = :formaPago")})
public class Pedido implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @EmbeddedId
    protected PedidoPK pedidoPK;
    
    @Size(max = 100)
    @Column(name = "detalle")
    private String detalle;
    
    @Size(max = 1)
    @Column(name = "forma_pago")
    private String formaPago;
    
    @JoinColumn(name = "viaje", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Viaje viaje;
    
    @JoinColumn(name = "cliente", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Cliente cliente;

    public Pedido() {
    }

    public Pedido(PedidoPK pedidoPK) {
        this.pedidoPK = pedidoPK;
    }

    public Pedido(int id, int viaje) {
        this.pedidoPK = new PedidoPK(id, viaje);
    }

    public PedidoPK getPedidoPK() {
        return pedidoPK;
    }

    public void setPedidoPK(PedidoPK pedidoPK) {
        this.pedidoPK = pedidoPK;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    public String getFormaPago() {
        return formaPago;
    }

    public void setFormaPago(String formaPago) {
        this.formaPago = formaPago;
    }

    public Viaje getViaje() {
        return viaje;
    }

    public void setViaje(Viaje viaje) {
        this.viaje = viaje;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (pedidoPK != null ? pedidoPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Pedido)) {
            return false;
        }
        Pedido other = (Pedido) object;
        if ((this.pedidoPK == null && other.pedidoPK != null) || (this.pedidoPK != null && !this.pedidoPK.equals(other.pedidoPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ucu.deliverit.backcore.entidades.Pedido[ pedidoPK=" + pedidoPK + " ]";
    }
    
}
