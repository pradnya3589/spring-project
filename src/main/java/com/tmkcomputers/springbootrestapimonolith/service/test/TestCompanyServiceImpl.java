package com.tmkcomputers.springbootrestapimonolith.service.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tmkcomputers.springbootrestapimonolith.models.test.TestCompany;
import com.tmkcomputers.springbootrestapimonolith.repository.test.TestCompanyRepository;

import java.util.List;

@Service
public class TestCompanyServiceImpl implements TestCompanyService {

	@Autowired
	private TestCompanyRepository companyRepository;

	@Override
	@Transactional(readOnly = true)
	@PreAuthorize("hasAuthority('COMPANY_READ') and hasAuthority('DEPARTMENT_READ')")
	public TestCompany get(Long id) {
		return companyRepository.find(id);
	}

	@Override
	@Transactional(readOnly = true)
	@PreAuthorize("hasAuthority('COMPANY_READ') and hasAuthority('DEPARTMENT_READ')")
	public TestCompany get(String name) {
		return companyRepository.find(name);
	}

	@Override
	@Transactional(readOnly = true)
	@PreAuthorize("hasAuthority('COMPANY_READ')")
	public List<TestCompany> getAll() {
		return companyRepository.findAll();
	}

	@Override
	@Transactional
	@PreAuthorize("hasAuthority('COMPANY_CREATE')")
	public void create(TestCompany company) {
		companyRepository.create(company);
	}

	@Override
	@Transactional
	@PreAuthorize("hasAuthority('COMPANY_UPDATE')")
	public TestCompany update(TestCompany company) {
		return companyRepository.update(company);
	}

	@Override
	@Transactional
	@PreAuthorize("hasAuthority('COMPANY_DELETE')")
	public void delete(Long id) {
		companyRepository.delete(id);
	}

	@Override
	@Transactional
	@PreAuthorize("hasAuthority('COMPANY_DELETE')")
	public void delete(TestCompany company) {
		companyRepository.delete(company);
	}
}
