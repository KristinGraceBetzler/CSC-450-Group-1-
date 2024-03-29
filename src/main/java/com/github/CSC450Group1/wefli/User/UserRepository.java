package com.github.CSC450Group1.wefli.User;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends CrudRepository<Users, Integer>{
    Optional<Users> findByEmail(String email);

    boolean existsByEmail(String email);

    // custom SQL Query
    @Query(value = "SELECT password FROM users WHERE email = ?1", nativeQuery = true)
    String findPasswordByEmail(String email);

}
