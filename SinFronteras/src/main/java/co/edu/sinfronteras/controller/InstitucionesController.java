/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.controller;

import co.edu.sinfronteras.model.Instituciones;
import co.edu.sinfronteras.service.InstitucionesService;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Logger;
import org.hibernate.annotations.common.util.impl.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 *
 * @author sala4
 */
@Controller
public class InstitucionesController {
    /**
     * Simply selects the home view to render by returning its name.
     */
        @Autowired
	private InstitucionesService institucionesService;
        @GetMapping("instituciones")
	public String instituciones(Locale locale, Model model) {
            model.addAttribute("instituciones", institucionesService.list());
		return "instituciones";
	}
        @GetMapping("/fundaciones")
	public String fundaciones(Locale locale, Model model) {
		model.addAttribute("instituciones", institucionesService.list());
		return "fundaciones";
	}
         
        @ModelAttribute("institucion")
        public Instituciones formBackingObject() {
            return new Instituciones();
        }
        
        @GetMapping("instituciones/ciegos")
        public String sinvision(Locale locale, Model model) {
            model.addAttribute("instituciones", institucionesService.list());
            return "instituciones/ciegos";
        }

        @GetMapping("instituciones/sordos")
        public String sinescucha(Locale locale, Model model) {
            model.addAttribute("instituciones", institucionesService.list());
            return "instituciones/sordos";
        }
}
