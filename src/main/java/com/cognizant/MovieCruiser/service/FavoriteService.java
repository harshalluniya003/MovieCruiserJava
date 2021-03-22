package com.cognizant.MovieCruiser.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.MovieCruiser.model.Favorite;
import com.cognizant.MovieCruiser.model.Movie;
import com.cognizant.MovieCruiser.repository.FavoriteRepository;

@Service
public class FavoriteService {

	@Autowired
	FavoriteRepository favoriteRepository;

	@Transactional
	public void addToFavorite(Favorite favorite) {
		favoriteRepository.save(favorite);
	}

	@Transactional
	public void deleteFromFavorite(int id) {
		favoriteRepository.deleteByProductId(id);
	}

	@Transactional
	public List<Favorite> getAllFavorite(int userid) {
		return favoriteRepository.findByUserid(userid);
	}

}
