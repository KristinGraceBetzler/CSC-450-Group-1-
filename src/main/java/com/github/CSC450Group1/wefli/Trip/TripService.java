package com.github.CSC450Group1.wefli.Trip;

import com.github.CSC450Group1.wefli.Trip.Repositries.DestinationRepository;
import com.github.CSC450Group1.wefli.Trip.TripObjects.Destinations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class TripService {

    @Autowired
    DestinationRepository destinationRepository;

    protected Destinations getDestination(int id) {
        id++; // increment ID to get the next destination
        if (id > 48) { // if the ID is greater than the amount of destinations
          id = 1; // reset the ID back to the first destination
        }

        // get the destination and extract it from the optional
        Optional<Destinations> opDestination = destinationRepository.findById(id);
        return opDestination.get();
    }
}
