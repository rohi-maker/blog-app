package com.blogApp.controller;

import com.blogApp.model.PostArticle;
import com.blogApp.model.PostCategory;
import com.blogApp.model.UserSubscriptionRequest;
import com.blogApp.repository.PostArticlesRepository;
import com.blogApp.repository.PostCategoryRepository;
import com.blogApp.repository.UserSubscriptionRepository;
import com.blogApp.service.BlogAppService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.stream.Collectors;

@Controller
public class ViewController {

    @Autowired
    private BlogAppService blogAppService;

    @Autowired
    private PostCategoryRepository postCategoryRepository;

    @Autowired
    private PostArticlesRepository postArticlesRepository;
    @Autowired
    private UserSubscriptionRepository userSubscriptionRepository;

    @RequestMapping("/codeblogs/{pageNo}")
    public String nextPages(@PathVariable("pageNo") int pageNo, Model model) {
        Page<PostCategory> postCategories = blogAppService.getLatestPostCategory(pageNo);
        List<PostCategory> latestPostCategories = postCategories.get().collect(Collectors.toList());
        if (latestPostCategories != null && latestPostCategories.size() > 0) {
            model.addAttribute("postsFromDb", latestPostCategories);
            if (postCategories.isLast()) {
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

    @RequestMapping("/posts/{pageNo}")
    public String posts(@PathVariable("pageNo") int pageNo, Model model) {
        Page<PostArticle> myPostArticles = blogAppService.getLatestPostArticles(pageNo);
        List<PostArticle> postArticles= myPostArticles.get().collect(Collectors.toList());
        if (postArticles != null && postArticles.size() > 0) {
            model.addAttribute("postsArticlesFromDb", postArticles);
            if (myPostArticles.isLast()) {
                model.addAttribute("nextArticleNo", null);
            } else {
                model.addAttribute("nextArticleNo", new Integer(pageNo + 1));
            }
            if (pageNo != 0) {
                model.addAttribute("prevArticleNo", new Integer(pageNo - 1));
            } else {
                model.addAttribute("prevArticleNo", null);
            }
        } else {
            model.addAttribute("postsArticlesFromDb", null);
            model.addAttribute("nextArticleNo", new Integer(null));
            model.addAttribute("prevArticleNo", pageNo - 2);
            firstPage(model);
        }
        return "posts";
    }

    @RequestMapping("/posts")
    public String postsFrontPage(Model model) {
        Page<PostArticle> myPostArticles = blogAppService.getLatestPostArticles(0);
        List<PostArticle> postArticles= myPostArticles.get().collect(Collectors.toList());
        if (postArticles != null && postArticles.size() > 0) {
            if (myPostArticles.isLast()) {
                model.addAttribute("nextArticleNo", null);
                model.addAttribute("prevArticleNo", null);
                model.addAttribute("postsArticlesFromDb", postArticles);
            } else {
                model.addAttribute("nextArticleNo", new Integer(1));
                model.addAttribute("prevArticleNo", null);
                model.addAttribute("postsArticlesFromDb", postArticles);
            }
        } else {
            model.addAttribute("postsArticlesFromDb", null);
            model.addAttribute("nextArticleNo", null);
            model.addAttribute("prevArticleNo", null);
        }
        return "posts";
    }

    // api in case user just accessed the web application
    @RequestMapping("/codeblogs")
    public String firstPage(Model model) {
        Page<PostCategory> postCategories = blogAppService.getLatestPostCategory(0);
        List<PostCategory> latestPostCategories = postCategories.get().collect(Collectors.toList());
        if (latestPostCategories != null && latestPostCategories.size() > 0) {
            if (postCategories.isLast()) {
                model.addAttribute("nextPageNo", null);
                model.addAttribute("prevPageNo", null);
                model.addAttribute("postsFromDb", latestPostCategories);
            } else {
                model.addAttribute("nextPageNo", new Integer(1));
                model.addAttribute("prevPageNo", null);
                model.addAttribute("postsFromDb", latestPostCategories);
            }
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


    @GetMapping("/readpost/{postTitle}")
    public String readPost(@PathVariable("postTitle") String postTitle, Model model) {
        PostArticle postArticle = blogAppService.getPostArticle(postTitle);
        model.addAttribute("postToRead", postArticle);
        return "articlepage";
    }

    @RequestMapping("/relatedposts/{postCategory}")
    public String getCategoryRelatedPostsFrontPage(@PathVariable("postCategory") String postCategory,Model model){
        Page<PostArticle> myPostArticles=blogAppService.getPostArticlesAccordingToPostCategory(postCategory,0);
        List<PostArticle> postArticles=myPostArticles.get().collect(Collectors.toList());
        if (postArticles != null && postArticles.size() > 0) {
            if (myPostArticles.isLast()) {
                model.addAttribute("nextPageNo", null);
                model.addAttribute("prevPageNo", null);
                model.addAttribute("postCategory",postCategory);
                model.addAttribute("articlesFromDb", postArticles);
            } else {
                model.addAttribute("nextPageNo", new Integer(1));
                model.addAttribute("prevPageNo", null);
                model.addAttribute("postCategory",postCategory);
                model.addAttribute("articlesFromDb", postArticles);
            }
        } else {
            model.addAttribute("postCategory",postCategory);
            model.addAttribute("articlesFromDb", null);
        }
        return "related";
    }

    @RequestMapping("/relatedposts/{postCategory}/{pageNo}")
    public String getCategoryRelatedPosts(@PathVariable("postCategory") String postCategory,@PathVariable("pageNo") int pageNo,Model model){
        Page<PostArticle> myPostArticles=blogAppService.getPostArticlesAccordingToPostCategory(postCategory,0);
        List<PostArticle> postArticles=myPostArticles.get().collect(Collectors.toList());
        if (postArticles != null && postArticles.size() > 0) {
            if (myPostArticles.isLast()) {
                model.addAttribute("nextPageNo", null);
                model.addAttribute("prevPageNo", null);
                model.addAttribute("postCategory",postCategory);
                model.addAttribute("articlesFromDb", postArticles);
            } else {
                model.addAttribute("nextPageNo", new Integer(1));
                model.addAttribute("prevPageNo", null);
                model.addAttribute("postCategory",postCategory);
                model.addAttribute("articlesFromDb", postArticles);
            }
        } else {
            model.addAttribute("articlesFromDb", null);
            model.addAttribute("nextPageNo", null);
            model.addAttribute("postCategory",postCategory);
            model.addAttribute("prevPageNo", null);
        }
        return "related";
    }


}
