package com.hto.hackaton2022;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

import java.util.List;

public class Consultas {

    public List<EspecieEntity> getEspecies(){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        EntityManager em = emf.createEntityManager();
        List<EspecieEntity> especies = em
                .createQuery("Select e from EspecieEntity e", EspecieEntity.class)
                .getResultList();
        return especies;
    }
}
