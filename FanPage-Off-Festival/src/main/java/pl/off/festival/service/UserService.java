package pl.off.festival.service;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import pl.off.festival.model.Role;
import pl.off.festival.model.User;
import pl.off.festival.repository.RoleRepository;
import pl.off.festival.repository.UserRepository;

@Service
public class UserService {

	private UserRepository userRepository;
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	private RoleRepository roleRepository;

	@Autowired
	public UserService(UserRepository userRepository, BCryptPasswordEncoder bCryptPasswordEncoder,
			RoleRepository roleRepository) {
		this.userRepository = userRepository;
		this.bCryptPasswordEncoder = bCryptPasswordEncoder;
		this.roleRepository = roleRepository;
	}

	public User addUserWithRoleUser(User user) {

		user.setActive(true);

		Role role = getUserRole();
		user.setRole(role);
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));

		return userRepository.save(user);
	}

	private Role getUserRole() {
		Role role = roleRepository.findByRole("User");
		if (Objects.isNull(role)) {
			role = roleRepository.save(new Role("User"));
		}
		return role;
	}

	public User getUserById(long id) {
		return userRepository.findOne(id);
	}

}