package pl.off.festival.service;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import pl.off.festival.model.OffSelectedBands;
import pl.off.festival.model.Offview;
import pl.off.festival.model.User;
import pl.off.festival.repository.OffSelectedBandsRepository;
import pl.off.festival.repository.OffViewRepository;
import pl.off.festival.repository.UserRepository;

@Service
public class OffSelectedBandsService {

	private OffSelectedBandsRepository offSelectedBandsRepository;
	private OffViewRepository offViewRepository;
	private UserRepository userRepository;
	

	@Autowired
	public OffSelectedBandsService(OffSelectedBandsRepository offSelectedBandsRepository,
			EntityManager entityManager) {
		this.offSelectedBandsRepository = offSelectedBandsRepository;
	}

	public OffSelectedBands addSelectBands(OffSelectedBands select, String login) {

		
		
		
		select.setLogin(login);
		select.setId_band(select.getId_band());
		select.setName_band(select.getName_band());
		select.setCity(select.getCity());
		select.setCountry(select.getCountry());
		select.setTag(select.getTag());
		select.setSince(select.getSince());
		select.setListeners_kilo(select.getListeners_kilo());
		select.setName_album(select.getName_album());
		select.setBest_song(select.getBest_song());
		select.setYear(select.getYear());

		return offSelectedBandsRepository.save(select);
	}
	
	
	public User getUserById(long id) {
		return userRepository.findOne(id);
	}

	public OffSelectedBands getOffSelectedBandsById(int id_band) {
		return offSelectedBandsRepository.findOne(id_band);
	}
	
	public Offview getBandById(int id_band) {
		return offViewRepository.findOne(id_band);
	}
	
	/*public OffSelectedBands copy(OffSelectedBands offSelectedBands, Offview offview) {
		Offview getBandById = getBandById(offview.getId_band());
		return offSelectedBandsRepository.save(offSelectedBands);
	}*/
	
//	public OffSelectedBands viewSelectedBands(String login) {
//
//		
//		return offSelectedBandsRepository.findByLogin(login);
//			
//		}
	
	
	public Page<OffSelectedBands> getAll(String login, Pageable pageable) {
		
		return offSelectedBandsRepository.findByLogin(login, pageable);
	}

	public void delete(int id_table) {
		offSelectedBandsRepository.delete(id_table);
	}
	
	

}