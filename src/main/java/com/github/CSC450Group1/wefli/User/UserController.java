package com.github.CSC450Group1.wefli.User;

import com.github.CSC450Group1.wefli.RequestClasses.LoginInfo;
import com.github.CSC450Group1.wefli.RequestClasses.PasswordUpdate;
import com.github.CSC450Group1.wefli.RequestClasses.UpdateInfo;
import com.github.CSC450Group1.wefli.RequestClasses.VerifyInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping(method = RequestMethod.POST, value = "/login/user")
    public Optional<User> login(@RequestBody LoginInfo info) {
        return userService.loginUser(info);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/create/user")
    public String createUser(@RequestBody User user) {
        return userService.createUser(user);
    }

    @RequestMapping(method = RequestMethod.PUT, value = "/update/user")
    public boolean updateUser(@RequestBody UpdateInfo info) {
        return userService.updateUserInfo(info);
    }

    @RequestMapping(method = RequestMethod.PUT, value = "/update/userPassword")
    public boolean updatePassword(@RequestBody PasswordUpdate info) {
        return userService.updatePassword(info);
    }

    @RequestMapping(method = RequestMethod.PUT, value = "/user/verify")
    public boolean verifyUser(@RequestBody VerifyInfo verifyInfo) {return userService.verifyUser(verifyInfo);}
}
