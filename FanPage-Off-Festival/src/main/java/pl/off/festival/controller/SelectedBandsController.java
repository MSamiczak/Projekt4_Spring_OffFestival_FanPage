package pl.off.festival.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import pl.off.festival.model.OffSelectedBands;
import pl.off.festival.service.OffSelectedBandsService;

@Controller
public class SelectedBandsController {
	
	private OffSelectedBandsService offSelectedBandsService;

	@Autowired
	public SelectedBandsController(OffSelectedBandsService offSelectedBandsService) {
		this.offSelectedBandsService = offSelectedBandsService;
	}
	
	
	@GetMapping("/selectedbands")
	public String view(Model model, Pageable pageable) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String login = auth.getName(); //get logged in username
		
		System.out.println(login);
		
		model.addAttribute("choice", login);
		Page<OffSelectedBands> pageOff = offSelectedBandsService.getAll(login, pageable);
		model.addAttribute("choice", pageOff);

		return "selectedbands";
	}
	
	@GetMapping("/delete/{id_table}")
	public String delete(@PathVariable int id_table) {

		offSelectedBandsService.delete(id_table);
		return "redirect:/selectedbands";
	}

	
	
	
}
