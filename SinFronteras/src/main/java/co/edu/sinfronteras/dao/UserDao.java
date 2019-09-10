package co.edu.sinfronteras.dao;

import java.util.List;

import co.edu.sinfronteras.model.User;

public interface UserDao {
   void save(User user);
   List<User> list();
   void eliminar(Integer userId);
}
