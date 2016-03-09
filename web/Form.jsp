<%-- 
    Document   : Form
    Created on : 02-mar-2016, 17:33:47
    Author     : ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
                <form action="Main" method="GET">
            <input type="submit" name="tirarDados" value="5"/>
        </form>
        
        <form action="Main" method="GET">
            <input type="text" name="jug1" value="escriu nom"/>
            <input type="text" name="jug2" value="escriu nom"/>
            <input type="text" name="check" value="check"/>
            <input type="submit" value="GO" name="j"/>
        </form>
    </body>
</html>
