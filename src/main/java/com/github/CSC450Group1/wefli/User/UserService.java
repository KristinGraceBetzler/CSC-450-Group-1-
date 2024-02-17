package com.github.CSC450Group1.wefli.User;

import com.github.CSC450Group1.wefli.RequestClasses.LoginInfo;
import com.github.CSC450Group1.wefli.RequestClasses.UpdateInfo;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Optional;

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

    /*
    * Going to add email verification here
    * using JavaMail in spring boot. Have to add a verification string which is randomly generated to user
    * account as well as boolean on whether it has been verified or not. Additionally, will need to
    * set up an endpoint within the controller that the verification button will take them too and
    * pass the verification string as get request to the endpoint. I can then update the boolean within the user
    * account to show that it has been verified and they can log in. Will also have to update the login method
    * within this class to check to see whether the user has verified their email or not.*/
}
