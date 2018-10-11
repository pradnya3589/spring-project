package com.tmkcomputers.springbootrestapimonolith.models.test;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "TESTDEPARTMENT")
@Getter
@Setter
public class TestDepartment implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID", updatable = false, nullable = false)
	private Long id = null;

	@Column(name = "NAME", nullable = false)
	private String name;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "department", fetch = FetchType.LAZY, orphanRemoval = true)
	@JsonManagedReference
	private Set<TestEmployee> employees = new HashSet<>();

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "department", fetch = FetchType.LAZY, orphanRemoval = true)
	@JsonManagedReference
	private Set<TestOffice> offices = new HashSet<>();

	@ManyToOne(fetch = FetchType.LAZY)
	@JsonBackReference
	private TestCompany company;

	public void setEmployees(Set<TestEmployee> employees) {
		this.employees.clear();
		if (employees != null) {
			this.employees.addAll(employees);
		}
	}

	public void setOffices(Set<TestOffice> offices) {
		this.offices.clear();
		if (offices != null) {
			this.offices.addAll(offices);
		}
	}
}