package ucu.deliverit.backcore.entidades;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.ClienteTelefono;
import ucu.deliverit.backcore.entidades.Direccion;
import ucu.deliverit.backcore.entidades.Pedido;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-02-19T17:39:08")
@StaticMetamodel(Cliente.class)
public class Cliente_ { 

    public static volatile CollectionAttribute<Cliente, ClienteTelefono> clienteTelefonoCollection;
    public static volatile SingularAttribute<Cliente, Direccion> direccion;
    public static volatile SingularAttribute<Cliente, Integer> id;
    public static volatile CollectionAttribute<Cliente, Pedido> pedidoCollection;
    public static volatile SingularAttribute<Cliente, String> nombre;

}