package com.github.CSC450Group1.wefli.Trip.TripObjects;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Excursions {
    @Id
    private int excursionID;
    private String excursionTitle;
    private String excursionDescription;
    private String typeOfExcursionTag;
    private String excursionPicture;
    private int destinationID;

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
