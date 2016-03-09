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
    </head>
    <body>
        <h1>${ p.getJugador(0).posicion }</h1>
        <h1>${ p.getJugador(1).posicion }</h1>
       
        
        <form action="Main" method="GET">
        <input type="submit" value="tirar" name="check"/>
    </form>
    
    <form action="Main" method="GET">
        <input type="submit" value="finalizarTurno" name="check"/>
    </form>
        
        <table border="1">
    
            
            <tr>
                <th>
            <h2>${ p.getCalle(8).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 8 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 8 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                </th>
                <th>
                    <h2>${ p.getCalle(9).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 9 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 9 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                </th>
                <th>
                    <h2>${ p.getCalle(10).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 10 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 10 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                </th>
                <th>
                    <h2>${ p.getCalle(11).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 11 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 11 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                </th>
                <th>
                    <h2>${ p.getCalle(12).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 12 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 12 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                </th>
              </tr>
              <tr>
                  <td>
                      <h2>${ p.getCalle(7).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 7 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 7 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                  </td>
                <td colspan="3" rowspan="3"></td>
                <td>
                    <h2>${ p.getCalle(13).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 13 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 13 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                </td>
              </tr>
              <tr>
                  <td>
                      <h2>${ p.getCalle(6).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 6 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 6 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                  </td>
                  <td>
                      <h2>${ p.getCalle(14).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 14 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 14 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                  </td>
              </tr>
              <tr>
                  <td>
                      <h2>${ p.getCalle(5).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 5 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 5 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                  </td>
                  <td>
                      <h2>${ p.getCalle(15).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 15 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 15 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                  </td>
              </tr>
              <tr>
                  <td>
                      <h2>${ p.getCalle(4).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 4 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 4 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                  </td>
                  <td>
                      <h2>${ p.getCalle(3).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 3 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 3 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                  </td>
                  <td>
                      <h2>${ p.getCalle(2).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 2 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 2 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                  </td>
                  <td>
                      <h2>${ p.getCalle(1).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 1 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 1 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                  </td>
                  <td>
                      <h2>${ p.getCalle(0).nombre }</h2>
                    <c:if test="${ p.getJugador(0).posicion == 0 }">
                       <p>${ p.getJugador(0).nombre }</p>
                    </c:if>
                    <c:if test="${ p.getJugador(1).posicion == 0 }">
                       <p>${ p.getJugador(1).nombre }</p>
                    </c:if>
                  </td>
              </tr>
            
            
            
            <!--<tr>-->
        
<!--    <th>
        <h2>Nombre Casilla 1</h2>
        <p>Jugadores: </p>
        <%--<c:if test="${ p.getJugador(0).posicion == 0 }">--%>
           <p>${ p.getJugador(0).nombre }</p>
        <%--</c:if>--%>
    </th>
    <th>
        <h2>Nombre Casilla 2</h2>
        <p>Jugadores: </p>
        <%--<c:if test="${ p.getJugador(0).posicion == 1 }">--%>
           <p>${ p.getJugador(0).nombre }</p>
        <%--</c:if>--%>
    </th>-->

   
    
<!--   <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>
    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>
    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>
    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>
    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>
    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>
    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>
    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>
    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>
  </tr>
  <tr>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td colspan="9" rowspan="9"></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
  </tr>
  <tr>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
  </tr>
  <tr>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
  </tr>
  <tr>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
  </tr>
  <tr>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
  </tr>
  <tr>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
  </tr>
  <tr>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
  </tr>
  <tr>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
  </tr>
  <tr>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
  </tr>
  <tr>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></td>
    <td><h2></h2></td>-->
  <!--</tr>-->
</table>
    </body>
</html>
