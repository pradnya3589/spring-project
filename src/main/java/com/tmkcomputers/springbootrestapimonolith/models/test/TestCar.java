package com.tmkcomputers.springbootrestapimonolith.models.test;

import com.fasterxml.jackson.annotation.JsonBackReference;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TESTCAR")
@Getter
@Setter
public class TestCar implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID", updatable = false, nullable = false)
	private Long id = null;

	@Column(name = "REGISTRATION_NUMBER")
	private String registrationNumber;

	@ManyToOne(fetch = FetchType.LAZY)
	@JsonBackReference
	private TestCompany company;
}