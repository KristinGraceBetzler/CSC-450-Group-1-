package com.github.CSC450Group1.wefli.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login/user")
    public User getUser() {
       return userService.getUser();
    }

    @RequestMapping(method = RequestMethod.POST, value = "/create/user")
    public boolean createUser(@RequestBody User user) {
        return userService.createUser(user);
    }
}
