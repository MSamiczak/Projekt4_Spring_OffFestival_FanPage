package pl.off.festival.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import pl.off.festival.model.BandsFilter;
import pl.off.festival.model.OffSelectedBands;
import pl.off.festival.model.Offview;
import pl.off.festival.service.OffSelectedBandsService;
import pl.off.festival.service.OffViewService;

@Controller
public class AllBandsController {

	private OffViewService offViewService;
	private OffSelectedBandsService offSelectedBandsService;

	@Autowired
	public AllBandsController(OffViewService offViewService, OffSelectedBandsService offSelectedBandsService) {
		this.offViewService = offViewService;
		this.offSelectedBandsService = offSelectedBandsService;
	}

	@GetMapping("/listofallbands")
	public String bands(@ModelAttribute BandsFilter bandsFilter, Model model, Pageable pageable,
			OffSelectedBands offSelectedBands) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String login = auth.getName();
		System.out.println(login);

		List<Offview> pageOff = offViewService.getByFilter(bandsFilter);

		model.addAttribute("bands", pageOff);
		model.addAttribute("filter", new BandsFilter());
		model.addAttribute("select", new OffSelectedBands());

		return "listofallbands";

	}

	@PostMapping("/listofallbands")
	public String filter(@ModelAttribute BandsFilter bandsFilter, Model model, Pageable pageable,
			@ModelAttribute OffSelectedBands offSelecetedBands, BindingResult bindingResult) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String login = auth.getName(); // get logged in username

		System.out.println(login);

		model.addAttribute("select", login);

		List<Offview> pageOff = offViewService.getByFilter(bandsFilter);

		model.addAttribute("bands", pageOff);
		model.addAttribute("filter", bandsFilter);

		OffSelectedBands selectedBands = offSelectedBandsService.addSelectBands(offSelecetedBands, login);
		System.out.println("Saved Bands: " + selectedBands);

		model.addAttribute("select", new OffSelectedBands());

		return "listofallbands";

	}

	@GetMapping("/users/delete/{id_table}")
	public String delete(@PathVariable int id_table) {

		offSelectedBandsService.delete(id_table);
		return "redirect:/users/selectedbands";
	}

}
