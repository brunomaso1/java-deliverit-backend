package ucu.deliverit.backcore.entidades;

import java.sql.Timestamp;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.Cliente;
import ucu.deliverit.backcore.entidades.Viaje;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-24T18:07:05")
@StaticMetamodel(Pedido.class)
public class Pedido_ { 

    public static volatile SingularAttribute<Pedido, Timestamp> fecha;
    public static volatile SingularAttribute<Pedido, Cliente> cliente;
    public static volatile SingularAttribute<Pedido, Viaje> viaje;
    public static volatile SingularAttribute<Pedido, Integer> id;
    public static volatile SingularAttribute<Pedido, String> formaPago;
    public static volatile SingularAttribute<Pedido, String> detalle;

}