package com.tmkcomputers.springbootrestapimonolith.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tmkcomputers.springbootrestapimonolith.models.auth.Name;
import com.tmkcomputers.springbootrestapimonolith.models.auth.UserProfile;

import java.util.List;

@Repository
public interface UserProfileRepository extends JpaRepository<UserProfile, Long> {

	UserProfile findByEmail(String email);

	List<UserProfile> findByName(Name name);

	List<UserProfile> findByNameFirstName(String firstName);

	List<UserProfile> findByAddressCountry(String country);
}