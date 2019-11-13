/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package co.edu.sinfronteras.dao;

import co.edu.sinfronteras.model.Fundaciones;
import java.util.List;

/**
 *
 * @author Sorre
 */
public interface FundacionesDao {
    
    List<Fundaciones> list();
    void save(Fundaciones fundaciones);
   
    
}
