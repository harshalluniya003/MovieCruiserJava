package com.cognizant.MovieCruiser.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.data.repository.cdi.Eager;

@Entity
@Table(name = "role")
public class Role {

	@Id
	@Column(name = "ro_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ro_id;

	@Column(name = "ro_name")
	private String ro_name;

	public int getRo_id() {
		return ro_id;
	}

	public void setRo_id(int ro_id) {
		this.ro_id = ro_id;
	}

	public String getRo_name() {
		return ro_name;
	}

	public void setRo_name(String ro_name) {
		this.ro_name = ro_name;
	}

	@ManyToMany(mappedBy = "roleList")
	private List<User> userList;

	@Override
	public String toString() {
		return "Role [ro_id=" + ro_id + ", ro_name=" + ro_name + "]";
	}

}
