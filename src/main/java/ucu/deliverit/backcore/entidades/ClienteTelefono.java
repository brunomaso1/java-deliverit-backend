/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.entidades;

import java.io.Serializable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author JMArtegoytia
 */
@Entity
@Table(name = "cliente_telefono")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ClienteTelefono.findAll", query = "SELECT c FROM ClienteTelefono c")
    , @NamedQuery(name = "ClienteTelefono.findByCliente", query = "SELECT c FROM ClienteTelefono c WHERE c.clienteTelefonoPK.cliente = :cliente")
    , @NamedQuery(name = "ClienteTelefono.findByTelefono", query = "SELECT c FROM ClienteTelefono c WHERE c.clienteTelefonoPK.telefono = :telefono")})
public class ClienteTelefono implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ClienteTelefonoPK clienteTelefonoPK;
    @JoinColumn(name = "cliente", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Cliente cliente1;

    public ClienteTelefono() {
    }

    public ClienteTelefono(ClienteTelefonoPK clienteTelefonoPK) {
        this.clienteTelefonoPK = clienteTelefonoPK;
    }

    public ClienteTelefono(int cliente, String telefono) {
        this.clienteTelefonoPK = new ClienteTelefonoPK(cliente, telefono);
    }

    public ClienteTelefonoPK getClienteTelefonoPK() {
        return clienteTelefonoPK;
    }

    public void setClienteTelefonoPK(ClienteTelefonoPK clienteTelefonoPK) {
        this.clienteTelefonoPK = clienteTelefonoPK;
    }

    public Cliente getCliente1() {
        return cliente1;
    }

    public void setCliente1(Cliente cliente1) {
        this.cliente1 = cliente1;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (clienteTelefonoPK != null ? clienteTelefonoPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ClienteTelefono)) {
            return false;
        }
        ClienteTelefono other = (ClienteTelefono) object;
        if ((this.clienteTelefonoPK == null && other.clienteTelefonoPK != null) || (this.clienteTelefonoPK != null && !this.clienteTelefonoPK.equals(other.clienteTelefonoPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ucu.deliverit.backcore.entidades.ClienteTelefono[ clienteTelefonoPK=" + clienteTelefonoPK + " ]";
    }
    
}
