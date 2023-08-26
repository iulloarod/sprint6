package com.example.seguridad.repository;

import com.example.seguridad.models.Authority;
import com.example.seguridad.utils.AuthorityName;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface IAuthorityRepository extends JpaRepository<Authority,Integer> {

    Optional<Authority> findByName(AuthorityName name);

}
