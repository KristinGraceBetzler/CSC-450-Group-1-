package com.github.CSC450Group1.wefli.Trip.TripObjects;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class Destinations {
    @Id
    private int destinationID;
    private String destinationState;
    private String destinationCity;
    private String destinationClimateTag;
    private String destinationPicture;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "destination", cascade = CascadeType.ALL)
    private List<Trip> trips;

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
