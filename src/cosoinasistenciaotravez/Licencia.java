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
public class Licencia {

    private int idLicencia;
    private Docente docente;
    private LocalDate fechaInicio;
    private LocalDate fechaFin;
    private String tipo;

    public Licencia(int idLicencia, Docente docente, LocalDate fechaInicio, LocalDate fechaFin, String tipo) {
        this.idLicencia = idLicencia;
        this.docente = docente;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.tipo = tipo;
    }

    // Validación básica
    public boolean validarLicencia() {
        return !tipo.isEmpty() && fechaFin.isAfter(fechaInicio);
    }

}


