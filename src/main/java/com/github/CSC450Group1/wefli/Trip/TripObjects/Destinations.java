package com.github.CSC450Group1.wefli.Trip.TripObjects;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Destinations {
    @Id
    private int destinationID;
    private String destinationState;
    private String destinationCity;
    private String destinationClimateTag;
    private String destinationPicture;

    public int getDestinationID() {
        return destinationID;
    }

    public String getDestinationState() {
        return destinationState;
    }

    public String getDestinationCity() {
        return destinationCity;
    }

    public String getDestinationClimateTag() {
        return destinationClimateTag;
    }

    public String getDestinationPicture() {
        return destinationPicture;
    }
}
