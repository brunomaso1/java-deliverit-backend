package ucu.deliverit.backcore.entidades;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.Cliente;
import ucu.deliverit.backcore.entidades.PedidoPK;
import ucu.deliverit.backcore.entidades.Viaje;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-03-03T17:02:14")
@StaticMetamodel(Pedido.class)
public class Pedido_ { 

    public static volatile SingularAttribute<Pedido, Cliente> cliente;
    public static volatile SingularAttribute<Pedido, PedidoPK> pedidoPK;
    public static volatile SingularAttribute<Pedido, Viaje> viaje;
    public static volatile SingularAttribute<Pedido, String> formaPago;
    public static volatile SingularAttribute<Pedido, String> detalle;

}