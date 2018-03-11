package pl.off.festival.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import pl.off.festival.model.Offview;

@Repository
public interface OffViewRepository extends JpaRepository<Offview, Integer> {

	Page<Offview> findByYear(int year, Pageable pageable);
	
}
