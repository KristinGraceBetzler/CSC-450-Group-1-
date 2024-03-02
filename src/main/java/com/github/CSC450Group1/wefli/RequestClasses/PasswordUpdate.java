package com.github.CSC450Group1.wefli.RequestClasses;

public class PasswordUpdate {
    private String email;
    private String oldPassword;
    private String newPassword;
    public String getEmail(){
        return email;
    }
    public String getOldPassword() {
        return oldPassword;
    }
    public String getNewPassword() {
        return newPassword;
    }
}
