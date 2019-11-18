/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.sinfronteras.controller;

import java.security.Principal;
import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author sala1
 */
@Controller
public class LoginController {
    @GetMapping("/login")
    public String login(Locale locale, Model model) {
        return "login";
    }
    
   @RequestMapping(value = "/loginAction", method = RequestMethod.GET)
    public String loginaction(Locale locale, Model model, Principal principal) {
        return "/perfilUser";
    }
    
    @GetMapping("/logout")
    public String logout(Locale locale, Model model) {
        return "/login";
    }
    
    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public String error(Locale locale, Model model, Principal principal) {
        return "error";
    }
    
}
