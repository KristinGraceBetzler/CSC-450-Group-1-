package com.github.CSC450Group1.wefli.Trip.TripObjects;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Comments {
    @Id
    private int commentID;

    private int usersID;
    private int tripID;
    private String comment;

    public int getCommentID() {
        return commentID;
    }

    public int getUsersID() {
        return usersID;
    }

    public int getTripID() {
        return tripID;
    }

    public String getComment() {
        return comment;
    }
}
