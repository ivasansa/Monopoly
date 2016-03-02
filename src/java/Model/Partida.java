package Model;

import java.util.ArrayList;

public class Partida {
    
    public ArrayList <Jugador> llistaJugadores;

    public Partida() {
        llistaJugadores = new ArrayList <>();
    }
    
    public void afegirJugador(Jugador J) {
        llistaJugadores.add(J);
    }
    
}
