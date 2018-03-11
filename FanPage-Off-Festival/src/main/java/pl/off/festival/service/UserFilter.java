package pl.off.festival.service;

public class UserFilter {

	private String login;
	private String email;

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public UserFilter(String login, String email) {
		this.login = login;
		this.email = email;
	}

	public UserFilter() {
	}

	@Override
	public String toString() {
		return "UserFilter [login=" + login + ", email=" + email + "]";
	}

}