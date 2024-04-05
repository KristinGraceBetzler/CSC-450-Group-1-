package com.github.CSC450Group1.wefli.Trip;

import com.github.CSC450Group1.wefli.RequestClasses.TripInfo;
import com.github.CSC450Group1.wefli.Trip.Repositries.CommentsRepository;
import com.github.CSC450Group1.wefli.Trip.Repositries.DestinationRepository;
import com.github.CSC450Group1.wefli.Trip.Repositries.ExcursionRepository;
import com.github.CSC450Group1.wefli.Trip.Repositries.TripRepository;
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

    protected TripToReturn selectDestination(TripInfo info) {
        // Create a new trip object
        Trip trip = new Trip(info.getUsersID(), info.getDestinationID());

        // find the ID's for location specific excursions
        ArrayList<Excursions> excursions = excursionRepository.findExcursionIds(info.getDestinationID(), info.getExcursion1Tag(),
                info.getExcursion2Tag(), info.getExcursion3Tag());

        // set the excursion ID's for the trip
        trip.setExcursion1(excursions.get(0).getExcursionID());
        trip.setExcursion2(excursions.get(1).getExcursionID());
        trip.setExcursion3(excursions.get(2).getExcursionID());

        // Save the trip to the database
        tripRepository.save(trip);

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
