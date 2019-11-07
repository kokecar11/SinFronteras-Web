package co.edu.sinfronteras.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import co.edu.sinfronteras.dao.UserDao;
import co.edu.sinfronteras.model.User;

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
   public void eliminar(Integer userId){
       userDao.eliminar(userId);
   }
   @Transactional
   @Override
   public void modificar(User user){
       userDao.modificar(user);
   }
   
   @Transactional(readOnly = true)
   @Override
   public List<User> list() {
      return userDao.list();
   }

}
