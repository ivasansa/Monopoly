<%-- 
    Document   : Tablero
    Created on : 03-feb-2016, 18:55:35
    Author     : ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "Controller.Main"%>
<jsp:useBean id="p" class="Model.Partida" scope="request"/>
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
        
        <form action="Main" method="GET">
            <input type="submit" name="tirarDados" value="5"/>
        </form>
        
        <form action="Main" method="GET">
            <input type="text" name="nombre" value="escriu nom"/>
        </form>
        
        
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
