<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CodeBlogs-Posts</title>
    <link rel="stylesheet" href="/css/styles.css">
    <link rel="stylesheet" href="/css/poststyles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Handlee&family=Itim&family=Palanquin+Dark:wght@400;500&display=swap" rel="stylesheet">
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
      <div class="post-layout">
        <img src="/images/spring.svg" alt="title-image" class="title-image-layout">
        <a href="/posttitle" alt="title-of-post" class="post-title-layout">Post Title</a>
        <p class="post-view-layout">This sample text is styled by the text generator. To change how this text looks, use the "Customize" form on the left.
           This is just a test paragraph. This is just a test paragraph.To change how this text looks...
           <a href="/somelink" style="text-decoration: none;
                                      color: black;
           ">Read more</a>
        </p>
      </div>
      <div class="post-layout">
        <img src="/images/spring.svg" alt="title-image" class="title-image-layout">
        <a href="/posttitle" alt="title-of-post" class="post-title-layout">Post Title</a>
        <p class="post-view-layout">This sample text is styled by the text generator. To change how this text looks, use the "Customize" form on the left.
           This is just a test paragraph. This is just a test paragraph.To change how this text looks...
           <a href="/somelink" style="text-decoration: none;
                                      color: black;
           ">Read more</a>
        </p>
      </div>
      <div class="post-layout">
        <img src="/images/spring.svg" alt="title-image" class="title-image-layout">
        <a href="/posttitle" alt="title-of-post" class="post-title-layout">Post Title</a>
        <p class="post-view-layout">This sample text is styled by the text generator. To change how this text looks, use the "Customize" form on the left.
           This is just a test paragraph. This is just a test paragraph.To change how this text looks...
           <a href="/somelink" style="text-decoration: none;
                                      color: black;
           ">Read more</a>
        </p>
    </div>
    <div class="post-layout">
        <img src="/images/spring.svg" alt="title-image" class="title-image-layout">
        <a href="/posttitle" alt="title-of-post" class="post-title-layout">Post Title</a>
        <p class="post-view-layout">This sample text is styled by the text generator. To change how this text looks, use the "Customize" form on the left.
           This is just a test paragraph. This is just a test paragraph.To change how this text looks...
           <a href="/somelink" style="text-decoration: none;
                                      color: black;
           ">Read more</a>
        </p>
    </div>
</body>
</html>