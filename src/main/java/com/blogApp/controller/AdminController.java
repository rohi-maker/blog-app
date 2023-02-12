package com.blogApp.controller;

import com.blogApp.model.PostArticle;
import com.blogApp.repository.PostArticlesRepository;
import net.moznion.random.string.RandomStringGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

  @Autowired
  private PostArticlesRepository postArticlesRepository;

  @RequestMapping("/admin")
  public String showAdminPanel() {
    return "admin";
  }

  @RequestMapping("/addpost")
  public String addPost(Model model) {
    model.addAttribute("postArticle", new PostArticle());
    return "addpost";
  }

  @PostMapping("/addarticle")
  public String addPostArticle(@ModelAttribute("postArticle") PostArticle postArticle, Model model) {
    postArticle.setId("ID" + new RandomStringGenerator().generateFromPattern("ccccCCnn"));
    PostArticle fromDb = postArticlesRepository.insert(postArticle);
    if (fromDb != null) {
      model.addAttribute("postStatus", "SAVED");
      return "addpost";
    }
    model.addAttribute("postStatus", "NOT-SAVED");
    return "addpost"; // here we need to handle the exceptional cases
  }

}
