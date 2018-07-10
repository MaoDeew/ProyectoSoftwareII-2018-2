/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Objetos;

/**
 *
 * @author Julian
 */
public class Promocion {
    private String codigo;
    private String nombreProducto;
    private String decripcionPromocion;
    private String direccionImagen;

    public String getDireccionImagen() {
        return direccionImagen;
    }

    public void setDireccionImagen(String direccionImagen) {
        this.direccionImagen = direccionImagen;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public String getDecripcionPromocion() {
        return decripcionPromocion;
    }

    public void setDecripcionPromocion(String decripcionPromocion) {
        this.decripcionPromocion = decripcionPromocion;
    }
    
}
