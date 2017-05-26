package ucu.deliverit.backcore.entidades;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.Sucursal;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-26T00:43:00")
@StaticMetamodel(Direccion.class)
public class Direccion_ { 

    public static volatile SingularAttribute<Direccion, Short> apartamento;
    public static volatile SingularAttribute<Direccion, Double> latitud;
    public static volatile SingularAttribute<Direccion, Double> longitud;
    public static volatile CollectionAttribute<Direccion, Sucursal> sucursalCollection;
    public static volatile SingularAttribute<Direccion, String> calle;
    public static volatile SingularAttribute<Direccion, Integer> id;
    public static volatile SingularAttribute<Direccion, String> esquina;
    public static volatile SingularAttribute<Direccion, Short> nroPuerta;

}