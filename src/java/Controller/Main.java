/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Casilla;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
            out.println("<html>\n" +
"    <head>\n" +
"        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n" +
"        <title>JSP Page</title>\n" +
"    </head>\n" +
"    <body>\n" +
"        <h1>Monopoly</h1>\n" +
"        <table border=\"1\">\n" +
"  <tr>\n" +
"      <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>\n" +
"    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>\n" +
"    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>\n" +
"    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>\n" +
"    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>\n" +
"    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>\n" +
"    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>\n" +
"    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>\n" +
"    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>\n" +
"    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>\n" +
"    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>\n" +
"  </tr>\n" +
"  <tr>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td colspan=\"9\" rowspan=\"9\"></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"  </tr>\n" +
"  <tr>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"  </tr>\n" +
"  <tr>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"  </tr>\n" +
"  <tr>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"  </tr>\n" +
"  <tr>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"  </tr>\n" +
"  <tr>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"  </tr>\n" +
"  <tr>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"  </tr>\n" +
"  <tr>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"  </tr>\n" +
"  <tr>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"  </tr>\n" +
"  <tr>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"    <td><h2>"+ System.out.println("Hola") +"</h2><p>Jugadores: Jug1</p><p>Precio</p></td>\n" +
"  </tr>\n" +
"</table>");
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