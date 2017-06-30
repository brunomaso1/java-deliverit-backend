package ucu.deliverit.backcore.entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name = "configuracion")
@XmlRootElement
@NamedQueries({ 
    @NamedQuery(name = "Configuracion.findByDesc", query = "SELECT c FROM Configuracion c WHERE c.descripcion = :descripcion") })
public class Configuracion implements Serializable {

    private static final long serialVersionUID = 1L;
    
    public static final String API_KEY_GOOGLE = "API_KEY_GOOGLE";
    public static final String SERVIDOR_FIREBASE = "SERVIDOR_FIREBASE";
    public static final String MAIL_DELIVERIT = "MAIL_DELIVERIT";
    public static final String MAIL_DELIVERIT_PASS = "MAIL_DELIVERIT_PASS";
    public static final String MAIL_DELIVERIT_USER = "MAIL_DELIVERIT_USER";
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    
    @Basic(optional = false)
    @NotNull
    @Column(name = "descripcion")
    private String descripcion;
    
    @Basic(optional = false)
    @NotNull
    @Column(name = "valor")
    private String valor;
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (getId() != null ? getId().hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Configuracion)) {
            return false;
        }
        Configuracion other = (Configuracion) object;
        if ((this.getId() == null && other.getId() != null) || (this.getId() != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ucu.deliverit.backcore.entidades.Configuracion[ id=" + getId() + " ]";
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }    
}