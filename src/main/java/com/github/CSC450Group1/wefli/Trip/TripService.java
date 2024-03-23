package com.github.CSC450Group1.wefli.Trip;

import com.github.CSC450Group1.wefli.RequestClasses.SelectedDestination;
import com.github.CSC450Group1.wefli.Trip.Repositries.DestinationRepository;
import com.github.CSC450Group1.wefli.Trip.Repositries.TripRepository;
import com.github.CSC450Group1.wefli.Trip.TripObjects.Destinations;
import com.github.CSC450Group1.wefli.Trip.TripObjects.Trip;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

@Service
public class TripService {

    @Autowired
    DestinationRepository destinationRepository;
    @Autowired
    TripRepository tripRepository;

    protected Destinations getDestination(int id) {
        id++; // increment ID to get the next destination
        if (id > 48) { // if the ID is greater than the amount of destinations
          id = 1; // reset the ID back to the first destination
        }

        // get the destination and extract it from the optional
        Optional<Destinations> opDestination = destinationRepository.findById(id);
        return opDestination.get();
    }

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
