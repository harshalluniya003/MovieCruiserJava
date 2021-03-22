package com.cognizant.MovieCruiser.controller;

import org.springframework.stereotype.Service;

@Service
public class UserValidationServise {
	public boolean isUserAdmin(String name, String pass) {

		if (name.equals("Harshal") && pass.equals("Harshal@123")) {
			return true;
		}
		return false;
	}

}
