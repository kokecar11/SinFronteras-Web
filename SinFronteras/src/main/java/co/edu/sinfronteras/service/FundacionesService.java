package co.edu.sinfronteras.service;

import java.util.List;
import co.edu.sinfronteras.model.Fundaciones;

public interface FundacionesService {
    void save(Fundaciones fundaciones);
    List<Fundaciones> list();
    
}
