package com.cognizant.MovieCruiser.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.data.repository.cdi.Eager;

import com.cognizant.MovieCruiser.model.Role;

@Eager
@Entity
@Table(name = "user")
public class User {

	@Id
	@Column(name = "us_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int us_id;

	@Column(name = "us_username")
	private String username;

	@Column(name = "us_password")
	private String password;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_us_id", referencedColumnName = "us_id"), inverseJoinColumns = @JoinColumn(name = "role_ro_id", referencedColumnName = "ro_id"))
	private List<Role> roleList;

	public int getUs_id() {
		return us_id;
	}

	public void setUs_id(int us_id) {
		this.us_id = us_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Role> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}

	@Override
	public String toString() {
		return "User [us_id=" + us_id + ", username=" + username + ", password=" + password + ", roleList=" + roleList
				+ "]";
	}

}
