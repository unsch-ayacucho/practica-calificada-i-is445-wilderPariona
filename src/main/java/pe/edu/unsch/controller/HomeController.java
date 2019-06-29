package pe.edu.unsch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping({"/home"})
public class HomeController {
	@GetMapping({"/docente"})
	public String home() {
		return "/views/home/index";
	}

}
