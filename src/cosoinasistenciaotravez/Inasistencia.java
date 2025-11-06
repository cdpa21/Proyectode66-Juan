/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cosoinasistenciaotravez;
import java.time.LocalDate;
/**
 *
 * @author kenwa
 */
public class Inasistencia {

    private int idInasistencia;
    private Docente docente;
    private LocalDate fechaInicio;
    private LocalDate fechaFin;
    private String motivo;

    public Inasistencia(int idInasistencia, Docente docente, LocalDate fechaInicio, LocalDate fechaFin, String motivo) {
        this.idInasistencia = idInasistencia;
        this.docente = docente;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.motivo = motivo;
    }

    //set y get
    public int getIdInasistencia() { return idInasistencia; }
    public void setIdInasistencia(int idInasistencia) { this.idInasistencia = idInasistencia; }

    public Docente getDocente() { return docente; }
    public void setDocente(Docente docente) { this.docente = docente; }

    public LocalDate getFechaInicio() { return fechaInicio; }
    public void setFechaInicio(LocalDate fechaInicio) { this.fechaInicio = fechaInicio; }

    public LocalDate getFechaFin() { return fechaFin; }
    public void setFechaFin(LocalDate fechaFin) { this.fechaFin = fechaFin; }

    public String getMotivo() { return motivo; }
    public void setMotivo(String motivo) { this.motivo = motivo; }

    //aprobacion
    public boolean validarFechas() {
        return fechaFin.isAfter(fechaInicio) || fechaFin.isEqual(fechaInicio);
    }
}

