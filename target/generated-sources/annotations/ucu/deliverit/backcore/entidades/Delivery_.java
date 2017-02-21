package ucu.deliverit.backcore.entidades;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.Ubicacion;
import ucu.deliverit.backcore.entidades.Usuario;
import ucu.deliverit.backcore.entidades.Vehiculo;
import ucu.deliverit.backcore.entidades.Viaje;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-02-21T16:13:55")
@StaticMetamodel(Delivery.class)
public class Delivery_ { 

    public static volatile SingularAttribute<Delivery, Short> calificacion;
    public static volatile SingularAttribute<Delivery, Ubicacion> ubicacion;
    public static volatile CollectionAttribute<Delivery, Viaje> viajeCollection;
    public static volatile SingularAttribute<Delivery, Usuario> usuario;
    public static volatile SingularAttribute<Delivery, Integer> id;
    public static volatile SingularAttribute<Delivery, Vehiculo> vehiculo;
    public static volatile SingularAttribute<Delivery, String> token;

}