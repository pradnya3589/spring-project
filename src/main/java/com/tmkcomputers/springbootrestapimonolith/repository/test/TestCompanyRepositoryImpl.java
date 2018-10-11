package com.tmkcomputers.springbootrestapimonolith.repository.test;

import org.springframework.dao.support.DataAccessUtils;
import org.springframework.stereotype.Repository;

import com.tmkcomputers.apistarter.models.test.TestCompany_;
import com.tmkcomputers.apistarter.models.test.TestDepartment_;
import com.tmkcomputers.apistarter.models.test.TestEmployee_;
import com.tmkcomputers.springbootrestapimonolith.models.test.TestCompany;
import com.tmkcomputers.springbootrestapimonolith.models.test.TestDepartment;
import com.tmkcomputers.springbootrestapimonolith.models.test.TestEmployee;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Fetch;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

@Repository
public class TestCompanyRepositoryImpl implements TestCompanyRepository {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public TestCompany find(Long id) {
		CriteriaBuilder builder = entityManager.getCriteriaBuilder();
		CriteriaQuery<TestCompany> query = builder.createQuery(TestCompany.class);

		Root<TestCompany> root = query.from(TestCompany.class);
		root.fetch(TestCompany_.cars, JoinType.LEFT);
		Fetch<TestCompany, TestDepartment> departmentFetch = root.fetch(TestCompany_.departments, JoinType.LEFT);
		Fetch<TestDepartment, TestEmployee> employeeFetch = departmentFetch.fetch(TestDepartment_.employees, JoinType.LEFT);
		employeeFetch.fetch(TestEmployee_.address, JoinType.LEFT);
		departmentFetch.fetch(TestDepartment_.offices, JoinType.LEFT);

		query.select(root).distinct(true);
		Predicate idPredicate = builder.equal(root.get(TestCompany_.id), id);
		query.where(builder.and(idPredicate));

		return DataAccessUtils.singleResult(entityManager.createQuery(query).getResultList());
	}

	@Override
	public TestCompany find(String name) {
		CriteriaBuilder builder = entityManager.getCriteriaBuilder();
		CriteriaQuery<TestCompany> query = builder.createQuery(TestCompany.class);

		Root<TestCompany> root = query.from(TestCompany.class);
		root.fetch(TestCompany_.cars, JoinType.LEFT);
		Fetch<TestCompany, TestDepartment> departmentFetch = root.fetch(TestCompany_.departments, JoinType.LEFT);
		Fetch<TestDepartment, TestEmployee> employeeFetch = departmentFetch.fetch(TestDepartment_.employees, JoinType.LEFT);
		employeeFetch.fetch(TestEmployee_.address, JoinType.LEFT);
		departmentFetch.fetch(TestDepartment_.offices, JoinType.LEFT);

		query.select(root).distinct(true);
		Predicate idPredicate = builder.equal(root.get(TestCompany_.name), name);
		query.where(builder.and(idPredicate));

		return DataAccessUtils.singleResult(entityManager.createQuery(query).getResultList());
	}

	@Override
	public List<TestCompany> findAll() {
		CriteriaBuilder builder = entityManager.getCriteriaBuilder();
		CriteriaQuery<TestCompany> query = builder.createQuery(TestCompany.class);
		Root<TestCompany> root = query.from(TestCompany.class);
		query.select(root).distinct(true);
		TypedQuery<TestCompany> allQuery = entityManager.createQuery(query);

		return allQuery.getResultList();
	}

	@Override
	public void create(TestCompany company) {
		entityManager.persist(company);
	}

	@Override
	public TestCompany update(TestCompany company) {
		return entityManager.merge(company);
	}

	@Override
	public void delete(Long id) {
		TestCompany company = entityManager.find(TestCompany.class, id);
		delete(company);
	}

	@Override
	public void delete(TestCompany company) {
		entityManager.remove(company);
	}
}
