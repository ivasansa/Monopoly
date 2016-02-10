<%-- 
    Document   : Tablero
    Created on : 03-feb-2016, 18:55:35
    Author     : ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "Controller.Main"%>
<jsp:useBean id="Jugador1" class="Model.Jugador" scope="request"/>
<jsp:useBean id="Jugador2" class="Model.Jugador" />
<jsp:setProperty name="Jugador2" property="nombre" value="jaimito" /> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>${Jugador1.nombre}</h1>
        <h1>${Jugador2.nombre}</h1>
        <h1>${Jugador1.dinero}</h1>
        <table border="1">
  <tr>
      <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>${Jugador1.dinero}€</p></th>
    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>
    <th><h2>Nombre Casilla</h2><p>Jugadores: Jug1</p><p>Precio</p></th>
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
    <td><h2></h2></td>
  </tr>
</table>
    </body>
</html>
