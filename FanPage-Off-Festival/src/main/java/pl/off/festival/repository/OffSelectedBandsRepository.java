package pl.off.festival.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import pl.off.festival.model.OffSelectedBands;

@Repository
public interface OffSelectedBandsRepository extends JpaRepository<OffSelectedBands, Integer> {
	
//	OffSelectedBands findByLogin(String login);
	
//	@Query("select s.name_band from OffSelectedBands s where s.login= 'Admin@22.pl'")
	List<OffSelectedBands> findByLogin(String login);

}
