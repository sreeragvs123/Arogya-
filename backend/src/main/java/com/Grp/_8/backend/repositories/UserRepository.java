package com.Grp._8.backend.repositories;

import com.Grp._8.backend.entities.UserEntity;
import com.Grp._8.backend.entities.enums.Role;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<UserEntity, Long> {

    Optional<UserEntity> findByUsernameAndRole(String username,Role role1);
    Optional<UserEntity> findByUsername(String username);
}
