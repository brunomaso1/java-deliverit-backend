package ucu.deliverit.backcore.entidades;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.Delivery;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-03-05T20:24:53")
@StaticMetamodel(Vehiculo.class)
public class Vehiculo_ { 

    public static volatile SingularAttribute<Vehiculo, String> descripcion;
    public static volatile CollectionAttribute<Vehiculo, Delivery> deliveryCollection;
    public static volatile SingularAttribute<Vehiculo, Short> id;

}