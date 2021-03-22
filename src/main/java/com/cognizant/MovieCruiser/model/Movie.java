package com.cognizant.MovieCruiser.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "movies")
public class Movie {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "movie_id")
	private int id;

	@Column(name = "movies_title")
	private String title;

	@Column(name = "movie_boxoffice")
	private String boxOffice;

	@Column(name = "movie_active")
	private String active;

	@Column(name = "movie_dateoflaunch")
	private String dateOfLaunch;

	@Column(name = "movie_genre")
	private String genre;

	@Column(name = "movie_hasteaser")
	private String hasTeaser;

	public Movie() {

	}

	public Movie(int id, String title, String boxOffice, String active, String dateOfLaunch, String genre,
			String hasTeaser) {
		super();
		this.id = id;
		this.title = title;
		this.boxOffice = boxOffice;
		this.active = active;
		this.dateOfLaunch = dateOfLaunch;
		this.genre = genre;
		this.hasTeaser = hasTeaser;
	}

	public Movie(int id, String title, String boxOffice, String genre, String hasTeaser) {
		super();
		this.id = id;
		this.title = title;
		this.boxOffice = boxOffice;
		this.genre = genre;
		this.hasTeaser = hasTeaser;
	}

	public int getId() {
		return 0;
	}

	public void setId(int id2) {

	}

	public void setTitle(String title2) {

	}

	public void setActive(String active2) {

	}

	public void setGenre(String genre2) {

	}

	public void setHasTeaser(String string) {

	}

	public void setBoxOffice(String boxOffice2) {

	}

}
