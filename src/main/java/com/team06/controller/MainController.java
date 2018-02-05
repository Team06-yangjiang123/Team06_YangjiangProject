package com.team06.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dllo on 18/2/2.
 */
@Controller
public class MainController {

    @RequestMapping(value = {"","/"})
    public String index(){
        return "index";
    }

    @RequestMapping(value = "/home")
    public String home(){
        return "home";
    }

    @RequestMapping(value = "/welcome")
    public String welcome(){
        return "welcome";
    }

    @RequestMapping(value = "/personCenter")
    public String personCenter(){
        return "personCenter";
    }

    @RequestMapping(value = "/projectBase")
    public String projectBase(){
        return "project_base";
    }

    @RequestMapping(value = "/projectOther")
    public String projectOther(){
        return "project_other";
    }

    @RequestMapping(value = "/selectPerson")
    public String selectPerson(){
        return "selectPerson";
    }

    @RequestMapping(value = "/chooseDept")
    public String chooseDept(){
        return "chooseDept";
    }
}
