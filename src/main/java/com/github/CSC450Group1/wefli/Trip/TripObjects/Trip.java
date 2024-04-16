package com.github.CSC450Group1.wefli.Trip.TripObjects;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class Trip {
    @Id
    private int tripID;
    private int usersID;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "destinationID")
    private Destinations destination;

    private int likes;
    private boolean visibleToOthers;

    @ManyToMany
    @JoinTable(name = "trip_excursions", joinColumns = @JoinColumn(name = "tripID"),
            inverseJoinColumns = @JoinColumn(name = "excursionID"))
    private List<Excursions> tripsExcursions;


    public Trip() {}

    public Trip(int usersID, Destinations destination) {
        this.usersID = usersID;
        this.destination = destination;
        likes = 0;
        visibleToOthers = false;
    }

    public int getTripID() {
        return tripID;
    }

    public int getUsersID() {
        return usersID;
    }

    public Destinations getDestination() {
        return destination;
    }

    public int getLikes() {
        return likes;
    }

    public boolean isVisibleToOthers() {
        return visibleToOthers;
    }

    public void incrementLikes() {
        likes++;
    }

    public void setVisibleToOthers(boolean visible) {
        visibleToOthers = visible;
    }

    public List<Excursions> getTripsExcursions() {
        return tripsExcursions;
    }
}
