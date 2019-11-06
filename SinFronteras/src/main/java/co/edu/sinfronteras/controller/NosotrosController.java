/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.controller;

import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author sala1
 */
@Controller
public class NosotrosController {
    
        @GetMapping("nosotros")
        public String nosotros(Locale locale, Model model) {
            return "nosotros";
        }
    
    
        @GetMapping("nosotros/vision")
	public String vision(Locale locale, Model model) {
		return "nosotros/vision";
	}

         @GetMapping("nosotros/objetivos")
	public String objetivos(Locale locale, Model model) {
		return "nosotros/objetivos";
	}
        
         @GetMapping("nosotros/contacto")
	public String contacto(Locale locale, Model model) {
		return "nosotros/contacto";
	}
        
         @GetMapping("nosotros/mision")
	public String mision(Locale locale, Model model) {
		return "nosotros/mision";
	}

}
