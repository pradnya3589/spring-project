package com.tmkcomputers.springbootrestapimonolith.repository.test;
import java.util.List;

import com.tmkcomputers.springbootrestapimonolith.models.test.TestCompany;

public interface TestCompanyRepository {

	TestCompany find(Long id);

	TestCompany find(String name);

	List<TestCompany> findAll();

	void create(TestCompany company);

	TestCompany update(TestCompany company);

	void delete(Long id);

	void delete(TestCompany company);
}
