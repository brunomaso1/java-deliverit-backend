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
@Table(name = "usuario_telefono")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UsuarioTelefono.findAll", query = "SELECT u FROM UsuarioTelefono u")
    , @NamedQuery(name = "UsuarioTelefono.findByUsuario", query = "SELECT u FROM UsuarioTelefono u WHERE u.usuarioTelefonoPK.usuario = :usuario")
    , @NamedQuery(name = "UsuarioTelefono.findByTelefono", query = "SELECT u FROM UsuarioTelefono u WHERE u.usuarioTelefonoPK.telefono = :telefono")})
public class UsuarioTelefono implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected UsuarioTelefonoPK usuarioTelefonoPK;
    @JoinColumn(name = "usuario", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Usuario usuario1;

    public UsuarioTelefono() {
    }

    public UsuarioTelefono(UsuarioTelefonoPK usuarioTelefonoPK) {
        this.usuarioTelefonoPK = usuarioTelefonoPK;
    }

    public UsuarioTelefono(int usuario, String telefono) {
        this.usuarioTelefonoPK = new UsuarioTelefonoPK(usuario, telefono);
    }

    public UsuarioTelefonoPK getUsuarioTelefonoPK() {
        return usuarioTelefonoPK;
    }

    public void setUsuarioTelefonoPK(UsuarioTelefonoPK usuarioTelefonoPK) {
        this.usuarioTelefonoPK = usuarioTelefonoPK;
    }

    public Usuario getUsuario1() {
        return usuario1;
    }

    public void setUsuario1(Usuario usuario1) {
        this.usuario1 = usuario1;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (usuarioTelefonoPK != null ? usuarioTelefonoPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UsuarioTelefono)) {
            return false;
        }
        UsuarioTelefono other = (UsuarioTelefono) object;
        if ((this.usuarioTelefonoPK == null && other.usuarioTelefonoPK != null) || (this.usuarioTelefonoPK != null && !this.usuarioTelefonoPK.equals(other.usuarioTelefonoPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ucu.deliverit.backcore.entidades.UsuarioTelefono[ usuarioTelefonoPK=" + usuarioTelefonoPK + " ]";
    }
    
}
