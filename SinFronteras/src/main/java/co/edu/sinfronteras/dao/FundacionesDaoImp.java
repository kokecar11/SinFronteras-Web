/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.dao;

import co.edu.sinfronteras.model.Fundaciones;
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
public class FundacionesDaoImp implements FundacionesDao{
    
    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public List<Fundaciones> list() {
        @SuppressWarnings("unchecked")
        TypedQuery<Fundaciones> query = sessionFactory.getCurrentSession().createQuery("from Fundaciones");
        return query.getResultList();
    }
    
    
   @Override
   public void save(Fundaciones fundaciones) {
      sessionFactory.getCurrentSession().save(fundaciones);
   }
    
}
