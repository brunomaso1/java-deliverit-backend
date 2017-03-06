package ucu.deliverit.backcore.entidades;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.Viaje;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-03-05T20:24:53")
@StaticMetamodel(EstadoViaje.class)
public class EstadoViaje_ { 

    public static volatile SingularAttribute<EstadoViaje, String> descripcion;
    public static volatile CollectionAttribute<EstadoViaje, Viaje> viajeCollection;
    public static volatile SingularAttribute<EstadoViaje, Short> id;

}