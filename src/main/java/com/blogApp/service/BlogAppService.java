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

    public List<PostCategory> getLatestPostCategory(int pageNo) {
        Page<PostCategory> allPostCategory = postCategoryRepository.findAll(PageRequest.of(pageNo, 3, Sort.by("createdDate").descending()));
        List<PostCategory> categories = allPostCategory.get().collect(Collectors.toList());
        if (categories != null && categories.size() > 0) {
            return categories;
        }
        return null;
    }

    public List<PostArticle> getLatestPostArticles(int pageNo) {
        Page<PostArticle> allPostArticles = postArticlesRepository.findAll(PageRequest.of(pageNo, 5, Sort.by("createdDate").descending()));
        List<PostArticle> postArticles=allPostArticles.get().collect(Collectors.toList());
        if(postArticles!=null && postArticles.size()>0){
            return postArticles;
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

//    public static void main(String[] args) {
//        String str="asdfda";
//        str.substring(1);
//    }

}
