package co.edu.sinfronteras.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name = "tbl_users")
public class User implements Serializable {

   @Id
   @Column(name = "USER_ID")
   private Long id=0L;

   @Column(name = "USER_NICKNAME")
   @Size(max = 20, min = 3, message = "{user.name.invalid}")
   @NotEmpty(message="Por favor ingrese su Nombre de Usuario.")
   private String nickname;

   @Column(name = "USER_EMAIL", unique = true)
   @Email(message = "{user.email.invalid}")
   @NotEmpty(message="Por favor ingrese su Correo Electronico.")
   private String email;
   
   
   @Column(name = "USER_NAME")
   @Size(max = 20, min = 3, message = "{user.name.invalid}")
   @NotEmpty(message="Por favor ingrese su Nombre.")
   private String name;
   
   @Column(name = "USER_LASTNAME")
   @Size(max = 20, min = 3, message = "{user.name.invalid}")
   @NotEmpty(message="Por favor ingrese su Apellido.")
   private String lastname;
   
   @Column(name = "USER_PASSWORD")
   @Size(max = 20, min = 3, message = "{user.name.invalid}")
   @NotEmpty(message="Por favor ingrese su Apellido.")
   private String password;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

  

  

  
}
