package ucu.deliverit.backcore.entidades;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.Direccion;
import ucu.deliverit.backcore.entidades.Pedido;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-04-01T16:51:25")
@StaticMetamodel(Cliente.class)
public class Cliente_ { 

    public static volatile SingularAttribute<Cliente, Direccion> direccion;
    public static volatile SingularAttribute<Cliente, Integer> id;
    public static volatile CollectionAttribute<Cliente, Pedido> pedidoCollection;
    public static volatile SingularAttribute<Cliente, String> telefono;
    public static volatile SingularAttribute<Cliente, String> nombre;

}