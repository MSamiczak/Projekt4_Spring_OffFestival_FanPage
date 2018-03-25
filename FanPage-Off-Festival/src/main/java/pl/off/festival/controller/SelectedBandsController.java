package pl.off.festival.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import pl.off.festival.model.OffSelectedBands;
import pl.off.festival.service.OffSelectedBandsService;

@Controller
public class SelectedBandsController {

	private OffSelectedBandsService offSelectedBandsService;

	@Autowired
	public SelectedBandsController(OffSelectedBandsService offSelectedBandsService) {
		this.offSelectedBandsService = offSelectedBandsService;
	}

	@GetMapping("/users/selectedbands")
	public String view(Model model, Pageable pageable) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String login = auth.getName();

		System.out.println(login);

		model.addAttribute("choice", login);
		
		List<OffSelectedBands> pageOff = offSelectedBandsService.getAll(login);
		
		model.addAttribute("choice", pageOff);

		return "users/selectedbands";
	}

}
