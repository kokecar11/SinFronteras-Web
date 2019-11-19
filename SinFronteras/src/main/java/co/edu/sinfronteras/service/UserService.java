package co.edu.sinfronteras.service;

import java.util.List;

import co.edu.sinfronteras.model.User;

public interface UserService {
   void save(User user);
   void eliminar(Integer idUser);
   void modificar(User idUser);
   List<User> list();
   public User getUser(int idUser);

    public Object obtenerUsuarioLogueado();
}
