package Model;

import java.io.Serializable;
import java.util.ArrayList;

public class Partida implements Serializable {
    
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
    
}
