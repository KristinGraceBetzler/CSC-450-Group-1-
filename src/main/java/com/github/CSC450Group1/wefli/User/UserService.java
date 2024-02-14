package com.github.CSC450Group1.wefli.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    // private UserRepository userRepository;

    protected User getUser() {
        return null;
    }

    protected boolean createUser(User user) {
        return false;
    }
}
