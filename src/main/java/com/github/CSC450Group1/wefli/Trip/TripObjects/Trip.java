package com.github.CSC450Group1.wefli.Trip.TripObjects;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Trip {
    @Id
    private int tripID;
    private int usersID;
    private int destinationID;
    private int likes;
    private boolean visibleToOthers;

    public Trip() {}

    public Trip(int usersID, int destinationID) {
        this.usersID = usersID;
        this.destinationID = destinationID;
        likes = 0;
        visibleToOthers = false;
    }

    public int getTripID() {
        return tripID;
    }

    public int getUsersID() {
        return usersID;
    }

    public int getDestinationID() {
        return destinationID;
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
}
