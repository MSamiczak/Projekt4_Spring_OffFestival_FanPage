package pl.off.festival.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import pl.off.festival.model.Article;
import pl.off.festival.service.ArticleService;


@Controller
public class HydeparkController {

	private ArticleService articleService;
	
	@Autowired
	public HydeparkController(ArticleService articleService) {
		this.articleService = articleService;
	}

	@GetMapping("/hydepark")
	public String index(Model model, Pageable pageable) {

		Page<Article> pageArticle = articleService.getAll(pageable);
		model.addAttribute("articles", pageArticle);
		PageWrapper<Article> page = new PageWrapper<>(pageArticle, "/hydepark");
		model.addAttribute("page", page);
		
		return "hydepark";
	}

	@GetMapping("/about")
	public String about(Model model) {

		return "about";
	}

	@GetMapping("/contact")
	public String contact(Model model) {

		return "contact";
	}
}
