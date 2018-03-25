package pl.off.festival.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import pl.off.festival.model.BandsFilter;
import pl.off.festival.model.Offview;
import pl.off.festival.service.OffViewService;

@Controller
@SessionAttributes("bandsFilter")
public class BandsByYearsController {

	private OffViewService offViewService;

	@Autowired
	public BandsByYearsController(OffViewService offViewService) {
		this.offViewService = offViewService;
	}

	@ModelAttribute("bandsFilter")
	public BandsFilter initializeBandsFilter() {
		return new BandsFilter();
	}

	@GetMapping("/bandsbyyears")

	public String bands(Model model, Pageable pageable, @ModelAttribute("bandsFilter") BandsFilter bandsFilter) {

		Page<Offview> pageOff = offViewService.getByFilterPage(bandsFilter, pageable);
		model.addAttribute("bands", pageOff);
		
		PageWrapper<Offview> page = new PageWrapper<>(pageOff, "/bandsbyyears");
		
		model.addAttribute("page", page);
		model.addAttribute("filter", new BandsFilter());

		return "bandsbyyears";

	}

	@PostMapping("/bandsbyyears")

	public String filter(@RequestParam Integer year, @ModelAttribute("bandsFilter") BandsFilter bandsFilter,
			Model model, Pageable pageable) {

		Page<Offview> pageOff = offViewService.getByFilterPage(bandsFilter, pageable);

		model.addAttribute("bands", pageOff);
		
		PageWrapper<Offview> page = new PageWrapper<>(pageOff, "/bandsbyyears");
		
		model.addAttribute("page", page);
		model.addAttribute("year", year);
		model.addAttribute("filter", bandsFilter);

		return "bandsbyyears";

	}
}
