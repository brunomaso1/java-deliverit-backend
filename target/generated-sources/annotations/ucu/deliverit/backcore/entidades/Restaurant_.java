package ucu.deliverit.backcore.entidades;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.Sucursal;
import ucu.deliverit.backcore.entidades.Usuario;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-02-21T16:13:55")
@StaticMetamodel(Restaurant.class)
public class Restaurant_ { 

    public static volatile SingularAttribute<Restaurant, Integer> rut;
    public static volatile SingularAttribute<Restaurant, String> razonSocial;
    public static volatile CollectionAttribute<Restaurant, Sucursal> sucursalCollection;
    public static volatile SingularAttribute<Restaurant, Usuario> usuario;
    public static volatile SingularAttribute<Restaurant, Integer> id;

}