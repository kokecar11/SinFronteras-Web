/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.controller;

import co.edu.sinfronteras.model.Fundaciones;
import co.edu.sinfronteras.service.FundacionesService;
import java.util.Locale;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author sala1
 */
@Controller
public class FundacionesController {
    
	@Autowired
	private FundacionesService fundacionesService;
        /*
        @GetMapping("/fundaciones")
	public String fundaciones(Locale locale, Model model) {
		model.addAttribute("fundaciones", fundacionesService.list());
		return "fundaciones";
	}*/
        
        @ModelAttribute("fundacion")
        public Fundaciones formBackingObject() {
            return new Fundaciones();
        }
         @GetMapping("/perfilFundacion")
        public String perfil(Locale locale ,Model model) {
            model.addAttribute("fundaciones", fundacionesService.list());
            return "perfilFundacion";
        }
        
        
        @PostMapping("/addFundaciones")
	public String saveFundaciones(@ModelAttribute("fundacion") @Valid Fundaciones fundaciones, BindingResult result, Model model) {

		if (result.hasErrors()) {
			model.addAttribute("fundaciones", fundacionesService.list());
			return "perfilFundacion";
		}

		fundacionesService.save(fundaciones);
		return "redirect:/perfilFundacion";
	}
        
        
        @GetMapping("fundaciones/ciegos")
	public String sinvision(Locale locale, Model model) {
                model.addAttribute("fundaciones", fundacionesService.list());
		return "fundaciones/ciegos";
	}
        
        @GetMapping("fundaciones/sordos")
	public String sinescucha(Locale locale, Model model) {
            model.addAttribute("fundaciones", fundacionesService.list());	
            return "fundaciones/sordos";
	}
    
}
