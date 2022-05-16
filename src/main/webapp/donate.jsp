<%--
  Created by IntelliJ IDEA.
  User: bj-CP
  Date: 5/15/2022
  Time: 4:00 p. m.
  To change this template use File | Settings | File Templates.
--%>
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
<div class="container">
    <div class="row">
        <div class="col-sm">
            <h2>Donate for the Ocean</h2>
            <p>
                <span>
                    You can make donations to help us protect and conserve marine species. <br>
                    When you decide to donate, you support these actions:
                </span>
            </p>
            <p>
                <span>
                    <ol>
                        <li>Carry out <b>scientific research in Mexican ecosystems</b> to observe, measure and propose solutions that protect biodiversity.</li>
                        <li>Denounce the corporations that with their business practices  put the <b>balance of natural areas at risk.</b></li>
                        <li><b>Train and strengthen volunteer groups throughout the country</b> that carry out talks, conferences, spokespersons and activism <br> to defend the planet.</li>
                        <li>Demand from governments at all <b>levels measures and legislation that establish natural conservation measures.</b></li>
                    </ol>
                </span>
            </p>
        </div>
        <div class="col-sm">
            <h2>Donor Information</h2>
            <form method="post" action="hello-servlet" autocomplete="off">
                <label for="nombre">¿Cuál es tu nombre?</label><br>
                <input type="text" id="nombre" name="nombre"><br>
                <label for="apellido">¿Cuál es tu apellido?</label><br>
                <input type="text" id="apellido" name="apellido"><br><br>
                <label for="pais">¿Cuál es tu pais?</label><br>
                <input type="text" id="pais" name="pais"><br><br>
                <label for="ciudad">¿Cuál es tu ciudad?</label><br>
                <input type="text" id="ciudad" name="ciudad"><br><br>
                <label for="telefono">¿Cuál es tu telefono?</label><br>
                <input type="text" id="telefono" name="telefono"><br><br>
                <label for="correo">¿Cuál es tu correo?</label><br>
                <input type="text" id="correo" name="correo"><br><br>
                <label for="donacion">¿De cuanto es tu donacion?</label><br>
                <input type="text" id="donacion" name="donacion"><br><br>
                <input type="submit" value="Submit" class="btnDonar">
            </form>
        </div>
    </div>
</div>
<div id="footer"></div>
</body>
</html>
