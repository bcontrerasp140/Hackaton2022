package com.hto.hackaton2022;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.NoResultException;
import jakarta.persistence.Persistence;

import java.util.List;

public class prueba {

    public static void main(String[] args) {
        DonadorEntity donador = new DonadorEntity();
        donador.setNombre("n");
        donador.setApellido("n");
        donador.setPais("n");
        donador.setCiudad("n");
        donador.setTelefono("n");
        donador.setCorreo("n");
        obtenerID(donador);
    }

    public static void obtenerID(DonadorEntity d){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();
        try{
            List<DonadorEntity> people = em
                    .createQuery("SELECT p FROM DonadorEntity p ORDER BY p.cantidad", DonadorEntity.class)
                    .getResultList();

            for(int i=0;i < people.size();i++){
                System.out.println(people.get(i).getNombre());
                System.out.println(people.get(i).getApellido());
                System.out.println(people.get(i).getCantidad());
            }
        } catch (NoResultException e) {
            System.out.println("es nulo");

        }
    }
}
