package ucu.deliverit.backcore.entidades;

import java.math.BigInteger;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.Sucursal;
import ucu.deliverit.backcore.entidades.Usuario;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-09T20:36:35")
@StaticMetamodel(Restaurant.class)
public class Restaurant_ { 

    public static volatile SingularAttribute<Restaurant, BigInteger> rut;
    public static volatile SingularAttribute<Restaurant, String> razonSocial;
    public static volatile CollectionAttribute<Restaurant, Sucursal> sucursalCollection;
    public static volatile SingularAttribute<Restaurant, Usuario> usuario;
    public static volatile SingularAttribute<Restaurant, Integer> id;

}