package pl.off.festival.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class OffSelectedBands {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_table;
	
	public int getId_table() {
		return id_table;
	}
	public void setId_table(int id_table) {
		this.id_table = id_table;
	}
	
	
	private int id_bandS;
	private String name_bandS;
	private String cityS;
	private String countryS;
	private String tagS;
	private int sinceS;
	private float listeners_kiloS;
	private String name_albumS;
	private String best_songS;
	private String yearS;	
	private String login;

	public OffSelectedBands(int id_table, int id_bandS, String name_bandS, String cityS, String countryS, String tagS,
			int sinceS, float listeners_kiloS, String name_albumS, String best_songS, String yearS, String login) {
		this.id_table = id_table;
		this.id_bandS = id_bandS;
		this.name_bandS = name_bandS;
		this.cityS = cityS;
		this.countryS = countryS;
		this.tagS = tagS;
		this.sinceS = sinceS;
		this.listeners_kiloS = listeners_kiloS;
		this.name_albumS = name_albumS;
		this.best_songS = best_songS;
		this.yearS = yearS;
		this.login = login;
	}
	public OffSelectedBands() {
	}
	public int getId_bandS() {
		return id_bandS;
	}
	public void setId_bandS(int id_bandS) {
		this.id_bandS = id_bandS;
	}
	public String getName_bandS() {
		return name_bandS;
	}
	public void setName_bandS(String name_bandS) {
		this.name_bandS = name_bandS;
	}
	public String getCityS() {
		return cityS;
	}
	public void setCityS(String cityS) {
		this.cityS = cityS;
	}
	public String getCountryS() {
		return countryS;
	}
	public void setCountryS(String countryS) {
		this.countryS = countryS;
	}
	public String getTagS() {
		return tagS;
	}
	public void setTagS(String tagS) {
		this.tagS = tagS;
	}
	public int getSinceS() {
		return sinceS;
	}
	public void setSinceS(int sinceS) {
		this.sinceS = sinceS;
	}
	public float getListeners_kiloS() {
		return listeners_kiloS;
	}
	public void setListeners_kiloS(float listeners_kiloS) {
		this.listeners_kiloS = listeners_kiloS;
	}
	public String getName_albumS() {
		return name_albumS;
	}
	public void setName_albumS(String name_albumS) {
		this.name_albumS = name_albumS;
	}
	public String getBest_songS() {
		return best_songS;
	}
	public void setBest_songS(String best_songS) {
		this.best_songS = best_songS;
	}
	public String getYearS() {
		return yearS;
	}
	public void setYearS(String yearS) {
		this.yearS = yearS;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	
	
	@Override
	public String toString() {
		return "OffSelectedBands [id_table=" + id_table + ", id_bandS=" + id_bandS + ", name_bandS=" + name_bandS
				+ ", cityS=" + cityS + ", countryS=" + countryS + ", tagS=" + tagS + ", sinceS=" + sinceS
				+ ", listeners_kiloS=" + listeners_kiloS + ", name_albumS=" + name_albumS + ", best_songS=" + best_songS
				+ ", yearS=" + yearS + ", login=" + login + "]";
	}
	
	
	
	
	
	
	
}
	