package com.github.CSC450Group1.wefli.User;

import com.github.CSC450Group1.wefli.RequestClasses.LoginInfo;
import com.github.CSC450Group1.wefli.RequestClasses.PasswordUpdate;
import com.github.CSC450Group1.wefli.RequestClasses.UpdateInfo;
import com.github.CSC450Group1.wefli.RequestClasses.VerifyInfo;
import com.github.CSC450Group1.wefli.Trip.Repositries.TripRepository;
import com.github.CSC450Group1.wefli.Trip.TripObjects.Trip;
import com.github.CSC450Group1.wefli.Trip.TripObjects.TripForHomePage;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Optional;

/* Service layer to handle the different operations for a user account
* such as logging in, creating a new account, updating their account,
* email verification, and possibly more in the future. */

@Service
public class UserService {

    @Autowired
    private UserRepository repository;
    @Autowired
    private JavaMailSender sender;
    @Autowired
    private TripRepository tripRepository;

   protected Optional<Users> loginUser(LoginInfo info) {
        // check to make sure there is an account with the given email
        if (!repository.existsByEmail(info.getEmail())) {
            return Optional.empty(); // The user does not have an account with that email
        }

        // retrieve the hashed password from within the database
        String hashPass = repository.findPasswordByEmail(info.getEmail());

        // check to see if the password passed in matches
        if (BCrypt.checkpw(info.getPassword(), hashPass)) {
            Optional<Users> opUser = repository.findByEmail(info.getEmail());

            // get the user from within the Optional<User>
            Users user = opUser.get();

            // check to see if the user has verified their account
            if (user.isVerified()) {
                user.setPassword(null); // set the password to null, so it is not returned with the object
                opUser = Optional.of(user);
                return opUser; // it matched
            } else {
                return Optional.empty(); // don't return the user if they are unverified
            }

        } else {
            return Optional.empty(); // it didn't match
        }
    }

    protected String createUser(Users user) {
        // Check if the account already exists with that email
        if (repository.existsByEmail(user.getEmail())) {
            return "Account Exists"; // the account exists
        }

        // generate a hashed password using BCrypt
        String salt = BCrypt.gensalt(13); // create a salt
        String hashed_password = BCrypt.hashpw(user.getPassword(), salt); // create the hashed password

        // Update the users password to be the BCrypt hashed password
        user.setPassword(hashed_password);

        try {
            int verificationCode = sendVerificationCode(user); // send the verification email and get the code
            user.setVerificationCode(verificationCode);
            repository.save(user); // add the user to the database
            return "Account Created";
        } catch (MessagingException | UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    protected boolean updateUserInfo(UpdateInfo info) {
        Optional<Users> opUser = repository.findByEmail(info.getEmail()); // can be changed to find by ID if we choose

        // get the user out of the Optional class
        Users user = opUser.get();

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

    protected boolean updatePassword(PasswordUpdate info) {
        // get the user we are trying to update the password for
        Optional<Users> opUser = repository.findByEmail(info.getEmail());
        Users user = opUser.get();

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
    private int sendVerificationCode(Users user) throws MessagingException, UnsupportedEncodingException {
        // generate a random 6-digit code to send and store
        int max = 999999;
        int min = 100000;
        int verificationCode = min + (int)(Math.random() * ((max-min) + 1));

        // set up the properties for the email
        MimeMessage verificationMessage = getMimeMailMessage(user, verificationCode);
        // send the email
        sender.send(verificationMessage);
        return verificationCode;
    }
    // for use if the user needs to resend a verification code
    public void sendVerificationCode(String email) throws MessagingException, UnsupportedEncodingException {
        // get the user with the given email
        Optional<Users> opUser = repository.findByEmail(email);
        if (opUser.isEmpty()) {
            return;
        }
        Users user = opUser.get();

        // generate a random 6-digit code to send and store
        int max = 999999;
        int min = 100000;
        int verificationCode = min + (int)(Math.random() * ((max-min) + 1));

        // update the verification code within the users info
        user.setVerificationCode(verificationCode);
        repository.save(user);

        // set up the properties for the email
        MimeMessage verificationMessage = getMimeMailMessage(user, verificationCode);

        // send the email
        sender.send(verificationMessage);
    }

    private MimeMessage getMimeMailMessage(Users user, int randInt) throws MessagingException, UnsupportedEncodingException {
        String toAddress = user.getEmail();
        String fromAddress = "WeFliGroup1@gmail.com";
        String senderName = "WeFli";
        String subject = "Please complete your registration";
        String content = "<h1>Welcome to WeFli " + user.getFirstName() + "!</h1><br/>" +
                "<h2>Here is your verification code to complete your account registration:</h2> <h2>" + randInt +
                "</h2><br><br><h3>Thank you,<br>from the WeFli team!</h3>";

        // Create the email message
        MimeMessage verificationMessage = sender.createMimeMessage();
        MimeMessageHelper messageHelper = new MimeMessageHelper(verificationMessage);

        messageHelper.setFrom(fromAddress, senderName);
        messageHelper.setTo(toAddress);
        messageHelper.setSubject(subject);

        messageHelper.setText(content, true);
        return verificationMessage;
    }

    protected boolean verifyUser(VerifyInfo info) {
        if (!repository.existsByEmail(info.getEmail())) {return false;} // return false if user does not exist
        // get the user
        Optional<Users> opUser = repository.findByEmail(info.getEmail());
        Users user = opUser.get();

        // check to see if the verification codes match
        if (info.getVerificationCode() == user.getVerificationCode()) {
            user.setVerified(true); // set the account status to verified
            repository.save(user);
            return true;
        } else {
            return false;
        }
    }

    protected ArrayList<Trip> getUserTrips(int usersId) {
        return tripRepository.findByUsersID(usersId);
    }

    protected ArrayList<TripForHomePage> getHomePageTrips() {
       // Get 20 most recent trips and return it
        ArrayList<Trip> trips = tripRepository.find20NewestTrips();
        ArrayList<TripForHomePage> returnTrips = new ArrayList<>();
        for (Trip trip : trips) {
            Optional<Users> opUser = repository.findById(trip.getUsersID());
            Users user = opUser.get();

            returnTrips.add(new TripForHomePage(trip.getTripID(), user.getUserName(), trip.getDestination(), trip.getLikes(),
                    trip.isVisibleToOthers(), trip.getTripsExcursions()));
        }
        return returnTrips;
    }

    /*
    * Need to update this as more things are built
    * will need to delete every trip and comment that is associated with the user
    * before deleting the user. Will revisit this when comments are done*/
    public boolean deleteUser(String email) {
        Optional<Users> opUser = repository.findByEmail(email);
        Users user = opUser.get();
        repository.delete(user);
        return true;
    }
}
