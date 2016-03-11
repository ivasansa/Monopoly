<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "Controller.Main"%>

<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="p" class="Model.Partida" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <title>JSP Page</title>
        <style>
            body {
                margin: 0;
            }
            h4 {
                border-bottom: 3px double;
                margin-top: 0;
                padding: 0.5em 0em;
                text-align: center;
            }
            #go {
                /*background: url(http://goodstuffathome.com/wp-content/uploads/2011/09/monopoly-pass-go.jpg);*/
                /*background-size: cover;*/
                color: red;
                padding-top: 1em;
                text-align: center;
            }
            #carcel {
                background: url(https://c1.staticflickr.com/1/469/18560942769_f16c8df9ed_b.jpg);
                background-size: cover;
            }
            #jail {
                background: url(http://vignette1.wikia.nocookie.net/monopoly/images/4/44/GO_TO_JAIL.jpg);
                background-size: cover;
            }
            #parking {
                background: url(http://www.swiss-monopoly.ch/images/parking_large.png); 
                background-size: cover;
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
/*                border: 4px double;*/
                height: 7.5em;
                width: 9em;
            }
            #centre {
                /*border: 3px solid red;*/
                margin: 0 auto;
                width: 70%;
                height: 100%;
            }
            #tirar {
                text-align: center;
                margin-bottom: 1em;
            }
            #comprar, #turno {
                display: inline-block;
            }
            #btns {
                width: 100%;
                text-align: center;
                height: inherit;
            }
            .jug0 {
                color: red;
                margin-left: 40%;
            }
            #jug0 {
                margin-left: 0!important;
            }
            .jug1 {
                color: blue;
                margin-left: 10%;
            }
        </style>
    </head>
    <body>
        <table border="1">
            <tr>
                <th>
                    <div id="parking">
                        <h4 style="border:none"></h4>
                        <c:if test="${ p.getJugador(0).posicion == 8 }">
                           <i class="fa fa-user jug0"></i>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 8 }">
                           <i class="fa fa-user jug1"></i>
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
                           <i class="fa fa-user jug0"></i>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 9 }">
                           <i class="fa fa-user jug1"></i>
                        </c:if>
                    </div>
                </th>
                <th>
                    <div>
                        <h4 style="background-color: rgba(255, 167, 0, 0.78);">${ p.getCalle(10).nombre }</h4>
                            ${p.getCalle(10).valor}€<p>
                        <c:if test="${ p.getJugador(0).posicion == 10 }">
                           <i class="fa fa-user jug0"></i>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 10 }">
                           <i class="fa fa-user jug1"></i>
                        </c:if>
                    </div>
                </th>
                <th>
                    <div>
                        <h4 style="background-color: rgba(255, 167, 0, 0.78);">${ p.getCalle(11).nombre }</h4>
                            <p>${p.getCalle(11).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 11 }">
                           <i class="fa fa-user jug0"></i>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 11 }">
                           <i class="fa fa-user jug1"></i>
                        </c:if>
                    </div>
                </th>
                <th>
                    <div id='jail'>
                        <h4 style="border:none"></h4>
                        <c:if test="${ p.getJugador(0).posicion == 12 }">
                           <i class="fa fa-user jug0"></i>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 12 }">
                           <i class="fa fa-user jug1"></i>
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
                           <i class="fa fa-user jug0"></i>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 7 }">
                           <i class="fa fa-user jug1"></i>
                        </c:if>
                       </div>
                  </td>
                  
                  <td colspan="3" rowspan="3">
                      <div id="centre">
                          <h5>
                          <c:if test="${ p.getJugador(0).miTurno }">
                              <i class="fa fa-hourglass-o"></i>
                        </c:if>
                          <i id="jug0" class="fa fa-user jug0"></i> ${ p.getJugador(0).nombre }: ${ p.getJugador(0).dinero }€</h5>
                          <h5>${p.getJugador(0).mensaje}</h5>
                           <h5>
                          <c:if test="${ p.getJugador(1).miTurno }">
                              <i class="fa fa-hourglass-o"></i>
                        </c:if>
                          <i class="fa fa-user jug1"></i> ${ p.getJugador(1).nombre }: ${ p.getJugador(1).dinero }€</h5>
                          <h5>${p.getJugador(1).mensaje}</h5>
                          
                        <form id="tirar" action="Main" method="GET">
                            <input type="submit" value="tirar" name="check"/>
                        </form>
                        <div id="btns">
                            <form id="comprar" action="Main" method="GET">
                                <input type="submit" value="comprar" name="check"/>
                            </form>
                            <form id="turno" action="Main" method="GET">
                                <input type="submit" value="finalizarTurno" name="check"/>
                            </form>
                        </div>
                          
                      </div>
                  </td> 
                  
                <td>
                    <div>
                        <h4 style="background-color: rgba(60, 158, 0, 0.84);">${ p.getCalle(13).nombre }</h4>
                        <p>${p.getCalle(13).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 13 }">
                           <i class="fa fa-user jug0"></i>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 13 }">
                           <i class="fa fa-user jug1"></i>
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
                           <i class="fa fa-user jug0"></i>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 6 }">
                           <i class="fa fa-user jug1"></i>
                        </c:if>
                       </div>
                  </td>
                  <td>
                      <div>
                        <h4 style="background-color: rgba(60, 158, 0, 0.84);">${ p.getCalle(14).nombre }</h4>
                        <p>${p.getCalle(14).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 14 }">
                           <i class="fa fa-user jug0"></i>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 14 }">
                           <i class="fa fa-user jug1"></i>
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
                           <i class="fa fa-user jug0"></i>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 5 }">
                           <i class="fa fa-user jug1"></i>
                        </c:if>
                    </div>
                  </td>
                  <td>
                      <div>
                        <h4 style="background-color: rgba(52, 181, 245, 0.44);">${ p.getCalle(15).nombre }</h4>
                        <p>${p.getCalle(15).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 15 }">
                           <i class="fa fa-user jug0"></i>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 15 }">
                           <i class="fa fa-user jug1"></i>
                        </c:if>
                  </div>
                  </td>
              </tr>
              <tr>
                  <td>
                      <div id='carcel'>
                          <h4 style="border:none"></h4>
                        <c:if test="${ p.getJugador(0).posicion == 4 }">
                           <i class="fa fa-user jug0"></i>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 4 }">
                           <i class="fa fa-user jug1"></i>
                        </c:if>
                       </div>
                  </td>
                  <td>
                      <div>
                            <h4 style="background-color: rgba(140, 0, 0, 0.74);">${ p.getCalle(3).nombre }</h4>
                            <p>${p.getCalle(3).valor}€</p>
                            <c:if test="${ p.getJugador(0).posicion == 3 }">
                               <i class="fa fa-user jug0"></i>
                            </c:if>
                            <c:if test="${ p.getJugador(1).posicion == 3 }">
                               <i class="fa fa-user jug1"></i>
                            </c:if>
                       </div>
                  </td>
                  <td>
                      <div>
                        <h4 style="background-color: rgba(140, 0, 0, 0.74);">${ p.getCalle(2).nombre }</h4>
                        <p>${p.getCalle(2).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 2 }">
                           <i class="fa fa-user jug0"></i>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 2 }">
                           <i class="fa fa-user jug1"></i>
                        </c:if>
                       </div>
                  </td>
                  <td>
                      <div>
                        <h4 style="background-color: rgba(152, 117, 117, 0.74);">${ p.getCalle(1).nombre }</h4>
                        <p>${p.getCalle(1).valor}€</p>
                        <c:if test="${ p.getJugador(0).posicion == 1 }">
                           <i class="fa fa-user jug0"></i>
                        </c:if>
                        <c:if test="${ p.getJugador(1).posicion == 1 }">
                           <i class="fa fa-user jug1"></i>
                        </c:if>
                       </div>
                  </td>
                  <td>  
                      <div >
                          <h1 id="go">GO</h1>
                            <c:if test="${ p.getJugador(0).posicion == 0 }">
                               <i class="fa fa-user jug0"></i>
                            </c:if>
                            <c:if test="${ p.getJugador(1).posicion == 0 }">
                               <i class="fa fa-user jug1"></i>
                            </c:if>
                       </div>
                  </td>
              </tr>
        </table>
    </body>
</html>
