package com.github.CSC450Group1.wefli.Trip.TripObjects;

import com.github.CSC450Group1.wefli.User.Users;
import jakarta.persistence.*;

@Entity
public class Comments {
    @Id
    private int commentID;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "usersID")
    private Users user;

    private int tripID;

    private String comment;

    public int getCommentID() {
        return commentID;
    }

    public String getUserName() {
        return user.getUserName();
    }

    public int getTripID() {
        return tripID;
    }

    public String getComment() {
        return comment;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public void setTripID(int tripID) {
        this.tripID = tripID;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
