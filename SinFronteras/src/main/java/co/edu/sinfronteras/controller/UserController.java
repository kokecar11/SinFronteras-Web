package co.edu.sinfronteras.controller;

import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import co.edu.sinfronteras.model.User;
import co.edu.sinfronteras.service.UserService;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping("/registerUsers")
	public String userForm(Locale locale, Model model) {
		model.addAttribute("users", userService.list());
		return "registerUsers";
	}
	
	@ModelAttribute("user")
        public User formBackingObject() {
            return new User();
        }
     
	@PostMapping("/addUser")
	public String saveUser(@ModelAttribute("user") @Valid User user, BindingResult result, Model model) {

		if (result.hasErrors()) {
			model.addAttribute("users", userService.list());
			return "registerUsers";
		}

		userService.save(user);
		return "redirect:/registerUsers";
	}
        
        @GetMapping("/deleteUsers")
        public String deleteUsers(@RequestParam ("userx") Integer user){
            userService.eliminar(user);
            return "redirect:/registerUsers";
        }
}
