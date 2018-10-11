package com.tmkcomputers.springbootrestapimonolith.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tmkcomputers.springbootrestapimonolith.models.Note;


@Repository
public interface NoteRepository extends JpaRepository<Note, Long> {

	Optional<Note> findById(Long noteId);

}