<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Football — Winners Sports Academy</title>
<%@include file="/common_files/common_css.html" %>
<style>
.sa-sport-hero { position:relative; height:50vh; overflow:hidden; display:flex; align-items:center; justify-content:center; }
.sa-sport-hero img { position:absolute; inset:0; width:100%; height:100%; object-fit:cover; filter:brightness(0.35); }
.sa-sport-hero h1 { position:relative; z-index:1; font-family:var(--font-display); font-size:3rem; font-weight:800; color:var(--accent-gold); text-shadow:0 4px 20px rgba(0,0,0,0.5); }
.sa-video-grid { display:grid; grid-template-columns:repeat(auto-fit,minmax(300px,1fr)); gap:1.5rem; padding:2rem; max-width:1100px; margin:0 auto; }
.sa-video-card { border-radius:var(--radius-md); overflow:hidden; border:1px solid var(--border-subtle); aspect-ratio:16/9; transition:all var(--transition-smooth); }
.sa-video-card:hover { border-color:var(--accent-gold); box-shadow:var(--shadow-glow); transform:translateY(-4px); }
.sa-video-card iframe { width:100%; height:100%; border:none; }
</style>
</head>
<body>
<%@include file="/common_files/common_header.html" %>

<div class="sa-sport-hero">
  <img src="https://img.freepik.com/premium-photo/soccer-stadium-illuminated-with-bright-lights-green-grass_742252-27454.jpg" alt="Football Stadium">
  <h1><i class="fas fa-futbol"></i> Football</h1>
</div>

<div class="main_body">
  <div class="sa-about-section">
    <div class="sa-about-block animate-in">
      <h2><i class="fas fa-futbol"></i> What is Football?</h2>
      <p>Football, also called association football or soccer, is a game involving two teams of 11 players who try to maneuver the ball into the other team's goal without using their hands or arms. It is the world's most popular sport, played in every corner of the globe.</p>
    </div>
  </div>

  <h2 class="sa-section-title">Training Videos</h2>
  <div class="sa-video-grid">
    <div class="sa-video-card">
      <iframe src="https://www.youtube.com/embed/SV_s5X43__I?si=7H4jUlnB9I707u9P" title="Football Training 1" allowfullscreen></iframe>
    </div>
    <div class="sa-video-card">
      <iframe src="https://www.youtube.com/embed/xSsiS304iY8?si=LWwfoypdv8ZXtbUJ" title="Football Training 2" allowfullscreen></iframe>
    </div>
    <div class="sa-video-card">
      <iframe src="https://www.youtube.com/embed/PqCxa4RAQjI?si=6OPWs8XzTOqYSq1K" title="Football Training 3" allowfullscreen></iframe>
    </div>
  </div>
</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>