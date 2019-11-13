/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.model;

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
@Table(name = "roles", schema = "sinfronteras")
public class Roles {

    @Id
    @Column(name = "idRoles")
    private Integer rolesId = 0;

    @NotNull
    @Column(name = "User_Roles")
    private Integer rolesUser = 0;

    /*@NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Name_Roles")
    private String rolesUserName;
     */
    @NotNull
    @Column(name = "Usuarios_idUser")
    private Integer rolesIdUser = 0;

    public Integer getRolesId() {
        return rolesId;
    }

    public void setRolesId(Integer rolesId) {
        this.rolesId = rolesId;
    }

    public Integer getRolesUser() {
        return rolesUser;
    }

    public void setRolesUser(Integer rolesUser) {
        this.rolesUser = rolesUser;
    }

    public Integer getRolesIdUser() {
        return rolesIdUser;
    }

    public void setRolesIdUser(Integer rolesIdUser) {
        this.rolesIdUser = rolesIdUser;
    }

    
    
}
