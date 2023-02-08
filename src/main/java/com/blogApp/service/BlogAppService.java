package com.blogApp.service;

import com.blogApp.model.PostCategory;
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
  private PostCategoryRepository repository;

  public List<PostCategory> getLatestPostCategory(int pageNo) {
    Page<PostCategory> allPostCategory = repository.findAll(
        PageRequest.of(pageNo, 3, Sort.by("createdDate").descending()));
    List<PostCategory> categories = allPostCategory.get().collect(Collectors.toList());
    if (categories != null && categories.size() > 0) {
      return categories;
    }
    return null;
  }


}
