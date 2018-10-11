package com.tmkcomputers.springbootrestapimonolith.service.test;

import java.util.List;

import com.tmkcomputers.springbootrestapimonolith.models.test.TestCompany;

public interface TestCompanyService {

	TestCompany get(Long id);

	TestCompany get(String name);

	List<TestCompany> getAll();

	void create(TestCompany company);

	TestCompany update(TestCompany company);

	void delete(Long id);

	void delete(TestCompany company);
}
