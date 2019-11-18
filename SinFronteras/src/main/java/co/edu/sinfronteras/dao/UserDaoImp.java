package co.edu.sinfronteras.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import co.edu.sinfronteras.model.User;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Repository
public class UserDaoImp implements UserDao {

   @Autowired
   private SessionFactory sessionFactory;
   
      @Autowired
   private BCryptPasswordEncoder encriptar;

   @Override
   public void save(User user) {
      user.setPassword_User(encriptar.encode(user.getPassword_User()));
      sessionFactory.getCurrentSession().save(user);
   }
  
   @Override
   public List<User> list() {
      @SuppressWarnings("unchecked")
      TypedQuery<User> query = sessionFactory.getCurrentSession().createQuery("from User");
      return query.getResultList();
   }
   
   @Override
   public void eliminar(Integer idUser){
       User u =(User)sessionFactory.getCurrentSession().get(User.class, idUser);
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
    public User findUserByEmail(String Email_User) {
        String hql = "from User where Email_User=:Email_User";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setParameter("Email_User", Email_User);
        User u = (User) query.uniqueResult();
        return u;
    }
    

}
