package pl.off.festival.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Offview {
	
	
	@Id
	private int id_band;
	private String name_band;
	private String city;
	private String country;
	private String tag;
	private String since;
	private float listeners_kilo;
	private String name_album;
	private String best_song;
	private String year;
	
	
	public int getId_band() {
		return id_band;
	}
	public void setId_band(int id_band) {
		this.id_band = id_band;
	}
	public String getName_band() {
		return name_band;
	}
	public void setName_band(String name_band) {
		this.name_band = name_band;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getSince() {
		return since;
	}
	public void setSince(String since) {
		this.since = since;
	}
	public float getListeners_kilo() {
		return listeners_kilo;
	}
	public void setListeners_kilo(float listeners_kilo) {
		this.listeners_kilo = listeners_kilo;
	}
	public String getName_album() {
		return name_album;
	}
	public void setName_album(String name_album) {
		this.name_album = name_album;
	}
	public String getBest_song() {
		return best_song;
	}
	public void setBest_song(String best_song) {
		this.best_song = best_song;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public Offview(int id_band, String name_band, String city, String country, String tag, String since,
			float listeners_kilo, String name_album, String best_song, String year) {
		this.id_band = id_band;
		this.name_band = name_band;
		this.city = city;
		this.country = country;
		this.tag = tag;
		this.since = since;
		this.listeners_kilo = listeners_kilo;
		this.name_album = name_album;
		this.best_song = best_song;
		this.year = year;
	}
	public Offview() {
	}
	@Override
	public String toString() {
		return "OffView [id_band=" + id_band + ", name_band=" + name_band + ", city=" + city + ", country=" + country
				+ ", tag=" + tag + ", since=" + since + ", listeners_kilo=" + listeners_kilo + ", name_album="
				+ name_album + ", best_song=" + best_song + ", year=" + year + "]";
	}
	
}

