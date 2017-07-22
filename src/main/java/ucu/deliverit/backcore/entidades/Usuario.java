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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name = "usuario")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Usuario.findAll", query = "SELECT u FROM Usuario u"),
    @NamedQuery(name = "Usuario.findById", query = "SELECT u FROM Usuario u WHERE u.id = :id"),
    @NamedQuery(name = "Usuario.findByNombre", query = "SELECT u FROM Usuario u WHERE u.nombre = :nombre"),
    @NamedQuery(name = "Usuario.findByPassword", query = "SELECT u FROM Usuario u WHERE u.password = :password"),
    @NamedQuery(name = "Usuario.findByMail", query = "SELECT u FROM Usuario u WHERE u.mail = :mail"),
    @NamedQuery(name = "Usuario.findByCuentaRedPagos", query = "SELECT u FROM Usuario u WHERE u.cuentaRedPagos = :cuentaRedPagos")})
public class Usuario implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 40)
    @Column(name = "nombre")
    private String nombre;
    
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "password")
    private String password;
    
    @Basic(optional = false)
    @NotNull
    @Size(min = 8, max = 9)
    @Column(name = "telefono")
    private String telefono;
    
    @Size(max = 50)
    @Column(name = "mail")
    private String mail;
    
    @Basic(optional = false)
    @NotNull
    @Column(name = "cuenta_red_pagos")
    private Integer cuentaRedPagos;
    
    @Column(name = "foto")
    private String foto;
    
//    @OneToMany(mappedBy = "usuario")
//    private Collection<Delivery> deliveryCollection;
//    
//    @OneToMany(mappedBy = "usuario")
//    private Collection<Restaurant> restaurantCollection;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public Integer getCuentaRedPagos() {
        return cuentaRedPagos;
    }

    public void setCuentaRedPagos(Integer cuentaRedPagos) {
        this.cuentaRedPagos = cuentaRedPagos;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

//    @XmlTransient
//    public Collection<Delivery> getDeliveryCollection() {
//        return deliveryCollection;
//    }
//
//    public void setDeliveryCollection(Collection<Delivery> deliveryCollection) {
//        this.deliveryCollection = deliveryCollection;
//    }
//
//    @XmlTransient
//    public Collection<Restaurant> getRestaurantCollection() {
//        return restaurantCollection;
//    }
//
//    public void setRestaurantCollection(Collection<Restaurant> restaurantCollection) {
//        this.restaurantCollection = restaurantCollection;
//    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Usuario)) {
            return false;
        }
        Usuario other = (Usuario) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ucu.deliverit.backcore.entidades.Usuario[ id=" + id + " ]";
    }
    
}
