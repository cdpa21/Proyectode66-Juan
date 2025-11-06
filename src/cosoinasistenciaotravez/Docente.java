package cosoinasistenciaotravez;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author kenwa
 */
public class Docente {
    private int idDocente;
    private String nombre;
    private String apellido;
    private String cedula;
    private String materia;
    
    public Docente(int idDocente, String nombre, String apellido, String cedula, String materia) {
        this.idDocente = idDocente;
        this.nombre = nombre;
        this.apellido = apellido;
        this.cedula = cedula;
        this.materia = materia;
    }

    // Set y Get
    public int getIdDocente() { return idDocente; }
    public void setIdDocente(int idDocente) { this.idDocente = idDocente; }

    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public String getApellido() { return apellido; }
    public void setApellido(String apellido) { this.apellido = apellido; }

    public String getCedula() { return cedula; }
    public void setCedula(String cedula) { this.cedula = cedula; }

    public String getMateria() { return materia; }
    public void setMateria(String materia) { this.materia = materia; }

    // coso para validar
    public boolean validarDatos() {
        return !nombre.isEmpty() && !apellido.isEmpty() && cedula.length() == 8;
    }

    static class java {

        public java() {
        }
    }
}

