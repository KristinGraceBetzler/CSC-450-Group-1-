package com.github.CSC450Group1.wefli.Trip.TripObjects;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;

import java.util.List;

@Entity
public class Excursions {
    @Id
    private int excursionID;
    private String excursionTitle;
    private String excursionDescription;
    private String typeOfExcursionTag;
    private String excursionPicture;
    private int destinationID;
    @ManyToMany(mappedBy = "tripsExcursions")
    private List<Trip> trips;

    public int getExcursionID() {
        return excursionID;
    }

    public String getExcursionTitle() {
        return excursionTitle;
    }

    public String getExcursionDescription() {
        return excursionDescription;
    }

    public String getTypeOfExcursionTag() {
        return typeOfExcursionTag;
    }

    public String getExcursionPicture() {
        return excursionPicture;
    }

    public int getDestinationID() {
        return destinationID;
    }
}
