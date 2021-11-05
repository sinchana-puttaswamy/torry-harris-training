package com.torryharris.newtrain.service;

import com.torryharris.newtrain.model.UserModel;
import com.torryharris.newtrain.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserRepository repo;

}
