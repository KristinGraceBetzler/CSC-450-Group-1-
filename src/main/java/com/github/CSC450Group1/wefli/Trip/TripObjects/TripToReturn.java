package com.github.CSC450Group1.wefli.Trip.TripObjects;

public class TripToReturn {
    private Destinations destination;
    private Excursions excursion1;
    private Excursions excursion2;
    private Excursions excursion3;

    public TripToReturn(Destinations destination, Excursions excursion1, Excursions excursion2, Excursions excursion3) {
        this.destination = destination;
        this.excursion1 = excursion1;
        this.excursion2 = excursion2;
        this.excursion3 = excursion3;
    }

    public Destinations getDestination() {
        return destination;
    }

    public Excursions getExcursion1() {
        return excursion1;
    }

    public Excursions getExcursion2() {
        return excursion2;
    }

    public Excursions getExcursion3() {
        return excursion3;
    }
}
