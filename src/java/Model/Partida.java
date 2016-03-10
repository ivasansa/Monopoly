package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Random;

public class Partida implements Serializable {
    
    private int valor=0;
    
    public ArrayList <Jugador> listaJugadores;
    public ArrayList <Calle> listaCalles;
    
    
    public Partida() {
        listaJugadores = new ArrayList <>();
        listaCalles = new ArrayList <>();
    }
    
    public void afegirJugador(Jugador J) {
        listaJugadores.add(J);
    }
    
    public Jugador getJugador(int index) {
        return listaJugadores.get(index);
    }

    public void afegirCalle(Calle c) {
        listaCalles.add(c);
    }
    
    public Calle getCalle(int index) {
        return listaCalles.get(index);
    }
    
    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public void tirar(){
        Random r = new Random();
        this.valor = r.nextInt(7-1) + 1;
    }

    public ArrayList<Jugador> getListaJugadores() {
        return listaJugadores;
    }

    public void setListaJugadores(ArrayList<Jugador> listaJugadores) {
        this.listaJugadores = listaJugadores;
    }

    public ArrayList<Calle> getListaCalles() {
        return listaCalles;
    }

    public void setListaCalles(ArrayList<Calle> listaCalles) {
        this.listaCalles = listaCalles;
    }
    
    public boolean jugadorEnCasillaComprada(Jugador j){
        if(this.listaCalles.get(j.posicion).propietario != "NoComprable" && this.listaCalles.get(j.posicion).propietario != "Banca"){
            return true;
        }else{
            return false;
        }
    }
    
    public boolean jugadorEnCasillaComprable(Jugador j){
        if(this.listaCalles.get(j.posicion).propietario == "Banca"){
            return true;
        }else{
            return false;
        }
    }
    
    
    
    
}
