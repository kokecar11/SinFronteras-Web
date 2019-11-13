/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.service;

import co.edu.sinfronteras.model.Instituciones;
import java.util.List;

/**
 *
 * @author Sorre
 */
public interface InstitucionesService {
     void save(Instituciones instituciones);
     List<Instituciones> list();
}
