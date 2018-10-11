package com.tmkcomputers.springbootrestapimonolith.models.test;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "TESTCOMPANY", uniqueConstraints = { @UniqueConstraint(columnNames = { "NAME" }) })
@Getter
@Setter
@EqualsAndHashCode(of = "id")
public class TestCompany implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID", updatable = false, nullable = false)
	private Long id = null;

	@Column(name = "NAME", nullable = false)
	private String name;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "company", fetch = FetchType.LAZY, orphanRemoval = true)
	@JsonManagedReference
	private Set<TestDepartment> departments = new HashSet<>();

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "company", fetch = FetchType.LAZY, orphanRemoval = true)
	@JsonManagedReference
	private Set<TestCar> cars = new HashSet<>();

	public void setDepartments(Set<TestDepartment> departments) {
		this.departments.clear();
		if (departments != null) {
			this.departments.addAll(departments);
		}
	}

	public void setCars(Set<TestCar> cars) {
		this.cars.clear();
		if (cars != null) {
			this.cars.addAll(cars);
		}
	}
}