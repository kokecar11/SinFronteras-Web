/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.model;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Sorre
 */

@Entity
@Table(name = "instituciones", schema = "sinfronteras")
public class Instituciones implements Serializable {
    
      @Id
    @Column(name = "idInstituciones")
    private Integer instId=0;
    
    @NotNull
    @Size(min = 1, max = 80)
    @Column(name = "Name_inst")
    private String instName;
    
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Tipo_inst")
    private String instTipo;
    
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Tipo")
    private String instTipo2;
    
    @NotNull
    @Column(name = "Mision_inst")
    private String instMision;

    @NotNull
    @Column(name = "Vision_inst")
    private String instVision;
    
    @NotNull
    @Column(name = "Desc_inst")
    private String instDescripcion;
    
    @NotNull
    @Column(name = "Link_inst")
    private String instLink;

    @NotNull
    @Column(name = "Tel_inst")
    private String instTel;
        
    @NotNull
    @Column(name = "usuarios_idUser")
    private Integer instRolesUser = 0;

    public Integer getInstId() {
        return instId;
    }

    public void setInstId(Integer instId) {
        this.instId = instId;
    }

    public String getInstName() {
        return instName;
    }

    public void setInstName(String instName) {
        this.instName = instName;
    }

    public String getInstTipo() {
        return instTipo;
    }

    public void setInstTipo(String instTipo) {
        this.instTipo = instTipo;
    }
    
    public String getInstTipo2() {
        return instTipo2;
    }

    public void setInstTipo2(String instTipo2) {
        this.instTipo2 = instTipo2;
    }

    public String getInstMision() {
        return instMision;
    }

    public void setInstMision(String instMision) {
        this.instMision = instMision;
    }

    public String getInstVision() {
        return instVision;
    }

    public void setInstVision(String instVision) {
        this.instVision = instVision;
    }

    public String getInstDescripcion() {
        return instDescripcion;
    }

    public void setInstDescripcion(String instDescripcion) {
        this.instDescripcion = instDescripcion;
    }

    public String getInstLink() {
        return instLink;
    }

    public void setInstLink(String instLink) {
        this.instLink = instLink;
    }

    public String getInstTel() {
        return instTel;
    }

    public void setInstTel(String instTel) {
        this.instTel = instTel;
    }

    public Integer getInstRolesUser() {
        return instRolesUser;
    }

    public void setInstRolesUser(Integer instRolesUser) {
        this.instRolesUser = instRolesUser;
    }
   
    
    
}
