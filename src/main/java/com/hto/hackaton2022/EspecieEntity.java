package com.hto.hackaton2022;

import jakarta.persistence.*;

@Entity
@Table(name = "Especie", schema = "dbo", catalog = "HackTheOceanDB")
public class EspecieEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;
    @Basic
    @Column(name = "nombre")
    private String nombre;
    @Basic
    @Column(name = "nombre_cientifico")
    private String nombreCientifico;
    @Basic
    @Column(name = "familia")
    private String familia;
    @Basic
    @Column(name = "ubicacion")
    private String ubicacion;
    @Basic
    @Column(name = "estatus")
    private String estatus;
    @Basic
    @Column(name = "cantidad")
    private int cantidad;
    @Basic
    @Column(name = "descripcion")
    private String descripcion;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombreCientifico() {
        return nombreCientifico;
    }

    public void setNombreCientifico(String nombreCientifico) {
        this.nombreCientifico = nombreCientifico;
    }

    public String getFamilia() {
        return familia;
    }

    public void setFamilia(String familia) {
        this.familia = familia;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getEstatus() {
        return estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EspecieEntity that = (EspecieEntity) o;

        if (id != that.id) return false;
        if (cantidad != that.cantidad) return false;
        if (nombre != null ? !nombre.equals(that.nombre) : that.nombre != null) return false;
        if (nombreCientifico != null ? !nombreCientifico.equals(that.nombreCientifico) : that.nombreCientifico != null)
            return false;
        if (familia != null ? !familia.equals(that.familia) : that.familia != null) return false;
        if (ubicacion != null ? !ubicacion.equals(that.ubicacion) : that.ubicacion != null) return false;
        if (estatus != null ? !estatus.equals(that.estatus) : that.estatus != null) return false;
        if (descripcion != null ? !descripcion.equals(that.descripcion) : that.descripcion != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (nombre != null ? nombre.hashCode() : 0);
        result = 31 * result + (nombreCientifico != null ? nombreCientifico.hashCode() : 0);
        result = 31 * result + (familia != null ? familia.hashCode() : 0);
        result = 31 * result + (ubicacion != null ? ubicacion.hashCode() : 0);
        result = 31 * result + (estatus != null ? estatus.hashCode() : 0);
        result = 31 * result + cantidad;
        result = 31 * result + (descripcion != null ? descripcion.hashCode() : 0);
        return result;
    }
}
