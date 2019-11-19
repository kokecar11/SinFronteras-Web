package co.edu.sinfronteras.dao;

import java.util.List;
import co.edu.sinfronteras.model.User;

public interface UserDao {
   void save(User user);
   List<User> list();
   void eliminar(Integer idUser);
   void modificar(User idUser);
   public User getUser(int idUser);
   User findUserByEmail(String Email_User);

    public Object obtenerUsuarioLogueado();
}
