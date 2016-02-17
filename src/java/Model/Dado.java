/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Random;

/**
 *
 * @author ivan
 */
public class Dado {
    private int valor=0;

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
