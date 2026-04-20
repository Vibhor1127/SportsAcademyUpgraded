<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Badminton — Winners Sports Academy</title>
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
  <img src="https://static.wixstatic.com/media/1a1802_6119d3d1db84400fbe37b5a14fa4c614~mv2.jpeg/v1/fill/w_640,h_556,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/1a1802_6119d3d1db84400fbe37b5a14fa4c614~mv2.jpeg" alt="Badminton Court">
  <h1><i class="fas fa-table-tennis"></i> Badminton</h1>
</div>

<div class="main_body">
  <div class="sa-about-section">
    <div class="sa-about-block animate-in">
      <h2><i class="fas fa-table-tennis"></i> What is Badminton?</h2>
      <p>Badminton is a game played by two or four players on a rectangular court with a high net across the middle. The players try to score points by hitting a small object called a shuttlecock across the net using a racket.</p>
    </div>
  </div>

  <h2 class="sa-section-title">Training Videos</h2>
  <div class="sa-video-grid">
    <div class="sa-video-card">
      <iframe src="https://www.youtube.com/embed/uIj03RsGrJA?si=vufEynidfl9J6xmg" title="Badminton Training 1" allowfullscreen></iframe>
    </div>
    <div class="sa-video-card">
      <iframe src="https://www.youtube.com/embed/v0xxeAus7RU?si=7vcCwwArtjE_jvKj" title="Badminton Training 2" allowfullscreen></iframe>
    </div>
    <div class="sa-video-card">
      <iframe src="https://www.youtube.com/embed/uJgY7Yn05Z4?si=cd_ypW2Ss2SB65w6" title="Badminton Training 3" allowfullscreen></iframe>
    </div>
  </div>
</div>

<%@include file ="/common_files/Common_footer.html" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>