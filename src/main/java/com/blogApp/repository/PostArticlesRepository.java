package com.blogApp.repository;

import com.blogApp.model.PostArticle;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface PostArticlesRepository extends MongoRepository<PostArticle, Integer> {

  Page<PostArticle> findAll(Pageable pageRequest);

  @Query(value = "{'title': ?0}")
  PostArticle findByTitle(String title);

  @Query(value = "{'postCategory': ?0}")
  Page<PostArticle> findAll(String category, Pageable pageRequest);

  @Query(value = "{$or: [{'title': ?0},{'postCategory': ?0}]}")
  Page<PostArticle> findAllByTitleOrCategory(String query, Pageable pageRequest);
}
