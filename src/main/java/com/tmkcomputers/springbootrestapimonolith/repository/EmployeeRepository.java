package com.tmkcomputers.springbootrestapimonolith.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tmkcomputers.springbootrestapimonolith.models.Employee;
import com.tmkcomputers.springbootrestapimonolith.models.EmployeeIdentity;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, EmployeeIdentity> {
    List<Employee> findByEmployeeIdentityCompanyId(String companyId);
}
