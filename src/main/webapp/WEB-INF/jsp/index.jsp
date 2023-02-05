<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>CodeBlogs-Home</title>
  <link rel="stylesheet" href="/css/styles.css">
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
              <a class="nav-link active" style="color: #FFFBF5;" aria-current="page" href="/">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" style="color: #FFFBF5;" href="/about">About</a>
            </li>
            </li>
            <li class="nav-item">
              <a class="nav-link" style="color: #FFFBF5;" href="/posts">Posts</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" style="color: #FFFBF5;" href="/contactus">Contact Us</a>
            </li>

          </ul>
          <form class="d-flex" role="search" action="/search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="search-button" type="submit">Search</button>
          </form>
        </div>
    </div>
  </nav>
  <div class="show-pannel">
    <img src="/images/pexels-cottonbro-studio-4709289.jpg" class="front-image" alt="Front image">
    <h1 class="welcome-text">Welcome to</h1>
    <h1 class="website-name-text">CodeBlogs.com</h1>
    <p class="front-paragraph">"A website to learn coding ideas and <br>best coding practices. Foccus on<br>
      generally occured problems in <br>programming. <strong style="color: black;">First You learn then <br>you earn
      </strong>"</p>
  </div>
  <div class="topics">
    <div class="first-div">
        <img src="/images/spring.svg" class="spring-logo" alt="Spring-logo">
        <a href="/blog" class="link-headings-firstpost">Learning Spring Boot</a>
        <a href="/blog" class="paragraph-links">"A spring boot is a powerfull framework written in java.
          If anyone having a knowledge of basic java then he/she can go for this framework. One of the
          most popular use of this framework is building microservices.
          "</a>
    </div>

    <div class="second-div">
      <img src="/images/logo-mysql-mysql-logo-png-images-are-download-crazypng-21.png" class="mysql-logo" alt="Mysql-logo">
      <a href="/blog" class="link-headings-secondpost">Learning MySQL Database</a>
      <a href="/blog" class="paragraph-links">"A spring boot is a powerfull framework written in java.
        If anyone having a knowledge of basic java then he/she can go for this framework. One of the
        most popular use of this framework is building microservices.
        "
        </a>
  </div>


  </div>
</body>

</html>