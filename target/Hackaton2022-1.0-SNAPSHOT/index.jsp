<%@ page import="com.hto.hackaton2022.EspecieEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hto.hackaton2022.Consultas" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
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
    <% List<EspecieEntity> especies = new Consultas().getEspecies();%>
    <div id="header"></div>
    <div id="carouselEducaCodigo" class="carousel slide" data-ride="carousel">

        <ol class="carousel-indicators">
            <li data-target="#carouselEducaCodigo" data-slide-to="0" class="active"></li>
            <li data-target="#carouselEducaCodigo" data-slide-to="1"></li>
            <li data-target="#carouselEducaCodigo" data-slide-to="2"></li>
        </ol>

        <div id="carouselEducaCodigo" class="carousel slide" data-ride="carousel">

            <ol class="carousel-indicators">
                <li data-target="#carouselEducaCodigo" data-slide-to="0" class="active"></li>
                <% for (int i=1;i<especies.size();i++){%>
                    <li data-target="#carouselEducaCodigo" data-slide-to="<%=i%>"></li>
                <% } %>
            </ol>

            <div class="carousel-inner">
                <% for (int i=0;i<especies.size();i++){%>
                    <% if(i==0){%>
                        <div class="carousel-item active">
                    <%}else{%>
                            <div class="carousel-item">
                    <% } %>
                        <img class="d-block w-100" src="img/<%=especies.get(i).getNombre().replace(" ","-")%>.jpg" alt="">
                        <div class="carousel-caption d-none d-md-block">
                            <h3><%=especies.get(i).getNombre()%> (<%=especies.get(i).getNombreCientifico()%>)</h3>
                            <p>Familia: <%=especies.get(i).getFamilia()%></p>
                            <p>Localizada en <%=especies.get(i).getUbicacion()%></p>
                            <p>Quedan alrededor de <%=especies.get(i).getCantidad()%> individuos</p>
                            <p>Estatus: <%=especies.get(i).getEstatus()%></p>
                            <p><%=especies.get(i).getDescripcion()%></p>
                        </div>
                    </div>
                <% } %>

            </div>

            <a href="#carouselEducaCodigo" class="carousel-control-prev" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>

            <a href="#carouselEducaCodigo" class="carousel-control-next" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div>

    </div>

        <div class="container item">
            <div class="row">
                <div class="col-sm">
                    <div class="card" style="width: 18rem;">
                        <img src="./img/oceano.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">¿Que es la Acuicultura?</h5>
                            <p class="card-text">La acuicultura es el cultivo de organismos acuáticos tanto en zonas costeras como del interior que implica intervenciones en el proceso de cría para aumentar la producción.</p>
                            <a href="https://www.fao.org/aquaculture/es/" class="btn btn-primary">Saber mas ...</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="card" style="width: 18rem;">
                        <img src="./img/oceano.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">El juego del calamar que está amenazando al planeta</h5>
                            <p class="card-text">Mientras los gobiernos se reúnen en la ONU para discutir el destino de los océanos del mundo, una amenaza crece.</p>
                            <a href="https://www.greenpeace.org/mexico/blog/50515/el-juego-del-calamar-que-esta-amenazando-al-planeta/" class="btn btn-primary">Saber mas ...</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="card" style="width: 18rem;">
                        <img src="./img/oceano.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Buceo profundo en la Antártida</h5>
                            <p class="card-text">El explorador, biólogo marino y director de la campaña de Océanos de Greenpeace USA, John Hocevar, nos comparte su diario del viaje.</p>
                            <a href="https://www.greenpeace.org/mexico/blog/50592/buceo-profundo-en-la-antartida/" class="btn btn-primary">Saber mas ...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="footer"></div>
</body>
</html>