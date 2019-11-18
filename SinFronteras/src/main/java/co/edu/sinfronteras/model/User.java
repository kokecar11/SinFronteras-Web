/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.model;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import org.springframework.beans.factory.annotation.Value;

/**
 *
 * @author KokeCarpintero
 */
@Entity
@Table(name = "usuarios", schema = "sinfronteras")
public class User implements Serializable {

   
    @Id
    @Column(name = "idUser")
    private Integer idUser=0;

    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Name_User")
    private String Name_User;
    
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "LastName_User")
    private String LastName_User;

    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Email_User")
    private String Email_User;

    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "Password_User")
    private String Password_User;

    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Tel_User")
    private String Tel_User;
    
    
    @NotNull
    @Size(min = 1, max = 45)
    @Value("USUARIOCOMUN")
    @Column(name = "Rol_User")
    private String Rol_User="USUARIOCOMUN";
       
    @NotNull
    @Value("0")
    @Column(name = "Status_User")
    private Integer Status_User = 1 ;
    
    public User() {
    }

    public Integer getIdUser() {
        return idUser;
    }

    public void setIdUser(Integer idUser) {
        this.idUser = idUser;
    }

    public String getName_User() {
        return Name_User;
    }

    public void setName_User(String Name_User) {
        this.Name_User = Name_User;
    }

    public String getLastName_User() {
        return LastName_User;
    }

    public void setLastName_User(String LastName_User) {
        this.LastName_User = LastName_User;
    }

    public String getEmail_User() {
        return Email_User;
    }

    public void setEmail_User(String Email_User) {
        this.Email_User = Email_User;
    }

    public String getPassword_User() {
        return Password_User;
    }

    public void setPassword_User(String Password_User) {
        this.Password_User = Password_User;
    }

    public String getTel_User() {
        return Tel_User;
    }

    public void setTel_User(String Tel_User) {
        this.Tel_User = Tel_User;
    }

    public String getRol_User() {
        return Rol_User;
    }

    public void setRol_User(String Rol_User) {
        this.Rol_User = Rol_User;
    }

    public Integer getStatus_User() {
        return Status_User;
    }

    public void setStatus_User(Integer Status_User) {
        this.Status_User = Status_User;
    }
  
}
