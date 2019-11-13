/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.service;

import co.edu.sinfronteras.dao.FundacionesDao;
import co.edu.sinfronteras.model.Fundaciones;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Sorre
 */
@Service
public class FundacionesServiceImp implements FundacionesService {
    
    @Autowired
    private FundacionesDao fundacionesDao;
    
    @Transactional
    @Override
    public void save(Fundaciones fundaciones) {
        fundacionesDao.save(fundaciones);
    }

    @Transactional(readOnly = true)
    @Override
    public List<Fundaciones> list() {
        return fundacionesDao.list();
    }
    
}
