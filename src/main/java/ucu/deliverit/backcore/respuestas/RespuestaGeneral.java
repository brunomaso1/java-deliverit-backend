/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ucu.deliverit.backcore.respuestas;

/**
 *
 * @author DeliverIT
 */
public class RespuestaGeneral {
    public static final int CODIGO_OK = 0; 
    public static final int CODIGO_ERROR = -1;
    public static final int CODIGO_ERROR_VALOR_NULO = -2;
    public static final int CODIGO_ERROR_VALOR_INCORRECTO = -3;
    public static final int CODIGO_ERROR_YA_EXISTE = -4;
    public static final String MENSAJE_OK = "ok";
    public static final String MENSAJE_VALOR_NULO = " no puede ser nulo.";
    public static final String MENSAJE_VALOR_INCORRECTO = " incorrecto.";
    public static final String MENSAJE_VALOR_YA_EXISTE = " ya existe.";
    public static final String MENSAJE_USUARIO_INCORRECTO = "Usuario y/o contraseña incorrectos.";
    
    private Integer codigo;
    private String mensaje;
    private String objeto;

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public String getObjeto() {
        return objeto;
    }

    public void setObjeto(String objeto) {
        this.objeto = objeto;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }
    
}
