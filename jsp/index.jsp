<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*,academy.dao.*,academy.beans.*" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Winners Sports Academy — Home</title>
<%@include file= "/common_files/common_css.html" %>
</head>
<body>
<!-- Database Connection via JSTL -->
<c:catch var="exp">
<s:setDataSource url="jdbc:mysql://localhost:3306/academy_db" 
driver="com.mysql.cj.jdbc.Driver" user="root" password="root" var="con"
scope="application"/>
</c:catch>

<%
String message = (String)request.getAttribute("msg");
%>

<!-- Top Bar -->
<div class="sa-topbar">
  <h1><i class="fas fa-trophy"></i> Winners Sports Academy</h1>
  <div class="contact-info">
    <span><i class="fas fa-phone-alt"></i> 8960136926</span>
    <span><i class="fas fa-envelope"></i> vibhor1127@gmail.com</span>
    <a href="#Contact-us">Contact Us</a>
  </div>
</div>

<!-- Navigation -->
<%@ include file="/common_files/common_header.html" %>

<!-- Clock -->
<%@include file ="/Java-script/time.html" %>

<!-- Alert Message -->
<% if(message != null) { %>
<div class="sa-alert animate-in" role="alert">
  <strong><%= message %></strong>
</div>
<% } %>

<!-- Marquee Bean -->
<jsp:useBean id="msg" scope="application" class="academy.beans.message"></jsp:useBean>
<jsp:setProperty property="message" name="msg" value="Spread the Joy of Playing"/>

<!-- Hero Carousel -->
<div class="container-fluid p-0">
<div id="heroCarousel" class="carousel slide sa-hero-carousel" data-bs-ride="carousel" data-bs-interval="4000">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="2"></button>
    <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="3"></button>
    <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="4"></button>
    <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="5"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://c4.wallpaperflare.com/wallpaper/184/17/158/football-desktop-hd-pics-wallpaper-preview.jpg" alt="Football">
    </div>
    <div class="carousel-item">
      <img src="https://dtnext-prod.s3.ap-south-1.amazonaws.com/imported/2022-06/af17dbdc-01f2-436a-aa1d-d70597166cb7/a.jpg" alt="Cricket">
    </div>
    <div class="carousel-item">
      <img src="https://t4.ftcdn.net/jpg/00/83/86/63/360_F_83866376_1bnVFhX0uPIfuZ1ZSYlfhCsIlHOVPt6G.jpg" alt="Hockey">
    </div>
    <div class="carousel-item">
      <img src="https://cdn.britannica.com/44/193844-131-1E4A9F84/ball-net-basketball-game-arena.jpg?w=840&h=460&c=crop" alt="Basketball">
    </div>
    <div class="carousel-item">
      <img src="https://thumbs.dreamstime.com/b/golf-club-ball-grass-photo-34501227.jpg" alt="Golf">
    </div>
    <div class="carousel-item">
      <img src="https://www.voyagertennis.com/wp-content/uploads/2023/09/Table-tennis_4-1024x683.jpg" alt="Table Tennis">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
</div>

<!-- Notice Ticker (replaces deprecated <marquee>) -->
<%
Admindao dao = new Admindao();
ArrayList<Notice> noticedetails = dao.noticedetails();
%>
<div class="sa-ticker">
  <div class="sa-ticker-content">
    <% for(Notice n : noticedetails) { %>
      <span><%= n.getContent() %></span>
    <% } %>
    <!-- Duplicate for seamless scroll -->
    <% for(Notice n : noticedetails) { %>
      <span><%= n.getContent() %></span>
    <% } %>
  </div>
</div>

<!-- Our Sports Section -->
<h2 class="sa-section-title">Our Sports</h2>
<p class="sa-section-subtitle">Explore the disciplines we train our athletes in</p>

<div class="sa-sports-grid">
  <a href="/SportsAcademy/jsp/football.jsp" class="sa-sport-card">
    <img alt="Football" src="https://s.cafebazaar.ir/images/icons/com.LionelMessiWallpaper.andiapps-5c3b0c2d-ff3f-449e-9939-b153d3ce89b0_512x512.png?x-img=v1/resize,h_256,w_256,lossless_false/optimize">
  </a>
  <a href="/SportsAcademy/jsp/cricket.jsp" class="sa-sport-card">
    <img alt="Cricket" src="https://w0.peakpx.com/wallpaper/202/8/HD-wallpaper-ms-dhoni-chennai-super-kings-csk-ipl-mi-msd-mumbai-indians-rcb-swahabhaan.jpg">
  </a>
  <a href="/SportsAcademy/jsp/hockey.jsp" class="sa-sport-card">
    <img alt="Hockey" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRop8Cg2ozyIMMJUyrdDfQHYr71cDf4mCnYXQ&s">
  </a>
  <a href="/SportsAcademy/jsp/swimming.jsp" class="sa-sport-card">
    <img alt="Swimming" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-PdATVJeDC3l2DIydbwJWrZlcgrHEbRA2dA&s">
  </a>
  <a href="/SportsAcademy/jsp/badminton.jsp" class="sa-sport-card">
    <img alt="Badminton" src="https://cdn.britannica.com/00/256400-050-257C7E7A/india-saina-nehwal-with-bronze-medal-womens-singles-badminton-match-at-london-summer-olympic-games.jpg">
  </a>
  <a href="/SportsAcademy/jsp/basketball.jsp" class="sa-sport-card">
    <img alt="Basketball" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqrIrLQRBmxQj-DJ8ldzKp1vnYjFFXxp6gQw&s">
  </a>
  <a href="/SportsAcademy/jsp/golf.jsp" class="sa-sport-card">
    <img alt="Golf" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH_7HUirSp1ukZm1_Qa4SAI79As-MDfIj2Cw&s">
  </a>
  <a href="/SportsAcademy/jsp/weight-lifting.jsp" class="sa-sport-card">
    <img alt="Weight Lifting" src="https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2018/04/satish-kumar-1523068550.jpg">
  </a>
  <a href="/SportsAcademy/jsp/table%20tennis.jsp" class="sa-sport-card">
    <img alt="Table Tennis" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbEzo8xHZZNxiY469YmP9CSTfMVEC4U2RheA&s">
  </a>
</div>

<!-- Contact Us Section -->
<section id="Contact-us">
<div class="sa-contact-section">
  <h2 class="sa-section-title">Contact Us</h2>
  <p class="sa-section-subtitle">Feel free to reach out — we'd love to hear from you</p>
  <form method="post" action="/SportsAcademy/Contactus">
    <div class="sa-form-card">
      <div class="row mb-3">
        <div class="col">
          <label class="form-label">First Name</label>
          <input type="text" class="form-control" name="First_name" placeholder="First name" required>
        </div>
        <div class="col">
          <label class="form-label">Last Name</label>
          <input type="text" class="form-control" name="Last_name" placeholder="Last name" required>
        </div>
      </div>
      <div class="mb-3">
        <label class="form-label">Email Address</label>
        <input type="email" class="form-control" name="email_contact" id="contactEmail" placeholder="name@example.com" required>
      </div>
      <div class="mb-3">
        <label class="form-label">Phone Number</label>
        <input type="tel" class="form-control" name="phn_contact" id="contactPhone" placeholder="Your phone number" required>
      </div>
      <div class="mb-3">
        <label class="form-label">Your Query</label>
        <textarea class="form-control" name="text_contact" id="contactQuery" rows="3" placeholder="How can we help you?" required></textarea>
      </div>
      <button type="submit" class="sa-btn-primary w-100">
        <i class="fas fa-paper-plane"></i> Send Message
      </button>
    </div>
  </form>
</div>
</section>

<!-- Reviews Section -->
<h2 class="sa-section-title">What Our Members Say</h2>
<p class="sa-section-subtitle">Real feedback from our sports community</p>
<%
Admindao daoo = new Admindao();
ArrayList<Feedback> userList = daoo.viewFeedbacks();
%>
<div class="sa-reviews-grid">
  <% for (Feedback f : userList) { %>
  <div class="sa-review-card">
    <div class="review-name"><i class="fas fa-user-circle" style="margin-right:6px"></i><%= f.getName() %></div>
    <div class="review-email"><%= f.getEmail() %></div>
    <div class="review-rating"><%= f.getRating() %></div>
    <div class="review-text">"<%= f.getRemarks() %>"</div>
  </div>
  <% } %>
</div>

<!-- Footer -->
<%@include file ="/common_files/Common_footer.html" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>