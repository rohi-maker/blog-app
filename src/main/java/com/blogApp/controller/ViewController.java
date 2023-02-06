package com.blogApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {

  @RequestMapping("/")
  public String about() {
    /*
    Overall logic of fetching the data from the database according to the latest posts
     */
    return "index";
  }

  @RequestMapping("/contactus")
  public String contactUs() {
    return "contactus";
  }

  @RequestMapping("/posts")
  public String posts() {
    return "posts";
  }
}
