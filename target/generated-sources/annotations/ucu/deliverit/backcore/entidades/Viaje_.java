package ucu.deliverit.backcore.entidades;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.Delivery;
import ucu.deliverit.backcore.entidades.EstadoViaje;
import ucu.deliverit.backcore.entidades.Pedido;
import ucu.deliverit.backcore.entidades.Sucursal;
import ucu.deliverit.backcore.entidades.Transaccion;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-02-21T16:13:55")
@StaticMetamodel(Viaje.class)
public class Viaje_ { 

    public static volatile SingularAttribute<Viaje, Delivery> delivery;
    public static volatile SingularAttribute<Viaje, Short> calificacion;
    public static volatile SingularAttribute<Viaje, Short> precio;
    public static volatile SingularAttribute<Viaje, EstadoViaje> estado;
    public static volatile SingularAttribute<Viaje, Sucursal> sucursal;
    public static volatile SingularAttribute<Viaje, Integer> id;
    public static volatile CollectionAttribute<Viaje, Pedido> pedidoCollection;
    public static volatile CollectionAttribute<Viaje, Transaccion> transaccionCollection;

}