package co.edu.sinfronteras.service;

import java.util.List;

import co.edu.sinfronteras.model.User;

public interface UserService {
   void save(User user);
   void eliminar(Integer userId);
   void modificar(User user);
   List<User> list();
}
