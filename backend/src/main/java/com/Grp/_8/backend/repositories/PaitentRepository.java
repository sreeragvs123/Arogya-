package com.Grp._8.backend.repositories;

import com.Grp._8.backend.entities.Paitent;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface PaitentRepository extends JpaRepository<Paitent, Long> {

    Optional<Paitent> findByUsername(String username);
}