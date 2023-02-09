package com.blogApp.model;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@Document("SubscriptionRequests")
public class UserSubscriptionRequest {

  @Id
  public String email;
  public String mobile;
  public String address;
}
