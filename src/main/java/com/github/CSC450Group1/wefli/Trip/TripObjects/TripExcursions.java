package com.github.CSC450Group1.wefli.Trip.TripObjects;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;

import java.io.Serializable;

@Entity
@IdClass(TripExcursions.class)
public class TripExcursions implements Serializable {
    @Id
    private int tripID;
    @Id
    private int excursionID;

    public TripExcursions() {}
    public TripExcursions(int tripID, int excursionsID) {
        this.tripID = tripID;
        this.excursionID = excursionsID;
    }

    public int getTripID() {
        return tripID;
    }

    public int getExcursionsID() {
        return excursionID;
    }
}
