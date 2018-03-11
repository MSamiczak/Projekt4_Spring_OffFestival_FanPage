package pl.off.festival.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import pl.off.festival.model.OffSelectedBands;

@Repository
public interface OffSelectedBandsRepository extends JpaRepository<OffSelectedBands, Integer> {
	
//	OffSelectedBands findByLogin(String login);
	
//	@Query("select s.name_band from OffSelectedBands s where s.login= 'Admin@22.pl'")
	Page<OffSelectedBands> findByLogin(String login, Pageable pageable);

}
