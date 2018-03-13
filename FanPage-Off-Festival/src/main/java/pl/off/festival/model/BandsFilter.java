package pl.off.festival.model;

public class BandsFilter {

	private String year;
	private String name_band;
	private String tag;
	private String since;
	private String country;
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getName_band() {
		return name_band;
	}
	public void setName_band(String name_band) {
		this.name_band = name_band;
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
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public BandsFilter(String year, String name_band, String tag, String since, String country) {
		this.year = year;
		this.name_band = name_band;
		this.tag = tag;
		this.since = since;
		this.country = country;
	}
	
	
	
	
	public BandsFilter() {
	}
	@Override
	public String toString() {
		return "BandsFilter [year=" + year + ", name_band=" + name_band + ", tag=" + tag + ", since=" + since
				+ ", country=" + country + "]";
	}

	
	
	
	
}