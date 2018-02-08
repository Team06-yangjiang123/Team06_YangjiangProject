package com.team06.controller;

import com.team06.domain.User;
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
    public String home(User user){
        if (user.getUsername().equals("123456") && user.getPassword().equals("654321")){
            return "home";
        }
        return "index";
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

    @RequestMapping(value = "/contractFlowReport")
    public String contractFlowReport(){
        return "contractFlow_report";
    }

    @RequestMapping(value = "/technicalManager")
    public String technicalManager(){
        return "technical_manager";
    }

    @RequestMapping(value = "/applyTable")
    public String applyTable(){
        return "applyTable";
    }



    @RequestMapping(value = "/integratedQuery")
    public String integratedQuery(){
        return "integrated_query";
    }

    @RequestMapping(value = "/satellite")
    public String satellite(){
        return "satellite";
    }

    @RequestMapping(value = "/crew")
    public String crew(){
        return "crew";
    }

    @RequestMapping(value = "/plant")
    public String plant(){
        return "plant";
    }

    @RequestMapping(value = "/radiography")
    public String radiography(){
        return "radiography";
    }
}
