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
       
        
        <table border="1">
  <tr>
        
    <th>
        <h2>Nombre Casilla 1</h2>
        <p>Jugadores: </p>
        <c:if test="${ p.getJugador(0).posicion == 0 }">
           <p>${ p.getJugador(0).nombre }</p>
        </c:if>
    </th>
    <th>
        <h2>Nombre Casilla 2</h2>
        <p>Jugadores: </p>
        <c:if test="${ p.getJugador(0).posicion == 1 }">
           <p>${ p.getJugador(0).nombre }</p>
        </c:if>
    </th>

    <form action="Main" method="GET">
        <input type="submit" value="tirar" name="check"/>
    </form>
    
    <form action="Main" method="GET">
        <input type="submit" value="finalizarTurno" name="check"/>
    </form>
    
 <!--    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>
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
  </tr>
</table>
    </body>
</html>
