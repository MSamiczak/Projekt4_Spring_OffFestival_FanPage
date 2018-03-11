package pl.off.festival.model;

public class BandsFilter {
	
	private String year;
	
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public BandsFilter(String year) {
		this.year = year;
	}

	public BandsFilter() {
	}

	@Override
	public String toString() {
		return "OffFilterYear [year=" + year + ", name=" + name + "]";
	}
	

}
