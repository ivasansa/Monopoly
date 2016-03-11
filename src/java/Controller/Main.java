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
            Partida p = new Partida();
            int size = 0;

            HttpSession sessio = request.getSession();

            if ((Partida) sessio.getAttribute("p") != null) {
                p = (Partida) sessio.getAttribute("p");
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

                    p.afegirJugador(new Jugador(jug1, 3000, 0));
                    p.afegirJugador(new Jugador(jug2, 3000, 0));

                    p.afegirCalle(new Calle("Go", 999999999, "Go", "NoComprable"));

                    p.afegirCalle(new Calle("València", 30, "Marrón", "Banca"));
                    p.afegirCalle(new Calle("Murcia", 40, "Marrón", "Banca"));
                    p.afegirCalle(new Calle("Navas de Tolosa", 50, "Marrón", "Banca"));

                    p.afegirCalle(new Calle("Cole", 999999999, "Cole", "NoComprable"));

                    p.afegirCalle(new Calle("Agricultura", 70, "Rojo", "Banca"));
                    p.afegirCalle(new Calle("Espronceda", 80, "Rojo", "Banca"));
                    p.afegirCalle(new Calle("Fluvià", 90, "Rojo", "Banca"));

                    p.afegirCalle(new Calle("Parquing", 999999999, "Parquing", "NoComprable"));

                    p.afegirCalle(new Calle("Tánger", 120, "Amarillo", "Banca"));
                    p.afegirCalle(new Calle("Martí i Pujol", 130, "Amarillo", "Banca"));
                    p.afegirCalle(new Calle("Nelson Mandela", 140, "Amarillo", "Banca"));

                    p.afegirCalle(new Calle("Vaya al Cole", 999999999, "VayaCole", "NoComprable"));

                    p.afegirCalle(new Calle("Presi Companys", 160, "Verde", "Banca"));
                    p.afegirCalle(new Calle("2 de Mayo", 170, "Verde", "Banca"));
                    p.afegirCalle(new Calle("Independència", 200, "rgba(0, 88, 255, 0.3)", "Banca"));

                    p.listaJugadores.get(0).setMiTurno(true);

                    request.setAttribute("p", p);

                    sessio.setAttribute("p", p);
                    System.out.println("se");

                    rd = request.getRequestDispatcher("/Tablero.jsp");
                    rd.forward(request, response);

                    break;

                case "tirar":
                    System.out.println("tirar llamada");

                    p.tirar();

                    int valorDados = p.getValor();

                    /*  Cuando tiras los dados, el bucle busca al jugador con el turno y mueve su posición.
                     Cuando tira, se le asigna el boolean HasTirado a true para evitar múltiples tiradas por turno
                     */
                    String n = "";
                    for (int i = 0; i < size; i++) {
                        //Tiramos si es nuestro turno y no has tirado antes
                        if (p.listaJugadores.get(i).isMiTurno() && !p.getJugador(i).isHasTirado()) {
                            if (p.getJugador(i).getPosicion() + valorDados >= 16) { //Si se le acaba el tablero, da la vuelta y recibe el dinero
                                p.getJugador(i).setPosicion((p.getJugador(i).getPosicion() + valorDados) - 16);
                                p.getJugador(i).sumarDinero(200);
                            }
                            //Si caemos en la càrcel, nos manda a ella (duh)
                            //y nos quitan la fianza
                            else if (p.getJugador(i).getPosicion() + valorDados == 12){
                                p.getJugador(i).setPosicion(4);
                                p.getJugador(i).restarDinero(500);
                                n = " y " + p.getJugador(i).getNombre() + " ha pagado 500" + "€ por salir de la cárcel ";
                            }
                            else {
                                p.getJugador(i).setPosicion(p.getJugador(i).getPosicion() + valorDados);
                            }
                            p.getJugador(i).setHasTirado(true);
                            
                            
                            
                            //Mirar si ha caido en una casilla comprada
                            String m = "";
                            if (p.jugadorEnCasillaComprada(p.getJugador(i))) {
                                for (int j = 0; j < size; j++) {
                                    //Mira que jugador tiene comprado i hace la transferencia de dinero (1/6 del valor de la casilla)
                                    if (p.listaCalles.get(p.getJugador(i).getPosicion()).getPropietario().equals(p.listaJugadores.get(j).getNombre())) {
                                        p.listaJugadores.get(j).sumarDinero((p.listaCalles.get(p.getJugador(i).getPosicion()).getValor()) / 6);
                                        p.listaJugadores.get(i).restarDinero((p.listaCalles.get(p.getJugador(i).getPosicion()).getValor()) / 6);
                                        int dineroPagado = (p.listaCalles.get(p.getJugador(i).getPosicion()).getValor()) / 6;
                                        m = " y " + p.getJugador(i).getNombre() + " ha pagado " + dineroPagado + "€ a " + p.getJugador(j).getNombre();
                                    }
                                }
                            }
                            p.getJugador(i).setMensaje(" ha sacado " + valorDados + m + n);
                        }
                    }
                    
                    request.setAttribute("p", p);
                    sessio.setAttribute("p", p);
                    rd = request.getRequestDispatcher("/Tablero.jsp");
                    rd.forward(request, response);
                    break;

                case "comprar":
                    System.out.println("comprar llamada");

                    for (int i = 0; i < size; i++) {
                        //Miramos que sea su turno y que ya hayas tirado los dados
                        if (p.listaJugadores.get(i).isMiTurno() && p.getJugador(i).isHasTirado()) {
                            //Miramos si estamos en una casilla comprable
                            if (p.jugadorEnCasillaComprable(p.getJugador(i))) {
                                //Se asegura de que tengas suficiente dinero
                                if (p.getJugador(i).getDinero() >= p.listaCalles.get(p.getJugador(i).getPosicion()).getValor()) {
                                    //Hacemos Transacción
                                    p.getJugador(i).restarDinero(p.listaCalles.get(p.getJugador(i).getPosicion()).getValor());
                                    p.listaCalles.get(p.getJugador(i).getPosicion()).setPropietario(p.getJugador(i).getNombre());
                                    
                                    //MENSAJE-----------------------------------------
                                    
                                    String calleComprada = p.listaCalles.get(p.getJugador(i).getPosicion()).getNombre();
                                    int valorCalle = p.listaCalles.get(p.getJugador(i).getPosicion()).getValor();
                                    p.getJugador(i).setMensaje(" ha comprado la calle " + calleComprada + " por valor de " + valorCalle + "€");
                                    
                                }
                            }
                        }
                    }

                    request.setAttribute("p", p);
                    sessio.setAttribute("p", p);
                    rd = request.getRequestDispatcher("/Tablero.jsp");
                    rd.forward(request, response);
                    break;

                case "finalizarTurno":
                    int flag = 0; //Flag para romper el bucle cuando efectuamos el cambio de turno

                    /*For que busca el jugador con el turno y le asigna el turno al siguiente en la lista*/
                    for (int i = 0; i < size; i++) {

                        if (p.listaJugadores.get(i).isMiTurno() && flag == 0) {
                            if (i == (size - 1)) {
                                p.getJugador(0).setMiTurno(true);
                            } else {
                                p.getJugador(i + 1).setMiTurno(true);
                            }
                            p.getJugador(i).setMiTurno(false);
                            p.getJugador(i).setHasTirado(false);
                            flag = 1;
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
