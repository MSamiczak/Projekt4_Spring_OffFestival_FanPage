
package pl.off.festival.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pl.off.festival.model.Tag;
import pl.off.festival.repository.TagRepository;

@Service
public class TagService {
	
	@Autowired
	private TagRepository tagRepository;
	
	public List<Tag> listAllTags(){
		return tagRepository.findAll();
	}

}
