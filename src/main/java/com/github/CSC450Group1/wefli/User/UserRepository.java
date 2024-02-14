package com.github.CSC450Group1.wefli.User;

//import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.CrudRepository;

// extend CrudRepository<User, Integer>
public interface UserRepository {

    // this is how to make custom SQL calls to the database
//    @Query("SELECT a FROM User a WHERE a.email = ?1")
//    User findByEmail(String email);
}
