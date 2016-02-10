/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author ivan
 */
public class Calle extends Casilla {
    protected int valor=0; 
    protected String color="";

    public Calle(String nombre) {
        super(nombre);
    }

    public Calle(String nombre, int valor) {
        super(nombre);
        this.valor=valor;
    }
    
    

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }
    
    
}
