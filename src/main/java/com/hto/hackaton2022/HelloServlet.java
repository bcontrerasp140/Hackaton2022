package com.hto.hackaton2022;

import java.io.*;
import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.NoResultException;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
    EntityManager em = emf.createEntityManager();

    private boolean validarDonacion(DonadorEntity d){
        if(d.getNombre().matches("^[a-zA-Z\\s]+")
                && d.getApellido().matches("^[a-zA-Z\\s]+")
                && d.getPais().matches("^[a-zA-Z\\s]+")
                && d.getCiudad().matches("^[a-zA-Z\\s]+")
                && d.getTelefono().matches("^[0-9]{10}")
                && d.getCantidad()>0) {
            return true;
        }else
            return false;
    }
    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        DonadorEntity donador = new DonadorEntity();
        donador.setNombre(request.getParameter("nombre"));
        donador.setApellido(request.getParameter("apellido"));
        donador.setPais(request.getParameter("pais"));
        donador.setCiudad(request.getParameter("ciudad"));
        donador.setTelefono(request.getParameter("telefono"));
        donador.setCorreo(request.getParameter("correo"));
        donador.setCantidad(Integer.parseInt(request.getParameter("donacion")));

        if(validarDonacion(donador)){
            em = emf.createEntityManager();
            em.getTransaction().begin();
            em.persist(donador);
            em.getTransaction().commit();
            request.setAttribute("message", "GRACIAS POR SU DONACION");
        }else{
            request.setAttribute("message", "ERROR AL PROCESAR SU TRANSACCION, DATOS INCORRECTOS");
        }



        List<DonadorEntity> donaciones = em
                .createQuery("SELECT p FROM DonadorEntity p ORDER BY p.cantidad", DonadorEntity.class)
                .getResultList();
        request.setAttribute("donaciones", donaciones);
        request.getRequestDispatcher("thanks.jsp").forward(request, response);

        /*
        out.write("<h1>Guardado!</h1>");

        out.write("<table border ='1'>");
        out.write("<tr>");
        out.write("<th>NOMBRE</th>");
        out.write("<th>APELLIDO</th>");
        out.write("<th>PAIS</th>");
        out.write("<th>CIUDAD</th>");
        out.write("<th>TELEFONO</th>");
        out.write("<th>CORREO</th>");
        out.write("<th>DONACION</th>");
        out.write("</tr>");

        List<DonadorEntity> people = em
                .createQuery("Select p from DonadorEntity p", DonadorEntity.class)
                .getResultList();
        for (DonadorEntity p: people) {
            out.write("<tr>");
            out.write("<td>" + p.getNombre() +"</td>");
            out.write("<td>" + p.getApellido() +"</td>");
            out.write("<td>" + p.getPais() +"</td>");
            out.write("<td>" + p.getCiudad() +"</td>");
            out.write("<td>" + p.getTelefono() +"</td>");
            out.write("<td>" + p.getCorreo() +"</td>");
            out.write("<td>" + p.getCantidad() +"</td>");
            out.write("</tr>");
        }

        out.write("</table>");
        out.write("<br><a href=\"index.jsp\">Regresar al form</a>");

        out.write("</body></html>");
         */
    }
    public void destroy() {
    }
}