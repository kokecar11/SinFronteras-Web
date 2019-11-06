/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Logger;
import org.hibernate.annotations.common.util.impl.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
        @GetMapping("/instituciones")
	public String instituciones(Locale locale, Model model) {
		return "instituciones";
	}
        
        @GetMapping("/instituciones/sordos")
	public String institucionesS(Locale locale, Model model) {
		return "instituciones/sordos";
	}
        
         @GetMapping("/instituciones/")
	public String institucionesC(Locale locale, Model model) {
		return "instituciones/ciegos";
	}

}