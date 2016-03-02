/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Casilla;
import Model.Jugador;
import Model.Partida;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Main", urlPatterns = {"/Main"})
public class Main extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    //http://localhost:8080/Monopoly/Main LLAMAR AL MAIN PRIMERO
    
    @Override
    public void init()
        throws ServletException {
    }
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            Partida  p = new Partida();
            
            request.setAttribute("p", p);
            RequestDispatcher rd = request.getRequestDispatcher("/Tablero.jsp");
            
            switch (request.getParameter("check")) {
                case "formulario":
                    System.out.println("check llamada");
                    
                    String jug1 = request.getParameter("jug1");
                    String jug2 = request.getParameter("jug2");

                    System.out.println(jug1);
                    System.out.println(jug2);

                    p.afegirJugador( new Jugador(jug1, 3000, 1) );
                    p.afegirJugador( new Jugador(jug2, 3000, 0) );
                    
                    rd.forward(request, response);
                    
                    break;
                case "tirar":
                    System.out.println("tirar llamada");
                    System.out.println(p.getJugador(0).getNombre());
                    
//                    rd.forward(request, response);
                    break;
            }
            
            
            
//            System.out.println("valordado: " + request.getParameter("tirarDados"));
//            System.out.println("nom usuari " + request.getParameter("nombre"));
//            
//            Jugador Jugador1 = new Jugador();
//            Jugador1.setDinero(1000);
            
//            request.setAttribute("p", p);
//            RequestDispatcher rd = request.getRequestDispatcher("/Tablero.jsp");
//            rd.forward(request, response);
//            
//            Dado dado1 = new Dado();
//            dado1.tirar();
//            Dado dado2 = new Dado();
//            dado2.tirar();
//            
//            
//            if (request.getParameter("tirarDados") != null){
//                
//            }
//            
//            ArrayList <Calle> listaCalles = new ArrayList <>();
//            
//            listaCalles.add( new Calle("Rambla", 54, "Azul") );
//            listaCalles.add( new Calle("Diagonal", 4, "Rojo") );
//            listaCalles.add( new Calle("Gran Via", 64, "Rojo") );
//            
//            request.setAttribute("listaCalles", listaCalles);
//            
//            Iterator <Calle> mi_iterador = listaCalles.iterator();
////
////            while(mi_iterador.hasNext()){
////                System.out.println(mi_iterador.next().);
////            }
            
            
            
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
