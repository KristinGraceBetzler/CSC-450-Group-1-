package com.github.CSC450Group1.wefli.Trip.Repositries;

import com.github.CSC450Group1.wefli.Trip.TripObjects.Trip;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface TripRepository extends CrudRepository<Trip, Integer> {
    ArrayList<Trip> findByUsersID(int usersID);
}
