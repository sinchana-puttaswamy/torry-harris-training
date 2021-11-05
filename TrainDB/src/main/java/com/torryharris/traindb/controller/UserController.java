package com.torryharris.traindb.controller;

import com.torryharris.traindb.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    @RequestMapping("Train")
    public String train(){
        return "Train.html";

    }

}
