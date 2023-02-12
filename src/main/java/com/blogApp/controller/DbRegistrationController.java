package com.blogApp.controller;

import com.blogApp.model.PostArticle;
import com.blogApp.model.PostCategory;
import com.blogApp.model.UserSubscriptionRequest;
import com.blogApp.repository.PostArticlesRepository;
import com.blogApp.repository.PostCategoryRepository;
import com.blogApp.repository.UserSubscriptionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class DbRegistrationController {
    @Autowired
    private PostCategoryRepository postCategoryRepository;

    @Autowired
    private PostArticlesRepository postArticlesRepository;

    @Autowired
    private UserSubscriptionRepository userSubscriptionRepository;

    @PostMapping("/insert")
    public ResponseEntity insertInDatabase(@RequestBody PostCategory postCategory) {
        PostCategory category = postCategoryRepository.insert(postCategory);
        if (category != null) {
            return ResponseEntity.ok(category);
        }
        return ResponseEntity.status(HttpStatus.NO_CONTENT.value()).body(null);
    }

    @PostMapping("/registerPost")
    public ResponseEntity registerPostInDB(@RequestBody PostArticle postArticle) {
        PostArticle article = postArticlesRepository.insert(postArticle);
        if (article != null) {
            return ResponseEntity.ok(postArticle);
        }
        return ResponseEntity.status(HttpStatus.NO_CONTENT.value()).body(null);
    }

    @PostMapping("/register")
    public String registerUser(@ModelAttribute("user") UserSubscriptionRequest userSubscriptionRequest) {
        UserSubscriptionRequest userRequest = userSubscriptionRepository.insert(userSubscriptionRequest);
        return "thanks";
    }
}
