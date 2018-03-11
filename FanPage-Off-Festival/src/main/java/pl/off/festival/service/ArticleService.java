package pl.off.festival.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import pl.off.festival.model.Article;
import pl.off.festival.repository.ArticleRepository;

@Service
public class ArticleService {

	@Autowired
	private ArticleRepository articleRepository;

	public Article save(Article article) {
		return articleRepository.save(article);
	}

	public Page<Article> getAll(Pageable pageable) {
		
		Page<Article> articles= articleRepository.findAll(pageable);	
		return articles;
	}
	
	public Article findById(long id) {
		return articleRepository.findOne(id);
	}
	
	public Article getFirst() {
		return articleRepository.findFirstByOrderByDateDesc();
	}

}
