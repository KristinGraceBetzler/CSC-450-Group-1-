package com.github.CSC450Group1.wefli.Trip.Repositries;

import com.github.CSC450Group1.wefli.Trip.TripObjects.Comments;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface CommentsRepository extends CrudRepository<Comments, Integer> {
    ArrayList<Comments> findByTripID(int tripID);
}
