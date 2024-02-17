package com.github.CSC450Group1.wefli.User;

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
}
