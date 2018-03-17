package pl.off.festival.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
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
		select.setId_bandS(select.getId_bandS());
		select.setName_bandS(select.getName_bandS());
		select.setCityS(select.getCityS());
		select.setCountryS(select.getCountryS());
		select.setTagS(select.getTagS());
		select.setSinceS(select.getSinceS());
		select.setListeners_kiloS(select.getListeners_kiloS());
		select.setName_albumS(select.getName_albumS());
		select.setBest_songS(select.getBest_songS());
		select.setYearS(select.getYearS());

		return offSelectedBandsRepository.save(select);
	}
//	
//	
//	public List<OffSelectedBands> addSelectBandsList(String login) {
//
//		List<OffSelectedBands> selects = new ArrayList<OffSelectedBands>();
//		
//		OffSelectedBands select = new OffSelectedBands();
//		
//
//
//		
//		select.setLogin(login);
//		select.setId_bandS(select.getId_bandS());
//		select.setName_bandS(select.getName_bandS());
//		select.setCityS(select.getCityS());
//		select.setCountryS(select.getCountryS());
//		select.setTagS(select.getTagS());
//		select.setSinceS(select.getSinceS());
//		select.setListeners_kiloS(select.getListeners_kiloS());
//		select.setName_albumS(select.getName_albumS());
//		select.setBest_songS(select.getBest_songS());
//		select.setYearS(select.getYearS());
//		selects.add(select);
//		
//		
//		
//		
//		return offSelectedBandsRepository.save(selects);
//	
//	}
	


		
		
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
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
	
	
	public List<OffSelectedBands> getAll(String login) {
		
		return offSelectedBandsRepository.findByLogin(login);
	}

	public void delete(int id_table) {
		offSelectedBandsRepository.delete(id_table);
	}
	
	

}