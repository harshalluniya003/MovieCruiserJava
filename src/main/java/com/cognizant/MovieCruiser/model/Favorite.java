package com.cognizant.MovieCruiser.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "favorite")
public class Favorite {

	@Id
	@Column(name = "fav_id")
	private int id;

	@Column(name = "fav_us_id")
	private int userid;

	@Column(name = "fav_pr_id")
	private int productId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUser_id() {
		return userid;
	}

	public void setUser_id(int userid) {
		this.userid = userid;
	}

	public int getProduct_id() {
		return productId;
	}

	public void setProduct_id(int product_id) {
		this.productId = product_id;
	}

	@Override
	public String toString() {
		return String.format("Favorite [id=%s, user_id=%s, product_id=%s]", id, userid, productId);
	}

}
