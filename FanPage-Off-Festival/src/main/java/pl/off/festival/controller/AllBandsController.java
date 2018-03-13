package pl.off.festival.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
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
import pl.off.festival.service.UserService;


@Controller
public class AllBandsController {
	
	private OffViewService offViewService;
	private OffSelectedBandsService offSelectedBandsService;
	

	@Autowired
	public AllBandsController(OffViewService offViewService, OffSelectedBandsService offSelectedBandsService, UserService userService) {
		this.offViewService = offViewService;
		this.offSelectedBandsService = offSelectedBandsService;
	}


//	@GetMapping("/{id}")
//	public String view(@PathVariable Integer id_band, Model model) {
//		
//		return "listofallbands";
//	}
	
	
	
	@GetMapping("/listofallbands")
	public String bands(@ModelAttribute BandsFilter bandsFilter, Model model, Pageable pageable) {
		
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String login = auth.getName(); //get logged in username
		
		System.out.println(login);
		 
//		Page<Offview> pageOff = offViewService.getAll(pageable);
//		List<Offview> pageOff = offViewService.getByFilter(bandsFilter);
		
		List<Offview> pageOff = offViewService.getAll();
//		List<Offview> pageOff = offViewService.getAll();
		model.addAttribute("bands", pageOff);
//		PageWrapper<Offview> page = new PageWrapper<>(pageOff, "/listofallbands");
//		model.addAttribute("page", page);
		
		model.addAttribute("filter", new BandsFilter());
		
		model.addAttribute("select", new OffSelectedBands());
		
		
//		model.addAttribute("select", offSelectedBandsService.getBandById(id_band));
		
//		Page<Spring_off1> pageBand = spring_off1Service.getByYear(pageable);
//		model.addAttribute("bands", pageBand);
//		PageWrapper<Spring_off1> page = new PageWrapper<>(pageBand, "listofallbands");
//		model.addAttribute("page", page);

		
		return "listofallbands";
		
	}
	
	@PostMapping("/listofallbands")
	public String filter(@ModelAttribute BandsFilter bandsFilter, Model model, Pageable pageable, 
			@ModelAttribute OffSelectedBands offSelecetedBands, BindingResult bindingResult) {
		
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String login = auth.getName(); //get logged in username
		
		System.out.println(login);
		 
		model.addAttribute("select", login);
		
		List<Offview> pageOff = offViewService.getByFilter(bandsFilter);
		
		model.addAttribute("bands", pageOff);
//		PageWrapper<Offview> page = new PageWrapper<>(pageOff, "/listofallbands");
//		model.addAttribute("page", page);
//		
		model.addAttribute("filter", bandsFilter);
		
//		
//		if (bindingResult.hasErrors()) {
//			return "listofallbands";
//		}

		OffSelectedBands selectedBands = offSelectedBandsService.addSelectBands(offSelecetedBands, login);

		System.out.println("Saved Bands: " + selectedBands);

		model.addAttribute("select", new OffSelectedBands());

		
		return "listofallbands";
	

}
	
	@GetMapping("/delete/{id_table}")
	public String delete(@PathVariable int id_table) {

		offSelectedBandsService.delete(id_table);
		return "redirect:/selectedbands";
	}
	
	
	

	
//	@PostMapping("/listofallbands")
//	public String save(@Valid @ModelAttribute OffSelectedBands offSelecetedBands, BindingResult bindingResult, Model model) {
//
//		if (bindingResult.hasErrors()) {
//			return "listofallbands";
//		}
//
//		OffSelectedBands selectedBands = offSelectedBandsService.addSelectBands(offSelecetedBands);
//
//		System.out.println("Saved Bands: " + selectedBands);
//
//		model.addAttribute("success", "User has been registered successfully");
//		model.addAttribute("select", new OffSelectedBands());
//
//		return "listofallbands";
//	}
	
	
//	
//	@PostMapping("/listofallbands")
//	public String copy(@ModelAttribute Offview offview, OffSelectedBands offSelectedBands, BindingResult bindingResult) {
//		if (bindingResult.hasErrors()) {
//			return "listofallbands";
//		}
//		offSelectedBandsService.copy(offSelectedBands, offview);
//		return "redirect:/listofallbands/" + offview.getId_band();
//	}
//	

	
//	@GetMapping("/listofallbands/{id_band}")
//	public String view(@PathVariable Integer id_band, Model model) {
//		model.addAttribute("select", offSelectedBandsService.getBandById(id_band));
//		return "select";
//	}
//	
	
	
//	@GetMapping("{id_band}")
//	public String view(@PathVariable Integer id_band, Model model) {
//		model.addAttribute("select", offSelectedBandsService.getBandById(id_band));
//		return "listofallbands";
//	}
	
	
	
//	@PostMapping("/select/{id_band}")
//	public String copy(@PathVariable Integer id_band,@ModelAttribute Offview offview, BindingResult bindingResult) {
//		if (bindingResult.hasErrors()) {
//			return "listofallbands";
//		}
//		offSelectedBandsService.getBandById(id_band);
//		return "select" + offview.getId_band();
//	}
	
	
}

	


