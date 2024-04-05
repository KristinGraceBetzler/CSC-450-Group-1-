package com.github.CSC450Group1.wefli.Trip;

import com.github.CSC450Group1.wefli.RequestClasses.TripInfo;
import com.github.CSC450Group1.wefli.Trip.Repositries.*;
import com.github.CSC450Group1.wefli.Trip.TripObjects.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class TripService {
    
    @Autowired
    TripRepository tripRepository;
    @Autowired
    CommentsRepository commentsRepository;
    @Autowired
    ExcursionRepository excursionRepository;
    @Autowired
    DestinationRepository destinationRepository;
    @Autowired
    TripExcursionsRepository tripExcursionsRepository;

    protected TripToReturn selectDestination(TripInfo info) {
        // Create a new trip object
        Trip trip = new Trip(info.getUsersID(), info.getDestinationID());

        // find the ID's for location specific excursions
        ArrayList<Excursions> excursions = excursionRepository.findExcursionIds(info.getDestinationID(), info.getExcursion1Tag(),
                info.getExcursion2Tag(), info.getExcursion3Tag());

        // Save the trip to the database
        tripRepository.save(trip);

        // get the users trip that was just made as the ID is needed
        ArrayList<Trip> trips = tripRepository.findByUsersID(info.getUsersID());
        Trip latestTrip = trips.getLast();

        // create TripExcursion objects to insert into junction table
        ArrayList<TripExcursions> tripExcursions = new ArrayList<>();
        for (Excursions excursion : excursions) {
            tripExcursions.add(new TripExcursions(latestTrip.getTripID(), excursion.getExcursionID()));
        }

        // Insert into the junction table
        tripExcursionsRepository.saveAll(tripExcursions);

        // Get the destination the user is going to
        Optional<Destinations> destination = destinationRepository.findById(info.getDestinationID());

        //build the trip to return and return it
        return new TripToReturn(destination.get(), excursions.get(0), excursions.get(1), excursions.get(2));
    }

    protected void likeTrip(int tripID) {
        // get the trip from the database
        Optional<Trip> opTrip = tripRepository.findById(tripID);
        Trip trip = opTrip.get();

        // increment the like counter of the trip
        trip.incrementLikes();

        // save the trip with updated likes
        tripRepository.save(trip);
    }

    protected void comment(Comments comment) {
        commentsRepository.save(comment);
    }
}
