/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Calle;
import Model.Casilla;
import Model.Jugador;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
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
        ArrayList<Casilla> listaCasillas = new ArrayList<>();
        listaCasillas.add(new Casilla("Go"));
    }
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            System.out.println("valordado: " + request.getParameter("tirarDados"));
            System.out.println("nom usuari " + request.getParameter("nombre"));
            
            ArrayList <Calle> listaCalles = new ArrayList <>();
            
            listaCalles.add( new Calle("Rambla", 54, "Azul") );
            listaCalles.add( new Calle("Diagonal", 4, "Rojo") );
            listaCalles.add( new Calle("Gran Via", 64, "Rojo") );
            
             request.setAttribute("listaCalles", listaCalles);
            
            Iterator <Calle> mi_iterador = listaCalles.iterator();
//
//            while(mi_iterador.hasNext()){
//                System.out.println(mi_iterador.next().);
//            }
            
            Jugador Jugador1 = new Jugador();
            Jugador1.setDinero(1000);
            request.setAttribute("Jugador1", Jugador1);
            RequestDispatcher rd = request.getRequestDispatcher("/Tablero.jsp");
            
            
            rd.forward(request, response);
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
