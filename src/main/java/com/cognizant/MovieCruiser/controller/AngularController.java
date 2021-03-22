package com.cognizant.MovieCruiser.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cognizant.MovieCruiser.model.Favorite;
import com.cognizant.MovieCruiser.model.Movie;
import com.cognizant.MovieCruiser.service.FavoriteService;
import com.cognizant.MovieCruiser.service.MovieService;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
public class AngularController {

	@Autowired
	MovieService movieService;

	@Autowired
	FavoriteService favoriteService;

	@GetMapping("/customer-ang")
	public List<Movie> viewCustomerAngular() {
		List<Movie> list = movieService.getAllMovies();
		return list;
	}

	@GetMapping("/favorite-ang")
	public List<Movie> getFavorite() {
		List<Favorite> list = favoriteService.getAllFavorite(1);
		List<Movie> cartItem = new ArrayList<>();
		for (Favorite ele : list) {
			List<Movie> listTemp = movieService.getAllMovies();
			for (Movie m : listTemp) {
				if (m.getId() == ele.getProduct_id()) {
					cartItem.add(m);
				}
			}
		}

		return cartItem;
	}

	@DeleteMapping("/delete-ang/{id}")
	public void deleteFavorite(@PathVariable int id) {
		favoriteService.deleteFromFavorite(id);
	}

	@PostMapping("/add-ang/{id}")
	public String addToFavorite(@PathVariable int id) {

		Favorite favourite = new Favorite();
		favourite.setUser_id(1);
		favourite.setProduct_id(id);
		favoriteService.addToFavorite(favourite);
		System.out.println(id);
		return "added succesfully";
	}

}
