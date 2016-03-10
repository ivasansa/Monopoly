/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;

/**
 *
 * @author ivan
 */
public class Jugador implements Serializable {
    String nombre = "anonimo";
    int posicion = 0;
    int dinero = 0;
    boolean MiTurno = false;
    boolean hasTirado = false;
    String mensaje = "";

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public boolean isHasTirado() {
        return hasTirado;
    }

    public void setHasTirado(boolean hasTirado) {
        this.hasTirado = hasTirado;
    }

    public boolean isMiTurno() {
        return MiTurno;
    }

    public void setMiTurno(boolean MiTurno) {
        this.MiTurno = MiTurno;
    }

    public Jugador() {
    }

    public Jugador(String nombre, int dinero, int posicion) {
        this.nombre = nombre;
        this.posicion = posicion;
        this.dinero = dinero;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPosicion() {
        return posicion;
    }

    public void setPosicion(int posicion) {
        this.posicion = posicion;
    }
    
    public void sumarDinero(int dinero) {
        this.dinero += dinero;
    }
    
    public void restarDinero(int dinero) {
        this.dinero -= dinero;
    }
    
    public int getDinero() {
        return dinero;
    }

    public void setDinero(int dinero) {
        this.dinero = dinero;
    }
    
    
    
}
