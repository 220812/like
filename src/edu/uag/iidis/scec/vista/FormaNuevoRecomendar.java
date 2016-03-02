package edu.uag.iidis.scec.vista;

import java.util.Collection;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.ValidatorForm;


/**
 * Form bean para el registro de una nueva persona.
 *
 * @author Victor Ramos
 */
public final class FormaNuevoRecomendar
        extends ValidatorForm {

    private String nombre;
    private String fecha;
	private String comentario;
	private String calificacion;
	private Long idLugar;
	private Collection lugares;
	private Collection estados;
	private String estado;
	private Long idEstado;
    private int contador;

	public void setLugares(Collection lugares) {
        this.lugares = lugares;
        if (lugares != null) {
          this.contador = lugares.size();
        } else
          this.contador = -1;
    }

    public Collection getLugares() {
        return (this.lugares);
    }
	public void setEstados(Collection estados) {
        this.estados = estados;
        if (estados!= null) {
          this.contador = estados.size();
        } else
          this.contador = -1;
    }

    public Collection getEstados() {
        return (this.estados);
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
  /* public void setEstado(String estado) {
        this.estado = estado;
    }*/


    public String getNombre() {
        return (this.nombre);
    }


    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getFecha() {
        return (this.fecha);
    }
	
	public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public String getComentario() {
        return (this.comentario);
    }
	
	public void setCalificacion(String calificacion) {
        this.calificacion = calificacion;
    }

    public String getCalificacion() {
        return (this.calificacion);
    }
	
    public void setidLugar(Long id) {
        this.idLugar = id;
    }
	 public void setidEstado(Long idEstado) {
        this.idEstado= idEstado;
    }

    public Long getidLugar() {
        return (this.idLugar);
    }
	 public String getEstado() {
        return (this.estado);
	 }
	 	 public Long getidEstado() {
        return (this.idEstado);
	 }


    public void reset(ActionMapping mapping,
                      HttpServletRequest request) {
        nombre=null;
        fecha=null;
		comentario=null;
		calificacion=null;
		idLugar=null;
		estado=null;
		idEstado=null;
    }


    public ActionErrors validate(ActionMapping mapping,
                                 HttpServletRequest request) {

        // Ejecuta las validaciones proporcionadas por Struts-Validator
        ActionErrors errores = super.validate(mapping, request);

        // Validaciones no cubiertas por Struts-Validator

        return errores;

    }

}
