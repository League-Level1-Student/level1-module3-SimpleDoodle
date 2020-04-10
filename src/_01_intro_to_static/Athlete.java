package _01_intro_to_static;

public class Athlete {
	static int nextBibNumber;
	static String raceLocation = "New York";
	static String raceStartTime = "9.00am";

	String name;
	int speed;
	static int bibNumber =1;
	
	Athlete(String name, int speed) {
		this.name = name;
		this.speed = speed;
	}

	void giveName() {
		this.name = name;
		System.out.println("This athlete is called " + name);
	}

	void giveBibNumber() {
		System.out.println(name + " has the bib number " + bibNumber);
		bibNumber += 1;
	}
	

	void giveLocation() {
		this.raceLocation = raceLocation;
		System.out.println("The race is taking place in " + raceLocation);
	}

	public static void main(String[] args) {
		// create two athletes
		// print their names, bibNumbers, and the location of their race.
		Athlete bob = new Athlete("Bob", 10);
		Athlete onepunch = new Athlete("Saitama", 100);
		bob.giveName();
		bob.giveBibNumber();
		onepunch.giveName();
		onepunch.giveBibNumber();
		onepunch.giveLocation();
	}
}
