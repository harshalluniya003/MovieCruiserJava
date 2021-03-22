package com.cognizant.MovieCruiser.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.MovieCruiser.model.Movie;

@Repository
public interface MovieRepository extends JpaRepository<Movie, String> {

}
