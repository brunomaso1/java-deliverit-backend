package ucu.deliverit.backcore.entidades;

import java.math.BigInteger;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.Usuario;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-03T20:26:31")
@StaticMetamodel(Restaurant.class)
public class Restaurant_ { 

    public static volatile SingularAttribute<Restaurant, BigInteger> rut;
    public static volatile SingularAttribute<Restaurant, String> razonSocial;
    public static volatile SingularAttribute<Restaurant, Usuario> usuario;
    public static volatile SingularAttribute<Restaurant, Integer> id;

}