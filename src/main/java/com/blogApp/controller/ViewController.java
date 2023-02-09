package com.blogApp.controller;

import com.blogApp.model.PostCategory;
import com.blogApp.model.UserSubscriptionRequest;
import com.blogApp.repository.PostCategoryRepository;
import com.blogApp.repository.UserSubscriptionRepository;
import com.blogApp.service.BlogAppService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {

  @Autowired
  private BlogAppService blogAppService;

  @Autowired
  private PostCategoryRepository postCategoryRepository;

  @Autowired
  private UserSubscriptionRepository userSubscriptionRepository;

  @RequestMapping("/codeblogs/{pageNo}")
  public String nextPages(@PathVariable("pageNo") int pageNo, Model model) {
    List<PostCategory> latestPostCategories = blogAppService.getLatestPostCategory(pageNo);
    if (latestPostCategories != null && latestPostCategories.size() > 0) {
      model.addAttribute("postsFromDb", latestPostCategories);
      if (latestPostCategories.get(latestPostCategories.size() - 1).getId() == 1) {
        model.addAttribute("nextPageNo", null);
      } else {
        model.addAttribute("nextPageNo", new Integer(pageNo + 1));
      }
      if (pageNo != 0) {
        model.addAttribute("prevPageNo", new Integer(pageNo - 1));
      } else {
        model.addAttribute("prevPageNo", null);
      }
    } else {
      model.addAttribute("postsFromDb", null);
      model.addAttribute("nextPageNo", new Integer(null));
      model.addAttribute("prevPageNo", pageNo - 2);
      firstPage(model);
    }
    return "index";
  }

  // api in case user just accessed the web application
  @RequestMapping("/codeblogs")
  public String firstPage(Model model) {
    List<PostCategory> latestPostCategories = blogAppService.getLatestPostCategory(0);
    if (latestPostCategories != null && latestPostCategories.size() > 0) {
      model.addAttribute("nextPageNo", new Integer(1));
      model.addAttribute("prevPageNo", null);
      model.addAttribute("postsFromDb", latestPostCategories);
    } else {
      model.addAttribute("postsFromDb", null);
    }
    return "index";
  }


  @RequestMapping("/contactus")
  public String contactUs(Model model) {
    model.addAttribute("user", new UserSubscriptionRequest());
    return "contactus";
  }

  @RequestMapping("/posts")
  public String posts() {
    return "posts";
  }

  @PostMapping("/insert")
  public ResponseEntity insertInDatabase(@RequestBody PostCategory postCategory) {
    PostCategory category = postCategoryRepository.insert(postCategory);
    if (category != null) {
      return ResponseEntity.ok(category);
    }
    return ResponseEntity.status(HttpStatus.NO_CONTENT.value()).body(null);
  }

  @PostMapping("/register")
  public String registerUser(@ModelAttribute("user") UserSubscriptionRequest userSubscriptionRequest) {
    UserSubscriptionRequest userRequest = userSubscriptionRepository.insert(userSubscriptionRequest);
    return "thanks";
  }

}
