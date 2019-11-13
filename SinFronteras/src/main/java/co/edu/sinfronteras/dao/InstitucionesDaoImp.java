/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.dao;

import co.edu.sinfronteras.model.Instituciones;
import java.util.List;
import javax.persistence.TypedQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Sorre
 */
@Repository
public class InstitucionesDaoImp implements InstitucionesDao {
    
     
    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public List<Instituciones> list() {
        @SuppressWarnings("unchecked")
        TypedQuery<Instituciones> query = sessionFactory.getCurrentSession().createQuery("from Instituciones");
        return query.getResultList();
    }
    
    
   @Override
   public void save(Instituciones instituciones) {
      sessionFactory.getCurrentSession().save(instituciones);
   }
    
}
