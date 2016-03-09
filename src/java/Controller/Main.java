/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Calle;
import Model.Jugador;
import Model.Partida;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
            int size = 0;
            
            HttpSession sessio = request.getSession();
            
            if((Partida)sessio.getAttribute("p") != null){
                p= (Partida)sessio.getAttribute("p");
                size = p.listaJugadores.size();
            }
            
            RequestDispatcher rd;
            
                switch (request.getParameter("check")) {
                case "formulario":
                    
                    p = new Partida();
                    
                    System.out.println("partida creada");
                    
                    String jug1 = request.getParameter("jug1");
                    String jug2 = request.getParameter("jug2");

                    System.out.println(jug1);
                    System.out.println(jug2);

                    p.afegirJugador( new Jugador(jug1, 3000, 0) );
                    p.afegirJugador( new Jugador(jug2, 3000, 0) );
                    
                    p.afegirCalle(new Calle("Go", 999999999, "Go"));
                    
                    p.afegirCalle(new Calle("València", 30, "Marrón"));
                    p.afegirCalle(new Calle("Murcia", 40, "Marrón"));
                    p.afegirCalle(new Calle("Navas de Tolosa", 50, "Marrón"));
                    
                    p.afegirCalle(new Calle("Cole", 999999999, "Cole"));
                    
                    p.afegirCalle(new Calle("Agricultura", 70, "Rojo"));
                    p.afegirCalle(new Calle("Espronceda", 80, "Rojo"));
                    p.afegirCalle(new Calle("Fluvià", 90, "Rojo"));
                    
                    p.afegirCalle(new Calle("Parquing", 999999999, "Parquing"));
                    
                    p.afegirCalle(new Calle("Tánger", 120, "Amarillo"));
                    p.afegirCalle(new Calle("Martí i Pujol", 130, "Amarillo"));
                    p.afegirCalle(new Calle("Nelson Mandela", 140, "Amarillo"));
                    
                     p.afegirCalle(new Calle("Vaya al Cole", 999999999, "VayaCole"));
                    
                    p.afegirCalle(new Calle("Presi Companys", 160, "Verde"));
                    p.afegirCalle(new Calle("2 de Mayo", 170, "Verde"));
                    p.afegirCalle(new Calle("Independència", 140, "Verde"));
                    
                    
                    p.listaJugadores.get(0).setMiTurno(true);
                    
                    
                    request.setAttribute("p", p);
                    
                    
                    sessio.setAttribute("p", p);
                    System.out.println("se");
                    
                    rd = request.getRequestDispatcher("/Tablero.jsp");
                    rd.forward(request, response);
                    
                    
                    
                    break;
                    
                case "tirar":
                    System.out.println("tirar llamada");
                    
//                    p = (Partida) request.getAttribute("p");
                    
                    p.tirar();
                    
                    int valorDados = p.getValor();
                    
                    for(int i=0; i < size; i++){
                        if(p.listaJugadores.get(i).isMiTurno() && !p.getJugador(i).isHasTirado()){
                            if(p.getJugador(i).getPosicion() + valorDados >= 16){
                                p.getJugador(i).setPosicion((p.getJugador(i).getPosicion() + valorDados) - 16);
                            }
                            p.getJugador(i).setPosicion(p.getJugador(i).getPosicion() + valorDados);
                            p.getJugador(i).setHasTirado(true);
                        }
                    }
                    
//                    p.getJugador(0).setPosicion(p.getJugador(0).getPosicion() + 1);
                    
                    request.setAttribute("p", p);
                    sessio.setAttribute("p", p);
                    rd = request.getRequestDispatcher("/Tablero.jsp");
                    rd.forward(request, response);
                    break;
                    
                case "finalizarTurno":
                    int flag = 0;
                    for(int i=0; i < size; i++){
                        if(p.listaJugadores.get(i).isMiTurno() && flag == 0){
                            System.out.println(p.listaJugadores.get(i).getNombre() +" "+p.listaJugadores.get(i).isMiTurno());
                            if(i == (size-1) ){
                                p.getJugador(0).setMiTurno(true);
                            }else{
                                p.getJugador(i+1).setMiTurno(true);
                            }
                            p.getJugador(i).setMiTurno(false);
                            p.getJugador(i).setHasTirado(false);
                            flag = 1;
                            System.out.println(p.listaJugadores.get(i).getNombre() +" "+p.listaJugadores.get(i).isMiTurno());
                        }
                    }
                    request.setAttribute("p", p);
                    sessio.setAttribute("p", p);
                    rd = request.getRequestDispatcher("/Tablero.jsp");
                    rd.forward(request, response);
                    
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
