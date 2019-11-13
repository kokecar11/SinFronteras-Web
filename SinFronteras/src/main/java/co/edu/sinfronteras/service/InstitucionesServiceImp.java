/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.service;

import co.edu.sinfronteras.dao.InstitucionesDao;
import co.edu.sinfronteras.model.Instituciones;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Sorre
 */
@Service
public class InstitucionesServiceImp implements InstitucionesService{
   
    @Autowired
    private InstitucionesDao fundacionesDao;
    
    @Transactional
    @Override
    public void save(Instituciones instituciones) {
        fundacionesDao.save(instituciones);
    }

    @Transactional(readOnly = true)
    @Override
    public List<Instituciones> list() {
        return fundacionesDao.list();
    }
}
