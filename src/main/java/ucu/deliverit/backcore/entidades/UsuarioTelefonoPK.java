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
public class UsuarioTelefonoPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "usuario")
    private int usuario;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 9)
    @Column(name = "telefono")
    private String telefono;

    public UsuarioTelefonoPK() {
    }

    public UsuarioTelefonoPK(int usuario, String telefono) {
        this.usuario = usuario;
        this.telefono = telefono;
    }

    public int getUsuario() {
        return usuario;
    }

    public void setUsuario(int usuario) {
        this.usuario = usuario;
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
        hash += (int) usuario;
        hash += (telefono != null ? telefono.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UsuarioTelefonoPK)) {
            return false;
        }
        UsuarioTelefonoPK other = (UsuarioTelefonoPK) object;
        if (this.usuario != other.usuario) {
            return false;
        }
        if ((this.telefono == null && other.telefono != null) || (this.telefono != null && !this.telefono.equals(other.telefono))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ucu.deliverit.backcore.entidades.UsuarioTelefonoPK[ usuario=" + usuario + ", telefono=" + telefono + " ]";
    }
    
}
