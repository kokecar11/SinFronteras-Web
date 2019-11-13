package co.edu.sinfronteras.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import co.edu.sinfronteras.model.User;
import org.hibernate.Session;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Repository
public class UserDaoImp implements UserDao {

   @Autowired
   private SessionFactory sessionFactory;
   
      @Autowired
   private BCryptPasswordEncoder encriptar;

   @Override
   public void save(User user) {
      user.setUserPassword(encriptar.encode(user.getUserPassword()));
      sessionFactory.getCurrentSession().save(user);
   }
  
   @Override
   public List<User> list() {
      @SuppressWarnings("unchecked")
      TypedQuery<User> query = sessionFactory.getCurrentSession().createQuery("from User");
      return query.getResultList();
   }
   
   @Override
   public void eliminar(Integer userId){
       User u =(User)sessionFactory.getCurrentSession().get(User.class, userId);
       sessionFactory.getCurrentSession().delete(u);
   }

   @Override
    public void modificar(User userId) {
        sessionFactory.getCurrentSession().update(userId);
    }
    
    @Override
    public User getUser(int userId) {
        Session currentSession = sessionFactory.getCurrentSession();
        User user = currentSession.get(User.class, userId);
        return user;
    }
    
    @Override
    public User findUserByEmail(String email) {
        return sessionFactory.getCurrentSession().get(User.class, email);
    }
    

}
