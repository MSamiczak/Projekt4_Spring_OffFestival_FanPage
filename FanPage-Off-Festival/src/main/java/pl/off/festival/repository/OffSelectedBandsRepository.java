package pl.off.festival.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import pl.off.festival.model.OffSelectedBands;

@Repository
public interface OffSelectedBandsRepository extends JpaRepository<OffSelectedBands, Integer> {
	
	List<OffSelectedBands> findByLogin(String login);
	

}
