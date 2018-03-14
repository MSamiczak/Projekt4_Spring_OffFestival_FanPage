package pl.off.festival.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
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
public class BandsByYearsController {
	
	private OffViewService offViewService;

	@Autowired
	public BandsByYearsController(OffViewService offViewService) {
		this.offViewService = offViewService;
	}



	@GetMapping("/bandsbyyears")
	public String bands(Model model, Pageable pageable) {
		
		
//		Page<Offview> pageOff = offViewService.getAllPage(pageable);
		List<Offview> pageOff = offViewService.getAll();
		model.addAttribute("bands", pageOff);
//		PageWrapper<Offview> page = new PageWrapper<>(pageOff, "/bandsbyyears");
//		model.addAttribute("page", page);
//		

		model.addAttribute("filter", new BandsFilter());
		
//		Page<Spring_off1> pageBand = spring_off1Service.getByYear(pageable);
//		model.addAttribute("bands", pageBand);
//		PageWrapper<Spring_off1> page = new PageWrapper<>(pageBand, "listofallbands");
//		model.addAttribute("page", page);

		
		return "bandsbyyears";
		
	}
	
	@PostMapping("/bandsbyyears")
	public String filter(@RequestParam Integer year, @ModelAttribute BandsFilter bandsFilter, Model model, Pageable pageable) {
		
//		Page<Offview> pageOff = offViewService.getByFilterPage(bandsFilter, pageable);
		
		List<Offview> pageOff = offViewService.getByFilter(bandsFilter);
		model.addAttribute("bands", pageOff);
//		PageWrapper<Offview> page = new PageWrapper<>(pageOff, "/bandsbyyears");
//		model.addAttribute("page", page);
		model.addAttribute("year", year);
		
		model.addAttribute("filter", bandsFilter);
		
		return "bandsbyyears";
	

}
}

	


