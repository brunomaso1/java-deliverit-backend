package ucu.deliverit.backcore.entidades;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.Delivery;
import ucu.deliverit.backcore.entidades.Restaurant;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-03-09T17:07:13")
@StaticMetamodel(Usuario.class)
public class Usuario_ { 

    public static volatile SingularAttribute<Usuario, String> password;
    public static volatile CollectionAttribute<Usuario, Delivery> deliveryCollection;
    public static volatile SingularAttribute<Usuario, String> mail;
    public static volatile SingularAttribute<Usuario, byte[]> foto;
    public static volatile CollectionAttribute<Usuario, Restaurant> restaurantCollection;
    public static volatile SingularAttribute<Usuario, Integer> cuentaRedPagos;
    public static volatile SingularAttribute<Usuario, Integer> id;
    public static volatile SingularAttribute<Usuario, String> telefono;
    public static volatile SingularAttribute<Usuario, String> nombre;

}