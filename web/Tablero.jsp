<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "Controller.Main"%>

<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="p" class="Model.Partida" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h4 {
                border-bottom: 3px double;
                margin-top: 0;
                padding: 0.5em 0em;
                text-align: center;
            }
            p {
                text-align: center;
            }
            table {
                background-color: #C4DFBE;
                margin: 0 auto;
                border: 4px solid #CC0000;
            }
            tbody {
                border: 0;
            }
            div {
                border: 4px double;
                height: 7.5em;
                width: 9em;
            }
            #centre {
                border: none;
                margin: 0 auto;
            }
        </style>
    </head>
    <body>
        <table border="1">
            <tr>
                <th>
                    <div>
                        <h4>${ p.getCalle(8).nombre }</h4>
                            <!--${p.getCalle(8).valor}-->
                        <c:if test="${ p.getJugador(0).posicion == 8 }">
                           <p>${ p.getJugador(0).nombre }</p>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 8 }">
                           <p>${ p.getJugador(1).nombre }</p>
                        </c:if>
                    </div>
                </th>
                <th>
                    <div>
                        <h4 style="background-color:rgba(255, 167, 0, 0.78);">
                            ${ p.getCalle(9).nombre }
                        </h4>
                            <p>${p.getCalle(9).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 9 }">
                           <p>${ p.getJugador(0).nombre }</p>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 9 }">
                           <p>${ p.getJugador(1).nombre }</p>
                        </c:if>
                    </div>
                </th>
                <th>
                    <div>
                        <h4 style="background-color: rgba(255, 167, 0, 0.78);">${ p.getCalle(10).nombre }</h4>
                            ${p.getCalle(10).valor}€<p>
                        <c:if test="${ p.getJugador(0).posicion == 10 }">
                           <p>${ p.getJugador(0).nombre }</p>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 10 }">
                           <p>${ p.getJugador(1).nombre }</p>
                        </c:if>
                    </div>
                </th>
                <th>
                    <div>
                        <h4 style="background-color: rgba(255, 167, 0, 0.78);">${ p.getCalle(11).nombre }</h4>
                            <p>${p.getCalle(11).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 11 }">
                           <p>${ p.getJugador(0).nombre }</p>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 11 }">
                           <p>${ p.getJugador(1).nombre }</p>
                        </c:if>
                    </div>
                </th>
                <th>
                    <div>
                        <h4>${ p.getCalle(12).nombre }</h4>
                        <!--<p>${p.getCalle(12).valor}€</p>-->
                        <c:if test="${ p.getJugador(0).posicion == 12 }">
                           <p>${ p.getJugador(0).nombre }</p>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 12 }">
                           <p>${ p.getJugador(1).nombre }</p>
                        </c:if>
                    </div>
                </th>
              </tr>
              <tr>
                  <td>
                      <div>
                        <h4 style="background-color: rgba(255, 0, 0, 0.78);">${ p.getCalle(7).nombre }</h4>
                        <p>${p.getCalle(7).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 7 }">
                           <p>${ p.getJugador(0).nombre }</p>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 7 }">
                           <p>${ p.getJugador(1).nombre }</p>
                        </c:if>
                       </div>
                  </td>
                  
                  <td colspan="3" rowspan="3">
                      <div id="centre">
                          <h5>${ p.getJugador(0).nombre }: ${ p.getJugador(0).dinero }€</h5>
                          <h5>${p.getJugador(0).mensaje}</h5>
                          <h5>${ p.getJugador(1).nombre }: ${ p.getJugador(1).dinero }€</h5>
                          <h5>${p.getJugador(1).mensaje}</h5>
                        <form action="Main" method="GET">
                            <input type="submit" value="tirar" name="check"/>
                        </form>
                        <form action="Main" method="GET">
                            <input type="submit" value="comprar" name="check"/>
                        </form>
                        <form action="Main" method="GET">
                            <input type="submit" value="finalizarTurno" name="check"/>
                        </form>
                      </div>
                  </td> 
                  
                <td>
                    <div>
                        <h4 style="background-color: rgba(60, 158, 0, 0.84);">${ p.getCalle(13).nombre }</h4>
                        <p>${p.getCalle(13).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 13 }">
                           <p>${ p.getJugador(0).nombre }</p>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 13 }">
                           <p>${ p.getJugador(1).nombre }</p>
                        </c:if>
                    </div>
                </td>
              </tr>
              <tr>
                  <td>
                      <div>
                      <h4 style="background-color: rgba(255, 0, 0, 0.78);">${ p.getCalle(6).nombre }</h4>
                      <p>${p.getCalle(6).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 6 }">
                           <p>${ p.getJugador(0).nombre }</p>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 6 }">
                           <p>${ p.getJugador(1).nombre }</p>
                        </c:if>
                       </div>
                  </td>
                  <td>
                      <div>
                        <h4 style="background-color: rgba(60, 158, 0, 0.84);">${ p.getCalle(14).nombre }</h4>
                        <p>${p.getCalle(14).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 14 }">
                           <p>${ p.getJugador(0).nombre }</p>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 14 }">
                           <p>${ p.getJugador(1).nombre }</p>
                        </c:if>
                       </div>
                  </td>
              </tr>
              <tr>
                  <td>
                    <div>
                        <h4 style="background-color: rgba(255, 0, 0, 0.78);">${ p.getCalle(5).nombre }</h4>
                        <p>${p.getCalle(5).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 5 }">
                           <p>${ p.getJugador(0).nombre }</p>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 5 }">
                           <p>${ p.getJugador(1).nombre }</p>
                        </c:if>
                    </div>
                  </td>
                  <td>
                      <div>
                        <h4 style="background-color: rgba(52, 181, 245, 0.44);">${ p.getCalle(15).nombre }</h4>
                        <p>${p.getCalle(15).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 15 }">
                           <p>${ p.getJugador(0).nombre }</p>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 15 }">
                           <p>${ p.getJugador(1).nombre }</p>
                        </c:if>
                  </div>
                  </td>
              </tr>
              <tr>
                  <td>
                      <div>
                        <h4>${ p.getCalle(4).nombre }</h4>
                        <!--<p>${p.getCalle(4).valor}€</p>-->
                        <c:if test="${ p.getJugador(0).posicion == 4 }">
                           <p>${ p.getJugador(0).nombre }</p>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 4 }">
                           <p>${ p.getJugador(1).nombre }</p>
                        </c:if>
                       </div>
                  </td>
                  <td>
                      <div>
                            <h4 style="background-color: rgba(140, 0, 0, 0.74);">${ p.getCalle(3).nombre }</h4>
                            <p>${p.getCalle(3).valor}€</p>
                            <c:if test="${ p.getJugador(0).posicion == 3 }">
                               <p>${ p.getJugador(0).nombre }</p>
                            </c:if>
                            <c:if test="${ p.getJugador(1).posicion == 3 }">
                               <p>${ p.getJugador(1).nombre }</p>
                            </c:if>
                       </div>
                  </td>
                  <td>
                      <div>
                        <h4 style="background-color: rgba(140, 0, 0, 0.74);">${ p.getCalle(2).nombre }</h4>
                        <p>${p.getCalle(2).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 2 }">
                           <p>${ p.getJugador(0).nombre }</p>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 2 }">
                           <p>${ p.getJugador(1).nombre }</p>
                        </c:if>
                       </div>
                  </td>
                  <td>
                      <div>
                        <h4 style="background-color: rgba(152, 117, 117, 0.74);">${ p.getCalle(1).nombre }</h4>
                        <p>${p.getCalle(1).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 1 }">
                           <p>${ p.getJugador(0).nombre }</p>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 1 }">
                           <p>${ p.getJugador(1).nombre }</p>
                        </c:if>
                       </div>
                  </td>
                  <td>
                      <div>
                            <h4>${ p.getCalle(0).nombre }</h4>
                            <c:if test="${ p.getJugador(0).posicion == 0 }">
                               <p>${ p.getJugador(0).nombre }</p>
                            </c:if>
                            <c:if test="${ p.getJugador(1).posicion == 0 }">
                               <p>${ p.getJugador(1).nombre }</p>
                            </c:if>
                       </div>
                  </td>
              </tr>
</table>
    </body>
</html>
