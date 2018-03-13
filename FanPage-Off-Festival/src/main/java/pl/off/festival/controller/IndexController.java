package pl.off.festival.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.off.festival.model.BandsFilter;
import pl.off.festival.model.Offview;
import pl.off.festival.service.OffViewService;

@Controller
public class IndexController {

	private OffViewService offViewService;

	@Autowired
	public IndexController(OffViewService offViewService) {
		this.offViewService = offViewService;
	}

	@GetMapping("/")
	public String about(Model model) {

		model.addAttribute("filter", new BandsFilter());
		return "index";
	}

	@PostMapping("/")
	public String filter(@RequestParam Integer year, @ModelAttribute BandsFilter bandsFilter, Model model,
			Pageable pageable) {

		List<Offview> pageOff = offViewService.getByFilter(bandsFilter);
		model.addAttribute("bands", pageOff);
//		PageWrapper<Offview> page = new PageWrapper<>(pageOff, "listofallbands");
//		model.addAttribute("page", page);
		model.addAttribute("year", year);

		model.addAttribute("filter", bandsFilter);

		return "listofallbands";

	}
}
