/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author ivan
 */
public class Casilla {
    protected String nombre = "";
    protected String propietario = "";
    /*public static String[] mostraJugadors(){
        String[] J = {};
        
        
        
        return J;
    }*/

    public Casilla(String nombre, String p) {
        this.nombre = nombre;
        this.propietario = p;
    }

    public String getNombre() {
        return nombre;
    }

    public String getPropietario() {
        return propietario;
    }
    
    
}
