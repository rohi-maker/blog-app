<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List, com.blogApp.model.PostArticle, java.lang.Integer, java.lang.String"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CodeBlogs-Related Posts</title>
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
      </nav> <!-- nav bar finished here-->
      <!-- LOOP STARTS HERE -->
      <%
      List<PostArticle> postArticles=(List)request.getAttribute("articlesFromDb");
      String postCategory=(String)request.getAttribute("postCategory");
      if(postArticles!=null){
        for(PostArticle article: postArticles){
      %>
      <div class="post-layout">
        <img src="/images/<%=article.getImage_id()%>" alt="title-image" class="title-image-layout">
        <a href="/readpost/<%=article.getTitle()%>" alt="title-of-post" class="post-title-layout"><% out.print(article.getTitle()); %></a>
        <p class="post-view-layout">
               <%
                String content=(String)article.getContent();
                out.print(content.substring(0,210));
                %>
           <a href="/readpost/<%=article.getTitle()%>" style="text-decoration: none;
                                      color: black;
           ">Read more</a>
        </p>
      </div>
      <%
      }
      }
      %>
      <div style="position: relative;">
      <!-- buttons logic starts here -->
       <% if(request.getAttribute("nextPageNo")!=null){
         int nextPageNo=(Integer)request.getAttribute("nextPageNo");
         %>

        <a href="/relatedposts/<%=postCategory%>/<%=nextPageNo%>" style="text-decoration: none; color: white;"><button class="next-button" >Next Button</button></a>
        <%} %>
        <% if (request.getAttribute("prevPageNo")!=null){
          int prevPageNo=(Integer)request.getAttribute("prevPageNo");
        %>
        <a href="/relatedposts/<%=postCategory%>/<%=prevPageNo%>" style="text-decoration: none; color: white;"><button class="previous-button" >Previous Page</button></a>
        <% }%>
        </div>

</body>
</html>