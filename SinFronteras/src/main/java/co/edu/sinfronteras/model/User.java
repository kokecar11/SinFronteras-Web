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
    private Integer userId=0;

    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Name_User")
    private String userName;
    
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "LastName_User")
    private String userLastname;

    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Email_User")
    private String userEmail;

    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Password_User")
    private String userPassword;

    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Tel_User")
    private String userTel;
    
    
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Rol_User")
    private String userRol;
    
    
    @NotNull
    @Value("0")
    @Column(name = "Status_User")
    private Integer userStatus = 1 ;

    public String getUserRol() {
        return userRol;
    }

    public void setUserRol(String userRol) {
        this.userRol = userRol;
    }

    public User() {
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserLastname() {
        return userLastname;
    }

    public void setUserLastname(String userLastname) {
        this.userLastname = userLastname;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel;
    }

    public Integer getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(Integer userStatus) {
        this.userStatus = userStatus;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + Objects.hashCode(this.userId);
        hash = 97 * hash + Objects.hashCode(this.userName);
        hash = 97 * hash + Objects.hashCode(this.userLastname);
        hash = 97 * hash + Objects.hashCode(this.userEmail);
        hash = 97 * hash + Objects.hashCode(this.userPassword);
        hash = 97 * hash + Objects.hashCode(this.userTel);
        hash = 97 * hash + Objects.hashCode(this.userStatus);
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
        final User other = (User) obj;
        if (!Objects.equals(this.userName, other.userName)) {
            return false;
        }
        if (!Objects.equals(this.userLastname, other.userLastname)) {
            return false;
        }
        if (!Objects.equals(this.userEmail, other.userEmail)) {
            return false;
        }
        if (!Objects.equals(this.userPassword, other.userPassword)) {
            return false;
        }
        if (!Objects.equals(this.userTel, other.userTel)) {
            return false;
        }
        if (!Objects.equals(this.userId, other.userId)) {
            return false;
        }
        if (!Objects.equals(this.userStatus, other.userStatus)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", userName=" + userName + ", userLastname=" + userLastname + ", userEmail=" + userEmail + ", userPassword=" + userPassword + ", userTel=" + userTel + ", userStatus=" + userStatus + '}';
    }

    
}
