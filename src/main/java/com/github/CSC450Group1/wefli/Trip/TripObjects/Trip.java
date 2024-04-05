package com.github.CSC450Group1.wefli.Trip.TripObjects;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Trip {
    @Id
    private int tripID;
    private int usersID;
    private int destinationID;
    private int excursion1;
    private int excursion2;
    private int excursion3;
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

    public int getExcursion1() {return excursion1;}

    public int getExcursion2() {return excursion2;}

    public int getExcursion3() {return excursion3;}

    public boolean isVisibleToOthers() {
        return visibleToOthers;
    }

    public void incrementLikes() {
        likes++;
    }

    public void setVisibleToOthers(boolean visible) {
        visibleToOthers = visible;
    }

    public void setExcursion1(int excursion1) {
        this.excursion1 = excursion1;
    }

    public void setExcursion2(int excursion2) {
        this.excursion2 = excursion2;
    }

    public void setExcursion3(int excursion3) {
        this.excursion3 = excursion3;
    }
}
