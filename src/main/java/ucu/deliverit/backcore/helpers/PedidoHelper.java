package ucu.deliverit.backcore.helpers;

import java.util.ArrayList;
import java.util.List;
import ucu.deliverit.backcore.entidades.Cliente;
import ucu.deliverit.backcore.entidades.Direccion;
import ucu.deliverit.backcore.entidades.Pedido;
import ucu.deliverit.backcore.entidades.Restaurant;
import ucu.deliverit.backcore.entidades.Sucursal;
import ucu.deliverit.backcore.entidades.Usuario;
import ucu.deliverit.backcore.entidades.Viaje;

public class PedidoHelper {
    
    public List<Pedido> limpiarPedidosMobile (List<Pedido> pedidos) {
        List<Pedido> resultado = new ArrayList<>();
        for (int i = 0; i < pedidos.size(); i++) {
            Pedido pAux = new Pedido();
            if (i == 0) {
                Viaje vAux = new Viaje();
                vAux.setId(pedidos.get(i).getViaje().getId());
                vAux.setPrecio(pedidos.get(i).getViaje().getPrecio());
                
                Usuario uAux = new Usuario();
                uAux.setFoto(pedidos.get(i).getViaje().getSucursal().getRestaurant().getUsuario().getFoto());
                
                Restaurant rAux = new Restaurant();
                rAux.setRazonSocial(pedidos.get(i).getViaje().getSucursal().getRestaurant().getRazonSocial());
                rAux.setUsuario(uAux);
                
                Sucursal sAux = new Sucursal();
                sAux.setDireccion(pedidos.get(i).getViaje().getSucursal().getDireccion());
                sAux.setRestaurant(rAux);
                
                vAux.setSucursal(sAux);
                pAux.setViaje(vAux);
            }
            Direccion dAux = pedidos.get(i).getCliente().getDireccion();
            Cliente cAux = new Cliente();
            cAux.setNombre(pedidos.get(i).getCliente().getNombre());
            cAux.setTelefono(pedidos.get(i).getCliente().getTelefono());
            cAux.setDireccion(dAux);
            pAux.setDetalle(pedidos.get(i).getDetalle());
            pAux.setCliente(cAux);
            resultado.add(pAux);
        }
        return resultado;
    }
}
