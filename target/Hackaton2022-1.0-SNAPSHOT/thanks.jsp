<%--
  Created by IntelliJ IDEA.
  User: bj-CP
  Date: 5/15/2022
  Time: 4:00 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.hto.hackaton2022.DonadorEntity" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Hack The Ocean</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="stylesCSS/style.css">
    <script
            src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous">
    </script>
    <script>
        $(function(){
            $("#header").load("header.html");
            $("#footer").load("footer.html");
        });
    </script>
</head>
<body>
    <div id="header"></div>
    <%String message= (String) request.getAttribute("message");%>
    <h2><%=message%></h2>
    <%if(message.contains("ERROR")){%>
        <a href="donate.jsp" class="btnDonar" style="text-decoration:none" >REINTENTAR TRANSACCION</a>
    <% } %>
    <div class="seccionTabla" style="overflow-x:auto;">
        <table border="1" id="tabla">
            <h1 id="encabezado">!JUNTOS POR UN MUNDO MEJOR¡</h1>
            <thead>
            <tr>
                <th>NOMBRE</th>
                <th>APELLIDO</th>
                <th>PAIS</th>
                <th>CIUDAD</th>
                <th>DONACION</th>
            </tr>
            </thead>
            <tbody>
            <%List<DonadorEntity> donaciones= (List<DonadorEntity>) request.getAttribute("donaciones");
            for (int i=0; i<donaciones.size();i++){%>
                <tr>
                    <td><%= donaciones.get(i).getNombre()%></td>
                    <td><%= donaciones.get(i).getApellido()%></td>
                    <td><%= donaciones.get(i).getPais()%></td>
                    <td><%= donaciones.get(i).getCiudad()%></td>
                    <td><%= donaciones.get(i).getCantidad()%></td>
                </tr>
            <% } %>
            </tbody>
        </table>
    </div>
    <div id="footer"></div>
</body>
</html>
