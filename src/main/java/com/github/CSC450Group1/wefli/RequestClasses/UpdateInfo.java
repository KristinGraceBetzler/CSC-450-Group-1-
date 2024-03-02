package com.github.CSC450Group1.wefli.RequestClasses;

public class UpdateInfo {
    private String email; // can be interchanged for userID depending if we store that on client side and can send it back
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String address;
    private String userName;

    public UpdateInfo() {}
    public UpdateInfo(String email, String firstName, String lastName, String phoneNumber, String address, String userName) {
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public String getUserName() {return userName;}
}
