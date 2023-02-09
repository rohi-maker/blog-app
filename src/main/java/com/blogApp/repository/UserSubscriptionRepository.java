package com.blogApp.repository;

import com.blogApp.model.UserSubscriptionRequest;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserSubscriptionRepository extends MongoRepository<UserSubscriptionRequest, String> {

}
