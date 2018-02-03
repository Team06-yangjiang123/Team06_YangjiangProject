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

}
