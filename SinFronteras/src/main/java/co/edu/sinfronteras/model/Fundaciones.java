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
@Table(name = "fundaciones", schema = "sinfronteras")
public class Fundaciones implements Serializable {
    
    @Id
    @Column(name = "idFundaciones")
    private Integer fundaId=0;
    
    @NotNull
    @Size(min = 1, max = 80)
    @Column(name = "Name_fund")
    private String fundaName;
    
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Tipo_fund")
    private String fundaTipo;
    
    @NotNull
    @Column(name = "Mision_fund")
    private String fundaMision;

    @NotNull
    @Column(name = "Vision_fund")
    private String fundaVision;
    
    @NotNull
    @Column(name = "Desc_fund")
    private String fundaDescripcion;
    
    @NotNull
    @Column(name = "Link_fund")
    private String fundaLink;

    @NotNull
    @Column(name = "Tel_fund")
    private String fundaTel;
    
    @NotNull
    @Column(name = "Roles_idRoles")
    private Integer fundaRoles;
    
    @NotNull
    @Column(name = "Roles_Usuarios_idUser")
    private Integer fundaRolesUser;

    public Integer getFundaId() {
        return fundaId;
    }

    public void setFundaId(Integer fundaId) {
        this.fundaId = fundaId;
    }

    public String getFundaName() {
        return fundaName;
    }

    public void setFundaName(String fundaName) {
        this.fundaName = fundaName;
    }

    public String getFundaTipo() {
        return fundaTipo;
    }

    public void setFundaTipo(String fundaTipo) {
        this.fundaTipo = fundaTipo;
    }

    public String getFundaMision() {
        return fundaMision;
    }

    public void setFundaMision(String fundaMision) {
        this.fundaMision = fundaMision;
    }

    public String getFundaVision() {
        return fundaVision;
    }

    public void setFundaVision(String fundaVision) {
        this.fundaVision = fundaVision;
    }

    public String getFundaDescripcion() {
        return fundaDescripcion;
    }

    public void setFundaDescripcion(String fundaDescripcion) {
        this.fundaDescripcion = fundaDescripcion;
    }

    public String getFundaLink() {
        return fundaLink;
    }

    public void setFundaLink(String fundaLink) {
        this.fundaLink = fundaLink;
    }

    public String getFundaTel() {
        return fundaTel;
    }

    public void setFundaTel(String fundaTel) {
        this.fundaTel = fundaTel;
    }

    public Integer getFundaRoles() {
        return fundaRoles;
    }

    public void setFundaRoles(Integer fundaRoles) {
        this.fundaRoles = fundaRoles;
    }

    public Integer getFundaRolesUser() {
        return fundaRolesUser;
    }

    public void setFundaRolesUser(Integer fundaRolesUser) {
        this.fundaRolesUser = fundaRolesUser;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 79 * hash + Objects.hashCode(this.fundaId);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Fundaciones other = (Fundaciones) obj;
        if (!Objects.equals(this.fundaId, other.fundaId)) {
            return false;
        }
        return true;
    }
    
    
}
