package co.edu.sinfronteras.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import co.edu.sinfronteras.dao.UserDao;
import co.edu.sinfronteras.model.User;
import java.util.Optional;

@Service
public class UserServiceImp implements UserService {

   @Autowired
   private UserDao userDao;

   @Transactional
   @Override
   public void save(User user) {
      userDao.save(user);
   }
   
   @Transactional
   @Override
   public void eliminar(Integer idUser){
       userDao.eliminar(idUser);
   }
   @Transactional
   @Override
   public void modificar(User idUser){
       userDao.modificar(idUser);
   }
   
   @Transactional(readOnly = true)
   @Override
   public List<User> list() {
      return userDao.list();
   }
    @Override
    @Transactional
    public User getUser(int idUser) {
        return userDao.getUser(idUser);
    }
   
 
}
