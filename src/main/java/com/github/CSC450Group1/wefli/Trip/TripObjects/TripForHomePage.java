package com.github.CSC450Group1.wefli.Trip.TripObjects;
import java.util.List;

public class TripForHomePage {
    private int tripID;
    private String userName;
    private Destinations destination;
    private int likes;
    private boolean visibleToOthers;
    private List<Excursions> tripsExcursions;

    public TripForHomePage(int tripID, String userName, Destinations destination, int likes, boolean visibleToOthers, List<Excursions> tripsExcursions) {
        this.tripID = tripID;
        this.userName = userName;
        this.destination = destination;
        this.likes = likes;
        this.visibleToOthers = visibleToOthers;
        this.tripsExcursions = tripsExcursions;
    }

    public int getTripID() {
        return tripID;
    }

    public String getUserName() {
        return userName;
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

    public List<Excursions> getTripsExcursions() {
        return tripsExcursions;
    }
}
