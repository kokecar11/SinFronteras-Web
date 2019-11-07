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
public class FundacionesController {
    
        @GetMapping("fundaciones")
	public String instituciones(Locale locale, Model model) {
		return "fundaciones";
	}
        
        @GetMapping("fundaciones/ciegos")
	public String sinvision(Locale locale, Model model) {
		return "fundaciones/ciegos";
	}
        
        @GetMapping("fundaciones/sordos")
	public String sinescucha(Locale locale, Model model) {
		return "fundaciones/sordos";
	}
    
}
