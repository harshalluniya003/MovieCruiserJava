package com.cognizant.MovieCruiser.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.MovieCruiser.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, String> {

	User findByUsername(String username);

}
