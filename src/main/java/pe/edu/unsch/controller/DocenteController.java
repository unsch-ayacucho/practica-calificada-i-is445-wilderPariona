package pe.edu.unsch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pe.edu.unsch.service.ISemestreService;

@RequestMapping("/docente")
@Controller
public class DocenteController {
	
	@Autowired
	private ISemestreService semestreService;
	
	@GetMapping("/listar")
	public String listar(Model model) {
		model.addAttribute("titulo", "Listado de Docentes");
		model.addAttribute("semestres", semestreService.retornarTodo());
		return "views/listar/index";
	}

}
