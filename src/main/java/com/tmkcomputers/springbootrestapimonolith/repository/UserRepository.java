package com.tmkcomputers.springbootrestapimonolith.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.tmkcomputers.springbootrestapimonolith.models.auth.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

	@Query("SELECT DISTINCT user FROM User user " + "INNER JOIN FETCH user.authorities AS authorities "
			+ "WHERE user.username = :username")
	User findByUsername(@Param("username") String username);
}