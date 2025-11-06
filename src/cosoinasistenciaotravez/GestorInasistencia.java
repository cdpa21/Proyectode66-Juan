/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cosoinasistenciaotravez;
import java.util.ArrayList;
/**
 *
 * @author kenwa
 */
public class GestorInasistencia {
    private ArrayList<Inasistencia> listaInasistencia = new ArrayList<>();

    public void registrarInasistencia(Inasistencia i) {
        if (i.validarFechas()) {
            listaInasistencia.add(i);
        } else {
            System.out.println("Error: fechas invalidas en la inasistencia.");
        }
    }

    public ArrayList<Inasistencia> listarInasistencias() {
        return listaInasistencia;
    }

    public Inasistencia buscarPorDocente(int idDocente) {
        for (Inasistencia i : listaInasistencia) {
            if (i.getDocente().getIdDocente() == idDocente) {
                return i;
            }
        }
        return null;
    }
}


