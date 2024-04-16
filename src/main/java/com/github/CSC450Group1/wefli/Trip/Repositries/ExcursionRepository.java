package com.github.CSC450Group1.wefli.Trip.Repositries;

import com.github.CSC450Group1.wefli.Trip.TripObjects.Excursions;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface ExcursionRepository extends CrudRepository<Excursions, Integer> {
    // Query to get excursion ID's with criteria
    @Query(value = "SELECT * FROM excursions WHERE destinationID = ?1" +
            " AND type_of_excursion_tag = ?2 OR destinationID = ?1 AND" +
            " type_of_excursion_tag = ?3 OR destinationID = ?1 AND" +
            " type_of_excursion_tag = ?4", nativeQuery = true)
    ArrayList<Excursions> findExcursionIds(int destinationID, String excursionTag1, String excursionTag2, String excursionTag3);
}
