package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Random;

public class Partida implements Serializable {
    
    private int valor=0;
    
    public ArrayList <Jugador> listaJugadores;

    public Partida() {
        listaJugadores = new ArrayList <>();
    }
    
    public void afegirJugador(Jugador J) {
        listaJugadores.add(J);
    }
    
    public Jugador getJugador(int index) {
        return listaJugadores.get(index);
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
    
}
