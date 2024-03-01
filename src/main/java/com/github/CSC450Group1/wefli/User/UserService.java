package com.github.CSC450Group1.wefli.User;

import com.github.CSC450Group1.wefli.RequestClasses.LoginInfo;
import com.github.CSC450Group1.wefli.RequestClasses.PasswordUpdate;
import com.github.CSC450Group1.wefli.RequestClasses.UpdateInfo;
import jakarta.mail.internet.MimeMessage;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Optional;
import java.util.Random;

/* Service layer to handle the different operations for a user account
* such as logging in, creating a new account, updating their account,
* email verification, and possibly more in the future. */

@Service
public class UserService {

    @Autowired
    private UserRepository repository;

    public Optional<User> loginUser(LoginInfo info) {
        // check to make sure there is an account with the given email
        if (!repository.existsByEmail(info.getEmail())) {
            return Optional.empty(); // The user does not have an account with that email
        }

        // retrieve the hashed password from within the database
        String hashPass = repository.findPasswordByEmail(info.getEmail());

        // check to see if the password passed in matches
        if (BCrypt.checkpw(info.getPassword(), hashPass)) {
            Optional<User> opUser = repository.findByEmail(info.getEmail());

            // get the user from within the Optional<User>
            User user = opUser.get();
            user.setPassword(null); // set the password to null, so it is not returned with the object
            opUser = Optional.of(user);

            return opUser; // it matched
        } else {
            return Optional.empty(); // it didn't match
        }
    }

    public String createUser(User user) {
        // Check if the account already exists with that email
        if (repository.existsByEmail(user.getEmail())) {
            return "Account Exists"; // the account exists
        }

        // generate a hashed password using BCrypt
        String salt = BCrypt.gensalt(13); // create a salt
        String hashed_password = BCrypt.hashpw(user.getPassword(), salt); // create the hashed password

        // Update the users password to be the BCrypt hashed password
        user.setPassword(hashed_password);

        repository.save(user); // add the user to the database
        sendVerificationCode(user);
        return "Account Created";
    }

    public boolean updateUserInfo(UpdateInfo info) {
        Optional<User> opUser = repository.findByEmail(info.getEmail()); // can be changed to find by ID if we choose

        // get the user out of the Optional class
        User user = opUser.get();

        // update each of the vars in the user instance
        user.setFirstName(info.getFirstName());
        user.setLastName(info.getLastName());
        user.setPhoneNumber(info.getPhoneNumber());
        user.setAddress(info.getAddress());
        user.setUserName(info.getUserName());

        // save the updated user
        repository.save(user);
        return true;
    }

    public boolean updatePassword(PasswordUpdate info) {
        // get the user we are trying to update the password for
        Optional<User> opUser = repository.findByEmail(info.getEmail());
        User user = opUser.get();

        // check to make sure the old password matches what the current password is
        if (!BCrypt.checkpw(info.getOldPassword(), user.getPassword())) {
            return false; // old password doesn't match so don't update the password
        }

        // hash the new password
        String salt = BCrypt.gensalt(13); // create a salt
        String hashed_password = BCrypt.hashpw(info.getNewPassword(), salt); // create the hashed password

        // update the users password
        user.setPassword(hashed_password);
        repository.save(user);

        return true;
    }

    // for use from the createUser method
    // since we already have a user created have separate methods will lower database queries
    private void sendVerificationCode(User user) {

    }
    // for use if the user needs to resend a verification code
    public void sendVerificationCode(String email) {
        // get the user with the given email
        Optional<User> opUser = repository.findByEmail(email);
        if (opUser.isEmpty()) {
            return;
        }
        User user = opUser.get();

        // generate a random 6-digit code to send and store
        int max = 999999;
        int min = 100000;
        int randInt = min + (int)(Math.random() * ((max-min) + 1));

        user.setVerificationCode(randInt);

        // set up the properties for the email
        String toAddress = user.getEmail();
        String fromAddress = "WeFli@gmail.com";
        String senderName = "WeFli";
        String subject = "Please complete your registration";
        String content = "Welcome to WeFli " + user.getFirstName() + "!<br><br>" +
                "Here is your verification code to complete your account registration:<br>" + randInt +
                "<br><br>Thank you from the WeFli team!";


    }
}
