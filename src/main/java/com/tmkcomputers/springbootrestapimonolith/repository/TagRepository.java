package com.tmkcomputers.springbootrestapimonolith.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.tmkcomputers.springbootrestapimonolith.models.Tag;

@Repository
public interface TagRepository extends JpaRepository<Tag, Long> {

}
