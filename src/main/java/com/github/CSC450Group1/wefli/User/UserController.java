package com.github.CSC450Group1.wefli.User;

import com.github.CSC450Group1.wefli.RequestClasses.LoginInfo;
import com.github.CSC450Group1.wefli.RequestClasses.PasswordUpdate;
import com.github.CSC450Group1.wefli.RequestClasses.UpdateInfo;
import com.github.CSC450Group1.wefli.RequestClasses.VerifyInfo;
import jakarta.mail.MessagingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.io.UnsupportedEncodingException;
import java.util.Optional;

@RestController
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping(method = RequestMethod.POST, value = "/user/login")
    public Optional<User> login(@RequestBody LoginInfo info) {
        return userService.loginUser(info);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/user/create")
    public String createUser(@RequestBody User user) {
        return userService.createUser(user);
    }

    @RequestMapping(method = RequestMethod.PUT, value = "/user/update")
    public boolean updateUser(@RequestBody UpdateInfo info) {
        return userService.updateUserInfo(info);
    }

    @RequestMapping(method = RequestMethod.PUT, value = "/user/updatePassword")
    public boolean updatePassword(@RequestBody PasswordUpdate info) {
        return userService.updatePassword(info);
    }

    @RequestMapping(method = RequestMethod.PUT, value = "/user/verify")
    public boolean verifyUser(@RequestBody VerifyInfo verifyInfo) {return userService.verifyUser(verifyInfo);}

    @RequestMapping(method = RequestMethod.PUT, value = "/user/resendVerification") // email sent as plain text
    public void resendVerification(@RequestBody String email) {
        try {
            userService.sendVerificationCode(email);
        } catch (MessagingException | UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    @RequestMapping(method = RequestMethod.DELETE, value = "/user/delete")
    public boolean deleteUser(@RequestBody String email) {
        return userService.deleteUser(email);
    }
}
