package com.blogApp.repository;

import com.blogApp.model.PostCategory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostCategoryRepository extends MongoRepository<PostCategory, Object> {

  Page<PostCategory> findAll(Pageable pageRequest);
}