package com.github.CSC450Group1.wefli.User;

import com.github.CSC450Group1.wefli.RequestClasses.LoginInfo;
import com.github.CSC450Group1.wefli.RequestClasses.PasswordUpdate;
import com.github.CSC450Group1.wefli.RequestClasses.UpdateInfo;
import com.github.CSC450Group1.wefli.RequestClasses.VerifyInfo;
import jakarta.mail.MessagingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.UnsupportedEncodingException;
import java.util.Optional;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @PostMapping("/login")
    public Optional<User> login(@RequestBody LoginInfo info) {
        return userService.loginUser(info);
    }

    @PostMapping("/create")
    public String createUser(@RequestBody User user) {
        return userService.createUser(user);
    }

    @PutMapping("/update")
    public boolean updateUser(@RequestBody UpdateInfo info) {
        return userService.updateUserInfo(info);
    }

    @PutMapping("/updatePassword")
    public boolean updatePassword(@RequestBody PasswordUpdate info) {
        return userService.updatePassword(info);
    }

    @PutMapping("/verify")
    public boolean verifyUser(@RequestBody VerifyInfo verifyInfo) {return userService.verifyUser(verifyInfo);}

    @PutMapping("resendVerification")// email sent as plain text
    public void resendVerification(@RequestBody String email) {
        try {
            userService.sendVerificationCode(email);
        } catch (MessagingException | UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    @DeleteMapping("delete") // send email as plain text
    public boolean deleteUser(@RequestBody String email) {
        return userService.deleteUser(email);
    }
}
