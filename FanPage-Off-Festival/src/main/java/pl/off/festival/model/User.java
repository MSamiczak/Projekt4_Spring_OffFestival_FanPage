package pl.off.festival.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@NotEmpty(message="{pl.off.notEmpty}")
	@Email(message="{pl.off.email}")
	@Column(unique=true)
	private String email;

	@Length(min=5, message="{pl.off.password.length}")
	private String password;

	@NotEmpty(message="{pl.off.notEmpty}")
	private String login;

	private boolean active;

	// EAGER - oznacza że poberając dane z tabeli User dostaniemy automatycznie dane
	// również z tabeli Role (user.getRole())
	// @OneToOne(fetch= FetchType.EAGER)
	// private Role role;

	// LAZY - oznacza że pobierając dane z tabeli User będą dociągane dopiero w
	// chwili ich pobranie (user.getRoles())
	// @OneToMany(fetch= FetchType.LAZY)
	// private Set<Role> roles;

	// @ManyToOne(fetch= FetchType.EAGER)
	// private Role role;

	// @ManyToMany(fetch= FetchType.LAZY)
	// @JoinTable(name="user_role")
	// private Set<Role> roles;

	@ManyToOne
	@JoinColumn(name ="role_id")
	private Role role;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}


	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public User(long id, String email, String password, String login, boolean active, Role role) {
		this.id = id;
		this.email = email;
		this.password = password;
		this.login = login;
		this.active = active;
		this.role = role;
	}

	public User(String email, String password, String login, boolean active, Role role) {
		this.email = email;
		this.password = password;
		this.login = login;
		this.active = active;
		this.role = role;
	}

	public User() {
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", password=" + password + ", login=" + login + ", active="
				+ active + ", role=" + role + "]";
	}



}
