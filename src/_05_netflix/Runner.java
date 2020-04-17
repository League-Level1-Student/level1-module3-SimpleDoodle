package _05_netflix;

import java.util.ArrayList;

public class Runner {
public static void main(String[] args) {
	Movie Cars3 = new Movie("Cars 3", 6);
	Movie Jedi = new Movie("Star Wars The Last Jedi", 7);
	Movie Spider = new Movie("Spider-Man: Far From Home", 7);
	Movie Endgame = new Movie("Avengers: Endgame", 8);
	Movie Sanic = new Movie("Sonic the Hedgehog", 6);
	NetflixQueue netflix = new NetflixQueue();
	ArrayList movie = new ArrayList();
	netflix.addMovie(Cars3);
	netflix.addMovie(Jedi);
	netflix.addMovie(Spider);
	netflix.addMovie(Endgame);
	netflix.addMovie(Sanic);
	netflix.getBestMovie();
	netflix.printMovies();
	System.out.println("The best movie is " + netflix.getBestMovie() + ".");
System.out.println("The second best movie is " + netflix.getMovie(1) + ".");
}
}
