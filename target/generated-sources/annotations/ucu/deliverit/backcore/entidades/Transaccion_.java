package ucu.deliverit.backcore.entidades;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ucu.deliverit.backcore.entidades.Viaje;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-24T19:24:52")
@StaticMetamodel(Transaccion.class)
public class Transaccion_ { 

    public static volatile SingularAttribute<Transaccion, Double> monto;
    public static volatile SingularAttribute<Transaccion, Date> fechaHora;
    public static volatile SingularAttribute<Transaccion, Viaje> viaje;
    public static volatile SingularAttribute<Transaccion, Integer> id;

}