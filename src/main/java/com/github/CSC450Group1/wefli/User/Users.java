package com.github.CSC450Group1.wefli.User;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;

// annotate  with @Entity
@Entity
public class Users {
    // annotate with @Id
    @Id
    //@GeneratedValue(strategy = GenerationType.AUTO)
    private int usersID;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String email;
    private String address;
    private String userName;
    private String password;
    private int verificationCode;
    private boolean verified;

    public Users() {

    }
    public Users(String firstName, String lastName, String phoneNumber, String email,
                 String address, String userName, String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.userName = userName;
        this.password = password;
    }

    public int getUserID() {
        return usersID;
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

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }
    public int getVerificationCode() {
        return verificationCode;
    }
    public boolean isVerified() {
        return verified;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public void setVerificationCode(int verificationCode) {
        this.verificationCode = verificationCode;
    }
    public void setVerified(boolean verified) {
        this.verified = verified;
    }

    @Override
    public String toString() {
        return usersID + " " + firstName + " " + lastName + " " + phoneNumber + " " + email + " " + address + " " + userName
                + " " +password;
    }
}
