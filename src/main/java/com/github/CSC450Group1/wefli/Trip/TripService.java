package com.github.CSC450Group1.wefli.Trip;

import com.github.CSC450Group1.wefli.RequestClasses.SelectedDestination;
import com.github.CSC450Group1.wefli.Trip.Repositries.TripRepository;
import com.github.CSC450Group1.wefli.Trip.TripObjects.Trip;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class TripService {
    
    @Autowired
    TripRepository tripRepository;

    protected int selectDestination(SelectedDestination info) {
        // create a trip object with the given info to start building a trip for the user
        Trip newTrip = new Trip(info.getUsersID(), info.getDestinationID());

        // save the trip
        tripRepository.save(newTrip);

        // get all trips the user has to retrieve the ID of the latest trip
        ArrayList<Trip> trips = tripRepository.findByUsersID(info.getUsersID());

        // return the ID of the latest trip
        return trips.getLast().getTripID();
    }
}
