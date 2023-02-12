package com.blogApp.service;

import com.blogApp.model.PostArticle;
import com.blogApp.model.PostCategory;
import com.blogApp.repository.PostArticlesRepository;
import com.blogApp.repository.PostCategoryRepository;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class BlogAppService {

    @Autowired
    private PostCategoryRepository postCategoryRepository;

    @Autowired
    private PostArticlesRepository postArticlesRepository;

    public Page<PostCategory> getLatestPostCategory(int pageNo) {
        Page<PostCategory> allPostCategory = postCategoryRepository.findAll(PageRequest.of(pageNo, 3, Sort.by("createdDate").descending()));
        if (allPostCategory != null ) {
            return allPostCategory;
        }
        return null;
    }

    public Page<PostArticle> getLatestPostArticles(int pageNo) {
        Page<PostArticle> allPostArticles = postArticlesRepository.findAll(PageRequest.of(pageNo, 5, Sort.by("createdDate").descending()));

        if(allPostArticles!=null ){
            return allPostArticles;
        }
        return null;
    }

    public PostArticle getPostArticle(String postTitle) {
        PostArticle article=postArticlesRepository.findByTitle(postTitle);
        if(article!=null){
            return article;
        }
        // here we need to handle the exceptional cases
        return null;
    }

    public Page<PostArticle> getPostArticlesAccordingToPostCategory(String category,int pageNo){
        Page<PostArticle> allPostArticles = postArticlesRepository.findAll(category,PageRequest.of(pageNo, 5, Sort.by("createdDate").descending()));
//        List<PostArticle> receivedPostArticles=allPostArticles.get().collect(Collectors.toList());
        if(allPostArticles!=null){
            return allPostArticles;
        }
        // here we need to handle the exceptional cases
        return null;
    }

}
