package pl.off.festival.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import pl.off.festival.model.Tag;

@Repository
public interface TagRepository extends JpaRepository<Tag, Long> {

}
