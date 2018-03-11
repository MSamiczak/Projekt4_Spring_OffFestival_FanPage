package pl.off.festival.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import pl.off.festival.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

}
