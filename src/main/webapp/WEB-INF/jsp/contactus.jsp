<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CodeBlogs-ContactUs</title>
    <link rel="stylesheet" href="/css/styles.css">
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
                  <a class="nav-link" style="color: #FFFBF5;" href="contactus.jsp">Subscribe Us</a>
                </li>

              </ul>
              <form class="d-flex" role="search" action="/search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="search-button" type="submit">Search</button>
              </form>
            </div>
        </div>
      </nav>
      <div class="contact-us-div">
            <img src="/images/contact-us.png" alt="contact-us-image" class="contact-us-image">

            <h1 style="
            left: 541px;
            position: absolute;
            font-family: 'Merriweather', serif;
            top: 61px;
            font-family: 'Itim', cursive;
            font-size: 3.1rem;
            ">Get in touch with us</h1>
            <div class="form-div">

            <!-- HERE THE FORM IMPLEMENTATION STARTS -->

                <form:form action="/register" method="post" id="contact-form" modelAttribute="user">

                <form:label path="email" style="position: absolute;top: 67px;left: 72px; font-size: 31.6px; font-family: 'Itim', cursive;">E-mail address:</form:label>
                <form:input path="email" type="email" style="position: absolute; top: 72px; left: 330px; border: solid; border-radius: 18%; width: 310px;" placeholder="Email-ID" required="true"/>

                <form:label path="mobile" style="position: absolute;top: 144px;left: 72px; font-size: 31.6px; font-family: 'Itim', cursive;">Mobile Number:</form:label>
                <form:input path="mobile" type="text" style="position: absolute; top: 150px; left: 330px; border: solid; border-radius: 18%; width: 310px;" placeholder="Mobile Number" required="true"/>

                <form:label path="address" style="position: absolute;top: 218px;left: 72px; font-size: 31.6px; font-family: 'Itim', cursive;">Address:</form:label>
                <form:input path="address" type="text" style="position: absolute; top: 223px; left: 330px; border: solid; border-radius: 18%; width: 310px;" placeholder="Your Address" required="true"/>

                <button class="button-27" form="contact-form">SUBSCRIBE</button>
                </form:form>
            </div>
      </div>
</body>
</html>