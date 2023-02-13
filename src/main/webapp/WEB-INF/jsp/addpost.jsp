<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>CodeBlogs-Add Post</title>
    <link rel="stylesheet" href="/css/styles.css">
    <link rel="stylesheet" href="/css/poststyles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap" rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=Cabin&family=Merriweather&family=Pacifico&family=Quicksand&display=swap"
        rel="stylesheet">
</head>

<body>
  <!-- navigation bar starts here -->
  <nav class="navbar navbar-expand-lg bg-body-tertiary " style="padding-top: 0; padding-bottom: 0;">
          <div class="container-fluid" style="background-color: #674188; height: 75px">
            <a class="navbar-brand" href="#" style="color: #FFFBF5;">
              <img src="/images/code.png" alt="Logo" width="40px" height="40px" ">
                      CodeBlogs
                    </a>
                <button class=" navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                  <li class="nav-item">
                    <a class="nav-link active" style="color: #FFFBF5;" aria-current="page" href="/codeblogs">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" style="color: #FFFBF5;" href="/about">About</a>
                  </li>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" style="color: #FFFBF5;" href="/posts">Posts</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" style="color: #FFFBF5;" href="contactus.jsp">Contact Us</a>
                  </li>

                </ul>
                <form class="d-flex" role="search" action="/search">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="search-button" type="submit">Search</button>
                </form>
              </div>
          </div>
        </nav>
      <!-- navigation bar starts here -->
      <div class="form-div-admin">
            <form:form action="/addarticle" style="position: relative;" id="add-post-form" method="post" modelAttribute="postArticle">
                <form:label path="title" class="admin-labels" style="position: absolute;
                left: 299px;
                top: 57px;">
                Enter Post Title: </form:label> <form:input path="title" class="admin-input-styling" style="position: absolute;
                left: 610px;
                top: 59px;" type="text" name="post_title" />
                <br>
                <form:label path="image_id" class="admin-labels" style="position: absolute;
                left: 299px;
                top: 119px;">
                Enter Image ID: </form:label> <form:input path="image_id" type="text" class="admin-input-styling" style="position: absolute;
                left: 610px;
                top: 119px;" name="image_id" />
                <br>
                <form:label path="content" class="admin-labels" style="position: absolute;
                left: 513px;
                top: 266px;">
                Enter Post Content: </form:label> <form:textarea form="add-post-form" path="content" style="position: absolute;
                height: 269px;
                top: 310px;
                margin-left: 20px;
                width: 1339px;" name="post_content" cols="30" rows="10"></form:textarea>
                <br>
                <form:label path="postCategory" class="admin-labels" style="position: absolute;
                left: 299px;
                top: 183px;">Enter Post Category: </form:label> <form:input path="postCategory" type="text" class="admin-input-styling" style="position: absolute;
    left: 610px;
    top: 184px;" name="post_category" />
                <br>
            </form:form>
            <button form="add-post-form" style="    left: 541.1px;
            position: absolute;
            top: 696px;
            width: 25%;
            "class="admin-pannel-button">ADD POST</button>
      </div>
</body>

</html>