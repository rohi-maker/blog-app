package com.blogApp.model;

import java.util.Date;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@Document("PostCategory")
public class PostCategory {

  @Id
  private int id;

  private String title;
  private String image_id;
  private String content;
  private Date createdDate = new Date(System.currentTimeMillis());
//  public int getId() {
//    return id;
//  }
//
//  public String getTitle() {
//    return title;
//  }
//
//  public String getImage_id() {
//    return image_id;Amar Library Theke Library Chalu Kenya in Java, Jai Jai Jal Raja Lagao cell Arakkane kiss tirugisu my Kono Jate Apne vilik Rajpura Vare optimise Kia Tha bus Oru Bol Rahe Honge hello hey Siri hello
//  }
//
//  public String getContent() {
//    return content;
//  }
}
