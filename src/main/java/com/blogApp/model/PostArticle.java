package com.blogApp.model;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.Date;

@Data
@Document("PostArticles")
public class PostArticle {
    @Id
    private String id;
    private String title;
    private String image_id;
    private String content;
    private String postCategory;
    private Date createdDate = new Date(System.currentTimeMillis());
}
