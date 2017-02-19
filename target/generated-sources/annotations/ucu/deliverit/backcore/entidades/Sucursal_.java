package ucu.deliverit.backcore.entidades;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.Direccion;
import ucu.deliverit.backcore.entidades.Restaurant;
import ucu.deliverit.backcore.entidades.SucursalPK;
import ucu.deliverit.backcore.entidades.Viaje;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-02-19T17:39:08")
@StaticMetamodel(Sucursal.class)
public class Sucursal_ { 

    public static volatile SingularAttribute<Sucursal, SucursalPK> sucursalPK;
    public static volatile CollectionAttribute<Sucursal, Viaje> viajeCollection;
    public static volatile SingularAttribute<Sucursal, Direccion> direccion;
    public static volatile SingularAttribute<Sucursal, Restaurant> restaurant1;
    public static volatile SingularAttribute<Sucursal, String> nombre;

}