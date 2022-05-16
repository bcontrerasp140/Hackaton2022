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
<div class="container item">
    <div class="sta_consult">
        <label for="sta_name">Escriba el nombre del estado que requiere conocer tal como aparece en el mapa</label>
        <br>
        <input type="text" name="state" id="sta_name" placeholder="eg. Chihuahua">
    </div>
    <div class="sta_info">
        <div class="location"></div>
        <div class="name"></div>
        <div class="especie"></div>
    </div>
    <iframe src="https://public.opendatasoft.com/explore/embed/dataset/georef-mexico-state/map/?disjunctive.sta_code&disjunctive.sta_name&sort=year&refine.sta_name=Aguascalientes&refine.sta_name=Baja%20California&refine.sta_name=Baja%20California%20Sur&refine.sta_name=Campeche&refine.sta_name=Chiapas&refine.sta_name=Chihuahua&refine.sta_name=Ciudad%20de%20M%C3%A9xico&refine.sta_name=Coahuila%20de%20Zaragoza&refine.sta_name=Colima&refine.sta_name=Durango&refine.sta_name=Guerrero&refine.sta_name=Guanajuato&refine.sta_name=Jalisco&refine.sta_name=Hidalgo&refine.sta_name=M%C3%A9xico&refine.sta_name=Michoac%C3%A1n%20de%20Ocampo&refine.sta_name=Morelos&refine.sta_name=Nayarit&refine.sta_name=Nuevo%20Le%C3%B3n&refine.sta_name=Oaxaca&refine.sta_name=Puebla&refine.sta_name=Quer%C3%A9taro&refine.sta_name=Quintana%20Roo&refine.sta_name=San%20Luis%20Potos%C3%AD&refine.sta_name=Sonora&refine.sta_name=Tamaulipas&refine.sta_name=Sinaloa&refine.sta_name=Tabasco&refine.sta_name=Tlaxcala&refine.sta_name=Veracruz%20de%20Ignacio%20de%20la%20Llave&refine.sta_name=Yucat%C3%A1n&refine.sta_name=Zacatecas&location=5,23.92601,-102.52441&basemap=jawg.light&static=false&datasetcard=true&scrollWheelZoom=true" width="800" height="600" frameborder="0"></iframe>
</div>
<div id="footer"></div>
</body>
</html>
